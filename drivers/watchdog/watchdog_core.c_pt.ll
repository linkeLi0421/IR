; ModuleID = '/llk/IR/drivers/watchdog/watchdog_core.c_pt.bc'
source_filename = "../drivers/watchdog/watchdog_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_init_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_init_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_init_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_set_restart_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_set_restart_priority\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_set_restart_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_watchdog_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
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
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_stop_on_reboot = internal constant [24 x i8] c"watchdog.stop_on_reboot\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@stop_on_reboot = internal global i32 -1, align 4
@__param_stop_on_reboot = internal constant %struct.kernel_param { ptr @__param_str_stop_on_reboot, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @stop_on_reboot } }, section "__param", align 4
@__UNIQUE_ID_stop_on_reboottype247 = internal constant [37 x i8] c"watchdog.parmtype=stop_on_reboot:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stop_on_reboot248 = internal constant [80 x i8] c"watchdog.parm=stop_on_reboot:Stop watchdogs on reboot (0=keep watching, 1=stop)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [59 x i8] c"\013watchdog: %s: driver supplied timeout (%u) out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"timeout-sec\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013watchdog: %s: DT supplied timeout (%u) out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\014watchdog: %s: falling back to default timeout (%u)\0A\00", align 1
@__kstrtab_watchdog_init_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_init_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_init_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_init_timeout to i32), ptr @__kstrtab_watchdog_init_timeout, ptr @__kstrtabns_watchdog_init_timeout }, section "___ksymtab_gpl+watchdog_init_timeout", align 4
@__kstrtab_watchdog_set_restart_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_set_restart_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_set_restart_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_set_restart_priority to i32), ptr @__kstrtab_watchdog_set_restart_priority, ptr @__kstrtabns_watchdog_set_restart_priority }, section "___ksymtab_gpl+watchdog_set_restart_priority", align 4
@wtd_deferred_reg_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wtd_deferred_reg_mutex, i64 12), ptr getelementptr (i8, ptr @wtd_deferred_reg_mutex, i64 12) } }, align 4
@wtd_deferred_reg_done = internal unnamed_addr global i1 false, align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"\013watchdog: %s: failed to register watchdog device (err = %d)\0A\00", align 1
@__kstrtab_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_register_device to i32), ptr @__kstrtab_watchdog_register_device, ptr @__kstrtabns_watchdog_register_device }, section "___ksymtab_gpl+watchdog_register_device", align 4
@__kstrtab_watchdog_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_unregister_device to i32), ptr @__kstrtab_watchdog_unregister_device, ptr @__kstrtabns_watchdog_unregister_device }, section "___ksymtab_gpl+watchdog_unregister_device", align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"devm_watchdog_unregister_device\00", align 1
@__kstrtab_devm_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_watchdog_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_watchdog_register_device to i32), ptr @__kstrtab_devm_watchdog_register_device, ptr @__kstrtabns_devm_watchdog_register_device }, section "___ksymtab_gpl+devm_watchdog_register_device", align 4
@watchdog_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__initcall__kmod_watchdog__249_475_watchdog_init4s = internal global ptr @watchdog_init, section ".initcall4s.init", align 4
@__exitcall_watchdog_exit = internal global ptr @watchdog_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [52 x i8] c"watchdog.author=Alan Cox <alan@lxorguk.ukuu.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [49 x i8] c"watchdog.author=Wim Van Sebroeck <wim@iguana.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [48 x i8] c"watchdog.description=WatchDog Timer Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [40 x i8] c"watchdog.file=drivers/watchdog/watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [21 x i8] c"watchdog.license=GPL\00", section ".modinfo", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\016watchdog: Invalid min and max timeout values, resetting to 0!\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\014watchdog: watchdog%d: stop_on_reboot not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"\013watchdog: watchdog%d: Cannot register reboot notifier (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\014watchdog: watchdog%d: Cannot register restart handler (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"\014watchdog: watchdog%d: Cannot register pm handler (%d)\0A\00", align 1
@wtd_deferred_reg_list = internal global %struct.list_head { ptr @wtd_deferred_reg_list, ptr @wtd_deferred_reg_list }, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__UNIQUE_ID_stop_on_reboot248, ptr @__UNIQUE_ID_stop_on_reboottype247, ptr @__exitcall_watchdog_exit, ptr @__initcall__kmod_watchdog__249_475_watchdog_init4s, ptr @__ksymtab_devm_watchdog_register_device, ptr @__ksymtab_watchdog_init_timeout, ptr @__ksymtab_watchdog_register_device, ptr @__ksymtab_watchdog_set_restart_priority, ptr @__ksymtab_watchdog_unregister_device, ptr @__param_stop_on_reboot, ptr @watchdog_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watchdog_init_timeout(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr %6, align 4
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.watchdog_info, ptr %16, i32 0, i32 2
  br label %18

18:                                               ; preds = %14, %12, %8
  %19 = phi ptr [ %17, %14 ], [ %13, %12 ], [ %10, %8 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  store i32 0, ptr %24, align 4
  store i32 0, ptr %26, align 4
  br label %31

31:                                               ; preds = %29, %23, %18
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %1, 4294967
  br i1 %34, label %50, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %1
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %20, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = icmp ult i32 %44, %1
  %47 = and i1 %45, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %42, %39
  %49 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %49, align 4
  br label %91

50:                                               ; preds = %42, %35, %33
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %19, i32 noundef %1) #7
  br label %52

52:                                               ; preds = %50, %31
  %53 = phi i32 [ -22, %50 ], [ 0, %31 ]
  %54 = icmp eq ptr %2, null
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %83, label %59

59:                                               ; preds = %55
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %57, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load i32, ptr %4, align 4
  %64 = add i32 %63, -4294968
  %65 = icmp ult i32 %64, -4294967
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, %63
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %20, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = icmp ult i32 %75, %63
  %78 = and i1 %76, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %73, %70
  %80 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %63, ptr %80, align 4
  br label %91

81:                                               ; preds = %73, %66, %62
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %19, i32 noundef %63) #7
  br label %84

