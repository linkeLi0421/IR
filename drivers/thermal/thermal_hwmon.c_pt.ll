; ModuleID = '/llk/IR/drivers/thermal/thermal_hwmon.c_pt.bc'
source_filename = "../drivers/thermal/thermal_hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_add_hwmon_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_remove_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_remove_hwmon_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_remove_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_thermal_add_hwmon_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_devm_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_hwmon_device = type { [20 x i8], ptr, i32, %struct.list_head, %struct.list_head }
%struct.thermal_hwmon_temp = type { %struct.list_head, ptr, %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr }
%struct.thermal_hwmon_attr = type { %struct.device_attribute, [16 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"temp%d_crit\00", align 1
@thermal_hwmon_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @thermal_hwmon_list_lock, i64 12), ptr getelementptr (i8, ptr @thermal_hwmon_list_lock, i64 12) } }, align 4
@thermal_hwmon_list = internal global %struct.list_head { ptr @thermal_hwmon_list, ptr @thermal_hwmon_list }, align 4
@__kstrtab_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_add_hwmon_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_add_hwmon_sysfs to i32), ptr @__kstrtab_thermal_add_hwmon_sysfs, ptr @__kstrtabns_thermal_add_hwmon_sysfs }, section "___ksymtab_gpl+thermal_add_hwmon_sysfs", align 4
@__kstrtab_thermal_remove_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_remove_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_remove_hwmon_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_remove_hwmon_sysfs to i32), ptr @__kstrtab_thermal_remove_hwmon_sysfs, ptr @__kstrtabns_thermal_remove_hwmon_sysfs }, section "___ksymtab_gpl+thermal_remove_hwmon_sysfs", align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"devm_thermal_hwmon_release\00", align 1
@__kstrtab_devm_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_thermal_add_hwmon_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_thermal_add_hwmon_sysfs to i32), ptr @__kstrtab_devm_thermal_add_hwmon_sysfs, ptr @__kstrtabns_devm_thermal_add_hwmon_sysfs }, section "___ksymtab_gpl+devm_thermal_add_hwmon_sysfs", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_devm_thermal_add_hwmon_sysfs, ptr @__ksymtab_thermal_add_hwmon_sysfs, ptr @__ksymtab_thermal_remove_hwmon_sysfs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false) #9, !annotation !8
  tail call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ @thermal_hwmon_list, %1 ], [ %7, %10 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @thermal_hwmon_list
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %7, i32 -36
  %12 = call ptr @strcpy(ptr noundef nonnull %3, ptr noundef %4) #9
  %13 = call ptr @strreplace(ptr noundef nonnull %3, i8 noundef zeroext 45, i8 noundef zeroext 95) #9
  %14 = call i32 @strcmp(ptr noundef %11, ptr noundef nonnull %3) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %5

16:                                               ; preds = %10
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  %17 = icmp eq ptr %11, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %16, %9
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 44) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %95, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %20, i32 0, i32 3
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %20, i32 0, i32 3, i32 1
  store ptr %23, ptr %24, align 8
  %25 = call i32 @strlcpy(ptr noundef nonnull %20, ptr noundef %4, i32 noundef 20) #9
  %26 = call ptr @strreplace(ptr noundef nonnull %20, i8 noundef zeroext 45, i8 noundef zeroext 95) #9
  %27 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %28 = call ptr @hwmon_device_register_with_info(ptr noundef %27, ptr noundef nonnull %20, ptr noundef nonnull %20, ptr noundef null, ptr noundef null) #9
  %29 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %20, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = ptrtoint ptr %28 to i32
  br label %92

33:                                               ; preds = %22, %16
  %34 = phi i1 [ true, %22 ], [ false, %16 ]
  %35 = phi ptr [ %20, %22 ], [ %11, %16 ]
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %37 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 76) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %87, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 1
  store ptr %0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 2
  %45 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 2, i32 1
  %46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %45, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %43)
  store ptr %45, ptr %44, align 4
  %47 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 2, i32 0, i32 0, i32 1
  store i16 292, ptr %47, align 8
  %48 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 2, i32 0, i32 1
  store ptr @temp_input_show, ptr %48, align 4
  %49 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @device_create_file(ptr noundef %50, ptr noundef %44) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %54 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %55, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  br i1 %34, label %74, label %78

60:                                               ; preds = %53
  %61 = call i32 %57(ptr noundef %0, ptr noundef nonnull %2) #9
  %62 = icmp eq i32 %61, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 3
  %65 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 3, i32 1
  %66 = load i32, ptr %41, align 4
  %67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %66)
  store ptr %65, ptr %64, align 4
  %68 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 3, i32 0, i32 0, i32 1
  store i16 292, ptr %68, align 8
  %69 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 3, i32 0, i32 1
  store ptr @temp_crit_show, ptr %69, align 4
  %70 = load ptr, ptr %49, align 4
  %71 = call i32 @device_create_file(ptr noundef %70, ptr noundef %64) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %63, %60
  call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  br i1 %34, label %74, label %78

