; ModuleID = '/llk/IR/drivers/rtc/sysfs.c_pt.bc'
source_filename = "../drivers/rtc/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_add_groups\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_add_group:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_add_group\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_add_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtc_attr_groups = internal global [2 x ptr] [ptr @rtc_attr_group, ptr null], align 4
@__kstrtab_rtc_add_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_add_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_add_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_add_groups to i32), ptr @__kstrtab_rtc_add_groups, ptr @__kstrtabns_rtc_add_groups }, section "___ksymtab+rtc_add_groups", align 4
@__kstrtab_rtc_add_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_add_group = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_add_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_add_group to i32), ptr @__kstrtab_rtc_add_group, ptr @__kstrtabns_rtc_add_group }, section "___ksymtab+rtc_add_group", align 4
@rtc_attr_group = internal global %struct.attribute_group { ptr null, ptr @rtc_attr_is_visible, ptr null, ptr @rtc_attrs, ptr null }, align 4
@rtc_attrs = internal global [10 x ptr] [ptr @dev_attr_name, ptr @dev_attr_date, ptr @dev_attr_time, ptr @dev_attr_since_epoch, ptr @dev_attr_max_user_freq, ptr @dev_attr_hctosys, ptr @dev_attr_wakealarm, ptr @dev_attr_offset, ptr @dev_attr_range, ptr null], align 4
@dev_attr_wakealarm = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 420 }, ptr @wakealarm_show, ptr @wakealarm_store }, align 4
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @offset_show, ptr @offset_store }, align 4
@dev_attr_range = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @range_show, ptr null }, align 4
@.str = private unnamed_addr constant [10 x i8] c"wakealarm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"[%lld,%llu]\0A\00", align 1
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_date = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @date_show, ptr null }, align 4
@dev_attr_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @time_show, ptr null }, align 4
@dev_attr_since_epoch = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @since_epoch_show, ptr null }, align 4
@dev_attr_max_user_freq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @max_user_freq_show, ptr @max_user_freq_store }, align 4
@dev_attr_hctosys = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @hctosys_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%ptRd\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%ptRt\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"since_epoch\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"max_user_freq\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"hctosys\00", align 1
@rtc_hctosys_ret = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"rtc0\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_rtc_add_group, ptr @__ksymtab_rtc_add_groups], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @rtc_get_dev_attribute_groups() local_unnamed_addr #0 {
  ret ptr @rtc_attr_groups
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_add_groups(ptr noundef %0, ptr noundef readonly %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %15, %11 ], [ %6, %8 ]
  %13 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %14 = add i32 %13, 1
  %15 = getelementptr ptr, ptr %12, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %8, %4
  %19 = phi i32 [ 0, %4 ], [ 0, %8 ], [ %14, %11 ]
  %20 = load ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %26, %22 ], [ %1, %18 ]
  %24 = phi i32 [ %25, %22 ], [ 0, %18 ]
  %25 = add i32 %24, 1
  %26 = getelementptr ptr, ptr %23, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %18
  %30 = phi i32 [ 0, %18 ], [ %25, %22 ]
  %31 = add i32 %30, %19
  %32 = add i32 %31, 1
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #12
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %49, label %35, !prof !8

35:                                               ; preds = %29
  %36 = extractvalue { i32, i1 } %33, 0
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %36, i32 noundef 3520) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %5, align 8
  %41 = shl i32 %19, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %37, ptr align 4 %40, i32 %41, i1 false)
  %42 = getelementptr ptr, ptr %37, i32 %19
  %43 = shl i32 %30, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr nonnull align 4 %1, i32 %43, i1 false)
  %44 = getelementptr ptr, ptr %37, i32 %31
  store ptr null, ptr %44, align 4
  store ptr %37, ptr %5, align 8
  %45 = icmp ne ptr %40, null
  %46 = icmp ne ptr %40, @rtc_attr_groups
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  tail call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %40) #12
  br label %49

49:                                               ; preds = %48, %39, %35, %29, %2
  %50 = phi i32 [ -22, %2 ], [ -12, %35 ], [ 0, %48 ], [ 0, %39 ], [ -12, %29 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_add_group(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %15, %11 ], [ %6, %8 ]
  %13 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %14 = add i32 %13, 1
  %15 = getelementptr ptr, ptr %12, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %8, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %8 ], [ %14, %11 ]
  %20 = icmp ne ptr %1, null
  %21 = zext i1 %20 to i32
  %22 = add i32 %19, %21
  %23 = add i32 %22, 1
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #12
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %40, label %26, !prof !8