83:                                               ; preds = %59, %55, %52
  br i1 %32, label %91, label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ -22, %81 ], [ %53, %83 ]
  %86 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %19, i32 noundef %87) #7
  br label %91

91:                                               ; preds = %89, %84, %83, %79, %48
  %92 = phi i32 [ 0, %79 ], [ 0, %48 ], [ %85, %89 ], [ %85, %84 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %92
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @watchdog_set_restart_priority(ptr nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 14, i32 2
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watchdog_register_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  %2 = load i1, ptr @wtd_deferred_reg_done, align 1
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @wtd_deferred_reg_list, i32 0, i32 1), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.list_head, ptr @wtd_deferred_reg_list, i32 0, i32 1), align 4
  store ptr @wtd_deferred_reg_list, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 19, i32 1
  store ptr %5, ptr %6, align 4
  store volatile ptr %4, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  br label %27

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @__watchdog_register_device(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 4
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.watchdog_info, ptr %22, i32 0, i32 2
  br label %24

24:                                               ; preds = %20, %18, %14
  %25 = phi ptr [ %23, %20 ], [ %19, %18 ], [ %16, %14 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %25, i32 noundef %8) #7
  br label %27

27:                                               ; preds = %24, %7, %3
  %28 = phi i32 [ 0, %3 ], [ %8, %24 ], [ 0, %7 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__watchdog_register_device(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %112, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %112, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %112, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.watchdog_ops, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %112, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.watchdog_ops, ptr %9, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %18, label %22, label %23

22:                                               ; preds = %15
  br i1 %21, label %112, label %32

23:                                               ; preds = %15
  br i1 %21, label %24, label %32

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  store i32 0, ptr %25, align 4
  store i32 0, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %24, %23, %22
  %33 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @of_alias_get_id(ptr noundef %38, ptr noundef nonnull @.str.7) #6
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = tail call i32 @ida_alloc_range(ptr noundef nonnull @watchdog_ida, i32 noundef %39, i32 noundef %39, i32 noundef 3264) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %36, %32
  %45 = tail call i32 @ida_alloc_range(ptr noundef nonnull @watchdog_ida, i32 noundef 0, i32 noundef 31, i32 noundef 3264) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %112, label %47

47:                                               ; preds = %44, %41
  %48 = phi i32 [ %45, %44 ], [ %42, %41 ]
  store i32 %48, ptr %0, align 4
  %49 = tail call i32 @watchdog_dev_register(ptr noundef nonnull %0) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %48) #6
  %52 = icmp eq i32 %48, 0
  %53 = icmp eq i32 %49, -16
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %112

55:                                               ; preds = %51
  %56 = tail call i32 @ida_alloc_range(ptr noundef nonnull @watchdog_ida, i32 noundef 1, i32 noundef 31, i32 noundef 3264) #6
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %112, label %58

58:                                               ; preds = %55
  store i32 %56, ptr %0, align 4
  %59 = tail call i32 @watchdog_dev_register(ptr noundef nonnull %0) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %56) #6
  br label %112

62:                                               ; preds = %58, %47
  %63 = phi i32 [ %56, %58 ], [ %48, %47 ]
  %64 = load i32, ptr @stop_on_reboot, align 4
  switch i32 %64, label %65 [
    i32 -1, label %69
    i32 0, label %67
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %66) #6
  br label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %68) #6
  br label %69

