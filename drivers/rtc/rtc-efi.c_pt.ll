; ModuleID = '/llk/IR/drivers/rtc/rtc-efi.c_pt.bc'
source_filename = "../drivers/rtc/rtc-efi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_time_t = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }
%struct.efi_time_cap_t = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__UNIQUE_ID_author210 = internal constant [38 x i8] c"author=dann frazier <dannf@dannf.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [27 x i8] c"description=EFI RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [23 x i8] c"alias=platform:rtc-efi\00", section ".modinfo", align 1
@efi_rtc_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"rtc-efi\00", align 1
@efi = external dso_local local_unnamed_addr global %struct.efi, align 4
@efi_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @efi_read_time, ptr @efi_set_time, ptr @efi_read_alarm, ptr @efi_set_alarm, ptr @efi_procfs, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"can't read time\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"write status is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Time\09\09: %u:%u:%u.%09u\0ADate\09\09: %u-%u-%u\0ADaylight\09: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Timezone\09: unspecified\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Timezone\09: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"Alarm Time\09: %u:%u:%u.%09u\0AAlarm Date\09: %u-%u-%u\0AAlarm Daylight\09: %u\0AEnabled\09\09: %s\0APending\09\09: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Resolution\09: %u\0AAccuracy\09: %u\0ASetstoZero\09: %u\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_license211], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @efi_rtc_driver, ptr noundef nonnull @efi_rtc_probe, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @efi_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efi_rtc_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.efi_time_t, align 4
  %3 = alloca %struct.efi_time_cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 11), align 4
  %5 = call i32 %4(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = call ptr @devm_rtc_device_register(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @efi_rtc_ops, ptr noundef nonnull @__this_module) #6
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 19
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %15, align 8
  br label %16

16:                                               ; preds = %13, %11, %1
  %17 = phi i32 [ %12, %11 ], [ 0, %13 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = alloca %struct.efi_time_t, align 4
  %4 = alloca %struct.efi_time_cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 11), align 4
  %6 = call i32 %5(ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  br label %71

9:                                                ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %1, i8 0, i32 36, i1 false) #6
  %10 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = icmp ugt i8 %11, 59
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = zext i8 %11 to i32
  store i32 %14, ptr %1, align 4
  %15 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp ugt i8 %16, 59
  br i1 %17, label %71, label %18

18:                                               ; preds = %13
  %19 = zext i8 %16 to i32
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 3
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %22, 23
  br i1 %23, label %71, label %24

24:                                               ; preds = %18
  %25 = zext i8 %22 to i32
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -32
  %30 = icmp ult i8 %29, -31
  br i1 %30, label %71, label %31

31:                                               ; preds = %24
  %32 = zext i8 %28 to i32
  %33 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 1
  %35 = load i8, ptr %34, align 2
  %36 = add i8 %35, -13
  %37 = icmp ult i8 %36, -12
  br i1 %37, label %71, label %38

38:                                               ; preds = %31
  %39 = zext i8 %35 to i32
  %40 = add nsw i32 %39, -1
  %41 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %40, ptr %41, align 4
  %42 = load i16, ptr %3, align 4
  %43 = add i16 %42, -10000
  %44 = icmp ult i16 %43, -8100
  br i1 %44, label %71, label %45

45:                                               ; preds = %38
  %46 = zext i16 %42 to i32
  %47 = add nsw i32 %46, -1900
  %48 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = call i32 @rtc_year_days(i32 noundef %32, i32 noundef %40, i32 noundef %46) #6
  %50 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  %51 = load i16, ptr %3, align 4
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %52, -1
  %54 = sdiv i32 %53, 4
  %55 = sdiv i32 %53, -100
  %56 = sdiv i32 %53, 400
  %57 = add i32 %49, %52
  %58 = add i32 %57, %54
  %59 = add i32 %58, %55
  %60 = add i32 %59, %56
  %61 = srem i32 %60, 7
  %62 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 9
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 3
  %66 = icmp ne i8 %65, 1
  %67 = sext i1 %66 to i32
  %68 = icmp eq i8 %65, 3
  %69 = select i1 %68, i32 1, i32 %67
  %70 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 8
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %45, %38, %31, %24, %18, %13, %9, %8
  %72 = phi i32 [ -22, %8 ], [ 0, %45 ], [ -5, %9 ], [ -5, %13 ], [ -5, %18 ], [ -5, %24 ], [ -5, %31 ], [ -5, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_set_time(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.efi_time_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 1900
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = add i8 %11, 1
  %13 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 1
  store i8 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 3
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 4
  store i8 %24, ptr %25, align 1
  %26 = load i32, ptr %1, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 5
  store i8 %27, ptr %28, align 2
  %29 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i8 0, i8 3
  %33 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 9
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 8
  store i16 2047, ptr %34, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 12), align 4
  %36 = call i32 %35(ptr noundef nonnull %3) #6
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_read_alarm(ptr nocapture noundef readnone %0, ptr noundef %1) #4 {
  %3 = alloca %struct.efi_time_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 13), align 4
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  %6 = call i32 %4(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %72

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %9, i8 0, i32 36, i1 false) #6
  %10 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = icmp ugt i8 %11, 59
  br i1 %12, label %72, label %13

13:                                               ; preds = %8
  %14 = zext i8 %11 to i32
  store i32 %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp ugt i8 %16, 59
  br i1 %17, label %72, label %18

18:                                               ; preds = %13
  %19 = zext i8 %16 to i32
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 3
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %22, 23
  br i1 %23, label %72, label %24

24:                                               ; preds = %18
  %25 = zext i8 %22 to i32
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -32
  %30 = icmp ult i8 %29, -31
  br i1 %30, label %72, label %31

31:                                               ; preds = %24
  %32 = zext i8 %28 to i32
  %33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 1
  %35 = load i8, ptr %34, align 2
  %36 = add i8 %35, -13
  %37 = icmp ult i8 %36, -12
  br i1 %37, label %72, label %38

38:                                               ; preds = %31
  %39 = zext i8 %35 to i32
  %40 = add nsw i32 %39, -1
  %41 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %40, ptr %41, align 4
  %42 = load i16, ptr %3, align 4
  %43 = add i16 %42, -10000
  %44 = icmp ult i16 %43, -8100
  br i1 %44, label %72, label %45

45:                                               ; preds = %38
  %46 = zext i16 %42 to i32
  %47 = add nsw i32 %46, -1900
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %47, ptr %48, align 4
  %49 = call i32 @rtc_year_days(i32 noundef %32, i32 noundef %40, i32 noundef %46) #6
  %50 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 %49, ptr %50, align 4
  %51 = load i16, ptr %3, align 4
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %52, -1
  %54 = sdiv i32 %53, 4
  %55 = sdiv i32 %53, -100
  %56 = sdiv i32 %53, 400
  %57 = add i32 %49, %52
  %58 = add i32 %57, %54
  %59 = add i32 %58, %55
  %60 = add i32 %59, %56
  %61 = srem i32 %60, 7
  %62 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 9
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 3
  %66 = icmp ne i8 %65, 1
  %67 = sext i1 %66 to i32
  %68 = icmp eq i8 %65, 3
  %69 = select i1 %68, i32 1, i32 %67
  %70 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  store i32 %69, ptr %70, align 4
  %71 = call i32 @rtc_valid_tm(ptr noundef %9) #6
  br label %72

72:                                               ; preds = %45, %38, %31, %24, %18, %13, %8, %2
  %73 = phi i32 [ %71, %45 ], [ -22, %2 ], [ -5, %8 ], [ -5, %13 ], [ -5, %18 ], [ -5, %24 ], [ -5, %31 ], [ -5, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.efi_time_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i16
  %9 = add i16 %8, 1900
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = add i8 %12, 1
  %14 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 1
  store i8 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 2
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 3
  store i8 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 4
  store i8 %25, ptr %26, align 1
  %27 = load i32, ptr %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 5
  store i8 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i8 0, i8 3
  %34 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 9
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 8
  store i16 2047, ptr %35, align 4
  %36 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 14), align 4
  %37 = load i8, ptr %1, align 4
  %38 = call i32 %36(i8 noundef zeroext %37, ptr noundef nonnull %3) #6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %38) #7
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efi_procfs(ptr nocapture noundef readnone %0, ptr noundef %1) #4 {
  %3 = alloca %struct.efi_time_t, align 4
  %4 = alloca %struct.efi_time_t, align 4
  %5 = alloca %struct.efi_time_cap_t, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  %8 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 11), align 4
  %9 = call i32 %8(ptr noundef nonnull %3, ptr noundef nonnull %5) #6
  %10 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 13), align 4
  %11 = call i32 %10(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #6
  %12 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 5
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = load i16, ptr %3, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 1
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 9
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33) #6
  %34 = getelementptr inbounds %struct.efi_time_t, ptr %3, i32 0, i32 8
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, 2047
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  br label %40