26:                                               ; preds = %18
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %27, i32 noundef 3520) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8
  %32 = shl i32 %19, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %28, ptr align 4 %31, i32 %32, i1 false) #12
  %33 = getelementptr ptr, ptr %28, i32 %19
  %34 = select i1 %20, i32 4, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr nonnull align 8 %3, i32 %34, i1 false) #12
  %35 = getelementptr ptr, ptr %28, i32 %22
  store ptr null, ptr %35, align 4
  store ptr %28, ptr %5, align 8
  %36 = icmp ne ptr %31, null
  %37 = icmp ne ptr %31, @rtc_attr_groups
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  tail call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %31) #12
  br label %40

40:                                               ; preds = %39, %30, %26, %18
  %41 = phi i32 [ -12, %26 ], [ 0, %39 ], [ 0, %30 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rtc_attr_is_visible(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq ptr %1, @dev_attr_wakealarm
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i16 0, i16 %5
  br label %38

20:                                               ; preds = %3
  %21 = icmp eq ptr %1, @dev_attr_offset
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rtc_class_ops, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i16 0, i16 %5
  br label %38

29:                                               ; preds = %20
  %30 = icmp eq ptr %1, @dev_attr_range
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %33, %35
  %37 = select i1 %36, i16 0, i16 %5
  br label %38

38:                                               ; preds = %31, %29, %22, %14, %7
  %39 = phi i16 [ %5, %29 ], [ %28, %22 ], [ %37, %31 ], [ 0, %7 ], [ %19, %14 ]
  ret i16 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakealarm_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.rtc_wkalrm, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !9
  %5 = call i32 @rtc_read_alarm(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr %4, align 4
  %8 = icmp ne i8 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtc_wkalrm, ptr %4, i32 0, i32 2
  %12 = call i64 @rtc_tm_to_time64(ptr noundef %11) #12
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i64 noundef %12)
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i32 [ %13, %10 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakealarm_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtc_wkalrm, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %6, i32 0, i32 2
  %8 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef %7) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %4
  %11 = call i64 @rtc_tm_to_time64(ptr noundef %7) #12
  %12 = load i8, ptr %2, align 1
  %13 = icmp eq i8 %12, 43
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %2, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 61
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %2, i32 2
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %19, %18 ], [ %2, %10 ]
  %22 = call i32 @kstrtoll(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %5) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i64, ptr %5, align 8
  br label %32

26:                                               ; preds = %14
  %27 = call i32 @kstrtoll(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %5) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %26
  %30 = load i64, ptr %5, align 8
  %31 = add i64 %30, %11
  store i64 %31, ptr %5, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i64 [ %31, %29 ], [ %25, %24 ]
  %34 = phi i1 [ false, %29 ], [ %13, %24 ]
  %35 = icmp sgt i64 %33, %11
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = call i32 @rtc_read_alarm(ptr noundef %0, ptr noundef nonnull %6) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  %41 = load i8, ptr %6, align 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  br i1 %34, label %44, label %60

44:                                               ; preds = %43
  %45 = call i64 @rtc_tm_to_time64(ptr noundef %7) #12
  %46 = load i64, ptr %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, ptr %5, align 8
  br label %51

48:                                               ; preds = %40
  br i1 %34, label %60, label %49

49:                                               ; preds = %48
  %50 = load i64, ptr %5, align 8
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i64 [ %50, %49 ], [ %47, %44 ]
  store i8 1, ptr %6, align 4
  br label %55

53:                                               ; preds = %32
  store i8 0, ptr %6, align 4
  %54 = add i64 %11, 300
  store i64 %54, ptr %5, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %54, %53 ], [ %52, %51 ]
  call void @rtc_time64_to_tm(i64 noundef %56, ptr noundef %7) #12
  %57 = call i32 @rtc_set_alarm(ptr noundef %0, ptr noundef nonnull %6) #12
  %58 = icmp slt i32 %57, 0
  %59 = select i1 %58, i32 %57, i32 %3
  br label %60

60:                                               ; preds = %55, %48, %43, %37, %26, %20, %4
  %61 = phi i32 [ %59, %55 ], [ %8, %4 ], [ %22, %20 ], [ %38, %37 ], [ -16, %43 ], [ -22, %48 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @offset_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @rtc_read_offset(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %8)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @offset_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @rtc_set_offset(ptr noundef %0, i32 noundef %9) #12
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ %6, %4 ]
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 %12, i32 %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_offset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_offset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @range_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i64 noundef %5, i64 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @dev_driver_string(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %9, %3 ]
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %6, ptr noundef %14)
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @date_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !9
  %5 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @time_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !9
  %5 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @since_epoch_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !9
  %5 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %4) #12
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i64 noundef %8)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_user_freq_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_user_freq_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = add i32 %9, -4096
  %11 = icmp ult i32 %10, -4095
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 12
  store i32 %9, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ %3, %12 ], [ %6, %4 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hctosys_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = load i32, ptr @rtc_hctosys_ret, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(5) @.str.16)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i32 3, i1 false)
  br label %18

17:                                               ; preds = %12, %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i32 3, i1 false)
  br label %18

18:                                               ; preds = %17, %16
  ret i32 2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
