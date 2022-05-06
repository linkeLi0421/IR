; ModuleID = '/llk/IR/drivers/pinctrl/pinconf.c_pt.bc'
source_filename = "../drivers/pinctrl/pinconf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_setting = type { %struct.list_head, i32, ptr, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_setting_configs }
%struct.pinctrl_setting_configs = type { i32, ptr, i32 }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.52, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.53, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.54, ptr, %struct.address_space, %struct.list_head, %union.anon.57, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.52 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.54 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.57 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [45 x i8] c"pinconf has to be able to set a pins config\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"\013pinconfig core: failed to register map %s (%d): no group/pin given\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\013pinconfig core: failed to register map %s (%d): no configs given\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"could not map pin config for \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"could not map group config for \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"missing confops\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"missing pin_config_set op\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"pin_config_set op failed for pin %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"missing pin_config_group_set op\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"pin_config_group_set op failed for group %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pin \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"group \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"pin %s (%d)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"group %s (%d)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"pinconf-pins\00", align 1
@pinconf_pins_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinconf_pins_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"pinconf-groups\00", align 1
@pinconf_groups_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinconf_groups_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"config \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Pin config settings per pin\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Format: pin (name): configs\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"pin %d (%s): \00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Pin config settings per pin group\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Format: group (name): configs\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%u (%s): \00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_check_ops(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinconf_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pinconf_ops, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #4
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = phi i32 [ -22, %13 ], [ 0, %9 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_validate_map(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %6, %2
  %15 = phi ptr [ @.str.1, %2 ], [ @.str.2, %10 ], [ @.str.2, %6 ]
  %16 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %15, ptr noundef %17, i32 noundef %1) #4
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ 0, %10 ], [ -22, %14 ]
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_config_get_for_pin(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pinconf_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5
  br label %15

15:                                               ; preds = %13, %9, %3
  %16 = phi i32 [ %14, %13 ], [ -524, %9 ], [ -524, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_config_group_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @get_pinctrl_dev_from_devname(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pinctrl_desc, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.pinconf_ops, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @pinctrl_get_group_selector(ptr noundef nonnull %4, ptr noundef %1) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %4, i32 noundef %18, ptr noundef %2) #5
  br label %23

23:                                               ; preds = %20, %17, %13, %6
  %24 = phi i32 [ %22, %20 ], [ -524, %13 ], [ -524, %6 ], [ %18, %17 ]
  tail call void @mutex_unlock(ptr noundef %7) #5
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pinctrl_dev_from_devname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_get_group_selector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_map_to_setting(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %34 [
    i32 3, label %7
    i32 4, label %16
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @pin_get_from_name(ptr noundef %4, ptr noundef %9) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef %15) #4
  br label %34

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @pinctrl_get_group_selector(ptr noundef %4, ptr noundef %18) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef %24) #4
  br label %34

25:                                               ; preds = %16, %7
  %26 = phi i32 [ %10, %7 ], [ %19, %16 ]
  %27 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.pinctrl_map, ptr %0, i32 0, i32 4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %25, %21, %12, %2
  %35 = phi i32 [ %19, %21 ], [ 0, %25 ], [ %10, %12 ], [ -22, %2 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_get_from_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @pinconf_free_setting(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_apply_setting(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #4
  br label %55

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %55 [
    i32 3, label %15
    i32 4, label %35
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.pinconf_ops, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6) #4
  br label %55

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 %17(ptr noundef %3, i32 noundef %24, ptr noundef %26, i32 noundef %28) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %34) #4
  br label %55

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.pinconf_ops, ptr %7, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.8) #4
  br label %55

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.pinctrl_setting, ptr %0, i32 0, i32 4, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 %37(ptr noundef %3, i32 noundef %44, ptr noundef %46, i32 noundef %48) #5
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.9, i32 noundef %54) #4
  br label %55

55:                                               ; preds = %51, %42, %39, %31, %22, %19, %12, %9
  %56 = phi i32 [ %49, %51 ], [ -22, %39 ], [ %29, %31 ], [ -22, %19 ], [ -22, %9 ], [ -22, %12 ], [ 0, %42 ], [ 0, %22 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_set_config(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pinconf_ops, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #5
  br label %16

16:                                               ; preds = %14, %10, %4
  %17 = phi i32 [ %15, %14 ], [ -524, %10 ], [ -524, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinconf_show_map(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @get_pinctrl_dev_from_devname(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %11 [
    i32 3, label %9
    i32 4, label %8
  ]

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %2
  %10 = phi ptr [ @.str.11, %8 ], [ @.str.10, %2 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %10) #5
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pinctrl_map, ptr %1, i32 0, i32 4, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq ptr %5, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.pinctrl_dev, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pinctrl_desc, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi ptr [ %23, %19 ], [ null, %11 ]
  %26 = icmp eq i32 %17, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, null
  %29 = getelementptr inbounds %struct.pinconf_ops, ptr %25, i32 0, i32 7
  br label %30

30:                                               ; preds = %41, %27
  %31 = phi i32 [ 0, %27 ], [ %42, %41 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br i1 %28, label %38, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %29, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr i32, ptr %15, i32 %31
  %37 = load i32, ptr %36, align 4
  tail call void %33(ptr noundef %5, ptr noundef %0, i32 noundef %37) #5
  br label %41

38:                                               ; preds = %32, %30
  %39 = getelementptr i32, ptr %15, i32 %31
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %40) #5
  br label %41

41:                                               ; preds = %38, %35
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  %42 = add nuw i32 %31, 1
  %43 = icmp eq i32 %42, %17
  br i1 %43, label %44, label %30

44:                                               ; preds = %41, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinconf_show_setting(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %26 [
    i32 3, label %7
    i32 4, label %15
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 2
  %11 = tail call ptr @radix_tree_lookup(ptr noundef %10, i32 noundef %9) #5
  %12 = getelementptr inbounds %struct.pin_desc, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %13, i32 noundef %14) #5
  br label %26

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pinctrl_desc, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pinctrl_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr %21(ptr noundef %4, i32 noundef %23) #5
  %25 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %24, i32 noundef %25) #5
  br label %26

26:                                               ; preds = %15, %7, %2
  %27 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pinctrl_setting, ptr %1, i32 0, i32 4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq ptr %4, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pinctrl_desc, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi ptr [ %36, %32 ], [ null, %26 ]
  %39 = icmp eq i32 %30, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %38, null
  %42 = getelementptr inbounds %struct.pinconf_ops, ptr %38, i32 0, i32 7
  br label %43

43:                                               ; preds = %54, %40
  %44 = phi i32 [ 0, %40 ], [ %55, %54 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br i1 %41, label %51, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %42, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr i32, ptr %28, i32 %44
  %50 = load i32, ptr %49, align 4
  tail call void %46(ptr noundef %4, ptr noundef %0, i32 noundef %50) #5
  br label %54

51:                                               ; preds = %45, %43
  %52 = getelementptr i32, ptr %28, i32 %44
  %53 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %53) #5
  br label %54

54:                                               ; preds = %51, %48
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  %55 = add nuw i32 %44, 1
  %56 = icmp eq i32 %55, %30
  br i1 %56, label %57, label %43

57:                                               ; preds = %54, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinconf_init_device_debugfs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pinconf_pins_fops) #5
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pinconf_groups_fops) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_pins_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @pinconf_pins_show, ptr noundef %4) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_pins_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #5
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.20) #5
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 2
  br label %13

13:                                               ; preds = %35, %11
  %14 = phi ptr [ %7, %11 ], [ %37, %35 ]
  %15 = phi i32 [ 0, %11 ], [ %36, %35 ]
  %16 = getelementptr inbounds %struct.pinctrl_desc, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.pinctrl_pin_desc, ptr %17, i32 %15
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @radix_tree_lookup(ptr noundef %12, i32 noundef %19) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.pin_desc, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %19, ptr noundef %24) #5
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.pinctrl_desc, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void @pinconf_generic_dump_pins(ptr noundef %4, ptr noundef %0, ptr noundef null, i32 noundef %19) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.pinconf_ops, ptr %27, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %4, ptr noundef %0, i32 noundef %19) #5
  br label %34

34:                                               ; preds = %33, %29, %22
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  br label %35

35:                                               ; preds = %34, %13
  %36 = add nuw i32 %15, 1
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.pinctrl_desc, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %13, label %41

41:                                               ; preds = %35, %2
  tail call void @mutex_unlock(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_pins(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_groups_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @pinconf_groups_show, ptr noundef %4) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_groups_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %4) #5
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #5
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.23) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pinctrl_ops, ptr %8, i32 0, i32 1
  br label %14

14:                                               ; preds = %27, %12
  %15 = phi i32 [ 0, %12 ], [ %28, %27 ]
  %16 = load ptr, ptr %13, align 4
  %17 = tail call ptr %16(ptr noundef %4, i32 noundef %15) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %15, ptr noundef %17) #5
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.pinctrl_desc, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @pinconf_generic_dump_pins(ptr noundef %4, ptr noundef %0, ptr noundef %17, i32 noundef 0) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.pinconf_ops, ptr %20, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef %4, ptr noundef %0, i32 noundef %15) #5
  br label %27

27:                                               ; preds = %26, %22, %14
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  %28 = add nuw i32 %15, 1
  %29 = icmp eq i32 %28, %10
  br i1 %29, label %30, label %14

30:                                               ; preds = %27, %2
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
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