69:                                               ; preds = %67, %65, %62
  %70 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr inbounds %struct.watchdog_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, ptr %0, align 4
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %80) #7
  br label %89

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 13
  store ptr @watchdog_reboot_notifier, ptr %83, align 4
  %84 = tail call i32 @register_reboot_notifier(ptr noundef %83) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %0, align 4
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %87, i32 noundef %84) #7
  tail call void @watchdog_dev_unregister(ptr noundef nonnull %0) #6
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %63) #6
  br label %112

89:                                               ; preds = %82, %79, %69
  %90 = load ptr, ptr %8, align 4
  %91 = getelementptr inbounds %struct.watchdog_ops, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 14
  store ptr @watchdog_restart_notifier, ptr %95, align 4
  %96 = tail call i32 @register_restart_handler(ptr noundef %95) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %0, align 4
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %99, i32 noundef %96) #7
  br label %101

101:                                              ; preds = %98, %94, %89
  %102 = load volatile i32, ptr %70, align 4
  %103 = and i32 %102, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 15
  store ptr @watchdog_pm_notifier, ptr %106, align 4
  %107 = tail call i32 @register_pm_notifier(ptr noundef %106) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %0, align 4
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %110, i32 noundef %107) #7
  br label %112

112:                                              ; preds = %109, %105, %101, %86, %61, %55, %51, %44, %22, %11, %7, %3, %1
  %113 = phi i32 [ %59, %61 ], [ %84, %86 ], [ -22, %7 ], [ -22, %3 ], [ -22, %1 ], [ -22, %22 ], [ -22, %11 ], [ %45, %44 ], [ %49, %51 ], [ %56, %55 ], [ 0, %105 ], [ 0, %109 ], [ 0, %101 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @watchdog_unregister_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  %2 = load i1, ptr @wtd_deferred_reg_done, align 1
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.watchdog_ops, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 14
  %13 = tail call i32 @unregister_restart_handler(ptr noundef %12) #6
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 13
  %21 = tail call i32 @unregister_reboot_notifier(ptr noundef %20) #6
  br label %22

22:                                               ; preds = %19, %14
  tail call void @watchdog_dev_unregister(ptr noundef nonnull %0) #6
  %23 = load i32, ptr %0, align 4
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %23) #6
  br label %37

24:                                               ; preds = %1
  %25 = load ptr, ptr @wtd_deferred_reg_list, align 4
  br label %26

26:                                               ; preds = %29, %24
  %27 = phi ptr [ %25, %24 ], [ %30, %29 ]
  %28 = icmp eq ptr %27, @wtd_deferred_reg_list
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr i8, ptr %27, i32 -100
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %26

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %30, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %26, %22, %3
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_watchdog_register_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_watchdog_unregister_device, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.5) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @watchdog_register_device(ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #6
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #6
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ -12, %2 ], [ %6, %9 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_watchdog_unregister_device(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @watchdog_unregister_device(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @watchdog_exit() #5 section ".exit.text" {
  tail call void @watchdog_dev_exit() #7
  tail call void @ida_destroy(ptr noundef nonnull @watchdog_ida) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @watchdog_dev_exit() local_unnamed_addr #2 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @watchdog_init() #5 section ".init.text" {
  %1 = tail call i32 @watchdog_dev_init() #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @watchdog_deferred_registration() #8
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 0, %3 ], [ %1, %0 ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_dev_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_reboot_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = add i32 %1, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 44
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12, %7
  %17 = getelementptr i8, ptr %0, i32 -36
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.watchdog_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %4) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %12, %3
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ 0, %23 ], [ 32770, %16 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_dev_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_restart_notifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.watchdog_ops, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4, i32 noundef %1, ptr noundef %2) #6
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 32770
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_pm_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  switch i32 %1, label %12 [
    i32 1, label %5
    i32 5, label %5
    i32 3, label %5
    i32 2, label %7
    i32 6, label %7
    i32 4, label %7
  ]

5:                                                ; preds = %3, %3, %3
  %6 = tail call i32 @watchdog_dev_suspend(ptr noundef %4) #6
  br label %9

7:                                                ; preds = %3, %3, %3
  %8 = tail call i32 @watchdog_dev_resume(ptr noundef %4) #6
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 0, %12 ], [ 32770, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_dev_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_dev_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @watchdog_dev_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @watchdog_deferred_registration() unnamed_addr #5 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  store i1 true, ptr @wtd_deferred_reg_done, align 1
  %1 = load volatile ptr, ptr @wtd_deferred_reg_list, align 4
  %2 = icmp eq ptr %1, @wtd_deferred_reg_list
  br i1 %2, label %13, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %11, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -100
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  %10 = tail call fastcc i32 @__watchdog_register_device(ptr noundef %5)
  %11 = load volatile ptr, ptr @wtd_deferred_reg_list, align 4
  %12 = icmp eq ptr %11, @wtd_deferred_reg_list
  br i1 %12, label %13, label %3

13:                                               ; preds = %3, %0
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