38:                                               ; preds = %2
  %39 = sext i16 %35 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %39) #6
  br label %40

40:                                               ; preds = %38, %37
  %41 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 3
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 4
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 5
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = load i16, ptr %4, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 1
  %55 = load i8, ptr %54, align 2
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 9
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = load i8, ptr %6, align 1
  %64 = icmp eq i8 %63, 1
  %65 = select i1 %64, ptr @.str.7, ptr @.str.8
  %66 = load i8, ptr %7, align 1
  %67 = icmp eq i8 %66, 1
  %68 = select i1 %67, ptr @.str.7, ptr @.str.8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %56, i32 noundef %59, i32 noundef %62, ptr noundef nonnull %65, ptr noundef nonnull %68) #6
  %69 = load i16, ptr %34, align 4
  %70 = icmp eq i16 %69, 2047
  br i1 %70, label %71, label %72

71:                                               ; preds = %40
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  br label %76

72:                                               ; preds = %40
  %73 = getelementptr inbounds %struct.efi_time_t, ptr %4, i32 0, i32 8
  %74 = load i16, ptr %73, align 4
  %75 = sext i16 %74 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %75) #6
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32, ptr %5, align 4
  %78 = getelementptr inbounds %struct.efi_time_cap_t, ptr %5, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.efi_time_cap_t, ptr %5, i32 0, i32 2
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %77, i32 noundef %79, i32 noundef %82) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