74:                                               ; preds = %73, %59
  %75 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 4
  %76 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @thermal_hwmon_list, i32 0, i32 1), align 4
  store ptr %75, ptr getelementptr inbounds (%struct.list_head, ptr @thermal_hwmon_list, i32 0, i32 1), align 4
  store ptr @thermal_hwmon_list, ptr %75, align 4
  %77 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 4, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %75, ptr %76, align 4
  br label %78

78:                                               ; preds = %74, %73, %59
  %79 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 3
  %80 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 3, i32 1
  %81 = load ptr, ptr %80, align 4
  store ptr %37, ptr %80, align 4
  store ptr %79, ptr %37, align 8
  %82 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %37, ptr %81, align 4
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  br label %95

83:                                               ; preds = %63
  %84 = load ptr, ptr %49, align 4
  call void @device_remove_file(ptr noundef %84, ptr noundef %44) #9
  br label %85

85:                                               ; preds = %83, %39
  %86 = phi i32 [ %51, %39 ], [ %71, %83 ]
  call void @kfree(ptr noundef nonnull %37) #9
  br label %87

87:                                               ; preds = %85, %33
  %88 = phi i32 [ %86, %85 ], [ -12, %33 ]
  br i1 %34, label %89, label %92

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %35, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  call void @hwmon_device_unregister(ptr noundef %91) #9
  br label %92

92:                                               ; preds = %89, %87, %31
  %93 = phi ptr [ %35, %89 ], [ %35, %87 ], [ %20, %31 ]
  %94 = phi i32 [ %88, %89 ], [ %88, %87 ], [ %32, %31 ]
  call void @kfree(ptr noundef nonnull %93) #9
  br label %95

95:                                               ; preds = %92, %78, %18
  %96 = phi i32 [ %94, %92 ], [ 0, %78 ], [ -12, %18 ]
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr i8, ptr %1, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @thermal_zone_get_temp(ptr noundef %6, ptr noundef nonnull %4) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %1, i32 -36
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %6, ptr noundef nonnull %4) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ %15, %13 ], [ %11, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_remove_hwmon_sysfs(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false) #9, !annotation !8
  tail call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ @thermal_hwmon_list, %1 ], [ %7, %10 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @thermal_hwmon_list
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %61

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %7, i32 -36
  %12 = call ptr @strcpy(ptr noundef nonnull %3, ptr noundef %4) #9
  %13 = call ptr @strreplace(ptr noundef nonnull %3, i8 noundef zeroext 45, i8 noundef zeroext 95) #9
  %14 = call i32 @strcmp(ptr noundef %11, ptr noundef nonnull %3) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %5

16:                                               ; preds = %10
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  %17 = icmp eq ptr %11, null
  br i1 %17, label %61, label %18, !prof !9

18:                                               ; preds = %16
  call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  %19 = getelementptr i8, ptr %7, i32 -8
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %25 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  br label %61

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %22, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %20

29:                                               ; preds = %25
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  %30 = icmp eq ptr %22, null
  br i1 %30, label %61, label %31, !prof !9

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %7, i32 -16
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %22, i32 0, i32 2
  call void @device_remove_file(ptr noundef %33, ptr noundef %34) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %47

41:                                               ; preds = %31
  %42 = call i32 %38(ptr noundef %0, ptr noundef nonnull %2) #9
  %43 = icmp eq i32 %42, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %32, align 4
  %46 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %22, i32 0, i32 3
  call void @device_remove_file(ptr noundef %45, ptr noundef %46) #9
  br label %47

47:                                               ; preds = %44, %41, %40
  call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  %48 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %22, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  call void @kfree(ptr noundef nonnull %22) #9
  %52 = load volatile ptr, ptr %19, align 4
  %53 = icmp eq ptr %52, %19
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  br label %61

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #9
  %60 = load ptr, ptr %32, align 4
  call void @hwmon_device_unregister(ptr noundef %60) #9
  call void @kfree(ptr noundef nonnull %11) #9
  br label %61

61:                                               ; preds = %55, %54, %29, %24, %16, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %0) #0 {
  %2 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_thermal_hwmon_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @devres_free(ptr noundef nonnull %2) #9
  br label %10

8:                                                ; preds = %4
  store ptr %0, ptr %2, align 4
  %9 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  tail call void @devres_add(ptr noundef %9, ptr noundef nonnull %2) #9
  br label %10

10:                                               ; preds = %8, %7, %1
  %11 = phi i32 [ %5, %7 ], [ 0, %8 ], [ -12, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_thermal_hwmon_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
