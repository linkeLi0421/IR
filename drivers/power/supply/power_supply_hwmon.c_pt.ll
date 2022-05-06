; ModuleID = '/llk/IR/drivers/power/supply/power_supply_hwmon.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.power_supply_hwmon = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.power_supply_propval = type { i32 }

@power_supply_hwmon_chip_info = internal constant %struct.hwmon_chip_info { ptr @power_supply_hwmon_ops, ptr @power_supply_hwmon_info }, align 4
@power_supply_hwmon_ops = internal constant %struct.hwmon_ops { ptr @power_supply_hwmon_is_visible, ptr @power_supply_hwmon_read, ptr @power_supply_hwmon_read_string, ptr @power_supply_hwmon_write }, align 4
@power_supply_hwmon_info = internal global [4 x ptr] [ptr @.compoundliteral.3, ptr @.compoundliteral.5, ptr @.compoundliteral.7, ptr null], align 4
@ps_temp_label = internal unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.2], align 4
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ambient temp\00", align 1
@.compoundliteral = internal global [3 x i32] [i32 2130082, i32 2195458, i32 0], align 4
@.compoundliteral.3 = internal global %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, align 4
@.compoundliteral.4 = internal global [2 x i32] [i32 74, i32 0], align 4
@.compoundliteral.5 = internal global %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.4 }, align 4
@.compoundliteral.6 = internal global [2 x i32] [i32 78, i32 0], align 4
@.compoundliteral.7 = internal global %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.6 }, align 4
@switch.table.power_supply_hwmon_to_property = private unnamed_addr constant [6 x i32] [i32 12, i32 9, i32 8, i32 -22, i32 -22, i32 13], align 4
@switch.table.power_supply_hwmon_to_property.8 = private unnamed_addr constant [6 x i32] [i32 17, i32 -22, i32 16, i32 -22, i32 -22, i32 18], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_add_hwmon_sysfs(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  %4 = tail call ptr @devres_open_group(ptr noundef %3, ptr noundef nonnull @power_supply_add_hwmon_sysfs, i32 noundef 3264) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %6
  store ptr %0, ptr %7, align 4
  %10 = tail call ptr @bitmap_zalloc(i32 noundef 64, i32 noundef 3264) #7
  %11 = getelementptr inbounds %struct.power_supply_hwmon, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @power_supply_hwmon_bitmap_free, ptr noundef nonnull %10) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 4
  br label %23

22:                                               ; preds = %13
  tail call void @bitmap_free(ptr noundef nonnull %10) #7
  br label %51

23:                                               ; preds = %31, %20
  %24 = phi i32 [ %18, %20 ], [ %32, %31 ]
  %25 = phi i32 [ 0, %20 ], [ %33, %31 ]
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i32, ptr %26, i32 %25
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %31 [
    i32 18, label %29
    i32 16, label %29
    i32 17, label %29
    i32 52, label %29
    i32 53, label %29
    i32 54, label %29
    i32 55, label %29
    i32 56, label %29
    i32 57, label %29
    i32 58, label %29
    i32 59, label %29
    i32 13, label %29
    i32 9, label %29
    i32 8, label %29
    i32 12, label %29
  ]

29:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  tail call void @_set_bit(i32 noundef %28, ptr noundef nonnull %10) #7
  %30 = load i32, ptr %17, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %24, %23 ], [ %30, %29 ]
  %33 = add nuw i32 %25, 1
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %23, label %35

35:                                               ; preds = %31, %16
  %36 = load ptr, ptr %0, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @strchr(ptr noundef %37, i32 noundef 45)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = tail call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef %37, i32 noundef 3264) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @strreplace(ptr noundef nonnull %41, i8 noundef zeroext 45, i8 noundef zeroext 95) #7
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %37, %35 ], [ %41, %43 ]
  %47 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %3, ptr noundef %46, ptr noundef nonnull %7, ptr noundef nonnull @power_supply_hwmon_chip_info, ptr noundef null) #7
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %49 = ptrtoint ptr %47 to i32
  br i1 %48, label %51, label %50

50:                                               ; preds = %45
  tail call void @devres_close_group(ptr noundef %3, ptr noundef nonnull @power_supply_add_hwmon_sysfs) #7
  br label %54

51:                                               ; preds = %45, %40, %22, %9, %6
  %52 = phi i32 [ %49, %45 ], [ -12, %6 ], [ -12, %9 ], [ %14, %22 ], [ -12, %40 ]
  %53 = tail call i32 @devres_release_group(ptr noundef %3, ptr noundef null) #7
  br label %54

54:                                               ; preds = %51, %50, %1
  %55 = phi i32 [ %52, %51 ], [ 0, %50 ], [ -12, %1 ]
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @power_supply_hwmon_bitmap_free(ptr noundef %0) #0 {
  tail call void @bitmap_free(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_remove_hwmon_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  %3 = tail call i32 @devres_release_group(ptr noundef %2, ptr noundef nonnull @power_supply_add_hwmon_sysfs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @power_supply_hwmon_is_visible(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %1, 1
  %6 = icmp eq i32 %2, 21
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %70

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.power_supply_hwmon, ptr %0, i32 0, i32 1
  %10 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 1, i32 noundef %3) #7
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 4
  %14 = lshr i32 %10, 5
  %15 = getelementptr i32, ptr %13, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %10, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %12, %8
  %22 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 5, i32 noundef %3) #7
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 4
  %26 = lshr i32 %22, 5
  %27 = getelementptr i32, ptr %25, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %24, %21
  %34 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 7, i32 noundef %3) #7
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load ptr, ptr %9, align 4
  %38 = lshr i32 %34, 5
  %39 = getelementptr i32, ptr %37, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %34, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %36, %33
  %46 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 15, i32 noundef %3) #7
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load ptr, ptr %9, align 4
  %50 = lshr i32 %46, 5
  %51 = getelementptr i32, ptr %49, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %46, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %48, %45
  %58 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 16, i32 noundef %3) #7
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load ptr, ptr %9, align 4
  %62 = lshr i32 %58, 5
  %63 = getelementptr i32, ptr %61, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %58, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %60, %57
  br label %95

70:                                               ; preds = %4
  %71 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.power_supply_hwmon, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = lshr i32 %71, 5
  %77 = getelementptr i32, ptr %75, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %71, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %73
  %84 = load ptr, ptr %0, align 4
  %85 = tail call i32 @power_supply_property_is_writeable(ptr noundef %84, i32 noundef %71) #7
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  switch i32 %1, label %94 [
    i32 2, label %91
    i32 3, label %88
    i32 1, label %90
  ]

88:                                               ; preds = %87
  %89 = icmp eq i32 %2, 3
  br i1 %89, label %95, label %94

90:                                               ; preds = %87
  switch i32 %2, label %94 [
    i32 15, label %95
    i32 7, label %95
    i32 5, label %95
    i32 16, label %95
  ]

91:                                               ; preds = %87
  %92 = and i32 %2, -2
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %95, label %94

94:                                               ; preds = %91, %90, %88, %87, %83
  br label %95

95:                                               ; preds = %94, %91, %90, %90, %90, %90, %88, %73, %70, %69, %60, %48, %36, %24, %12
  %96 = phi i16 [ 292, %94 ], [ 0, %73 ], [ 0, %70 ], [ 420, %91 ], [ 420, %88 ], [ 420, %90 ], [ 420, %90 ], [ 420, %90 ], [ 420, %90 ], [ 292, %12 ], [ 292, %24 ], [ 292, %36 ], [ 292, %48 ], [ 292, %60 ], [ 0, %69 ]
  ret i16 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_supply_hwmon_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca %union.power_supply_propval, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %10 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %5
  %13 = call i32 @power_supply_get_property(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %6) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  switch i32 %1, label %29 [
    i32 3, label %16
    i32 2, label %16
    i32 1, label %22
  ]

16:                                               ; preds = %15, %15
  %17 = load i32, ptr %6, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = select i1 %18, i32 500, i32 -500
  %20 = add i32 %19, %17
  %21 = sdiv i32 %20, 1000
  br label %27

22:                                               ; preds = %15
  %23 = load i32, ptr %6, align 4
  %24 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %23, i32 100)
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  br i1 %25, label %29, label %27

27:                                               ; preds = %22, %16
  %28 = phi i32 [ %26, %22 ], [ %21, %16 ]
  store i32 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %27, %22, %15, %12, %5
  %30 = phi i32 [ 0, %27 ], [ %10, %5 ], [ %13, %12 ], [ -75, %22 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @power_supply_hwmon_read_string(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr [2 x ptr], ptr @ps_temp_label, i32 0, i32 %3
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %7, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_supply_hwmon_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %union.power_supply_propval, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %10 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %5
  switch i32 %1, label %24 [
    i32 3, label %13
    i32 2, label %13
    i32 1, label %17
  ]

13:                                               ; preds = %12, %12
  %14 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %4, i32 1000)
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  store i32 %16, ptr %6, align 4
  br i1 %15, label %24, label %22

17:                                               ; preds = %12
  %18 = icmp sgt i32 %4, 0
  %19 = select i1 %18, i32 50, i32 -50
  %20 = add i32 %19, %4
  %21 = sdiv i32 %20, 100
  store i32 %21, ptr %6, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = call i32 @power_supply_set_property(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %6) #7
  br label %24

24:                                               ; preds = %22, %13, %12, %5
  %25 = phi i32 [ %23, %22 ], [ %10, %5 ], [ -75, %13 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc i32 @power_supply_hwmon_to_property(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  switch i32 %0, label %27 [
    i32 2, label %4
    i32 3, label %7
    i32 1, label %10
  ]

4:                                                ; preds = %3
  %5 = add i32 %1, -1
  %6 = icmp ult i32 %5, 6
  br i1 %6, label %21, label %27

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %24, label %27

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  switch i32 %1, label %20 [
    i32 1, label %27
    i32 15, label %13
    i32 16, label %14
  ]

13:                                               ; preds = %12
  br label %27

14:                                               ; preds = %12
  br label %27

15:                                               ; preds = %10
  switch i32 %1, label %20 [
    i32 1, label %27
    i32 7, label %16
    i32 5, label %17
    i32 15, label %18
    i32 16, label %19
  ]

16:                                               ; preds = %15
  br label %27

17:                                               ; preds = %15
  br label %27

18:                                               ; preds = %15
  br label %27

19:                                               ; preds = %15
  br label %27

20:                                               ; preds = %15, %12
  br label %27

21:                                               ; preds = %4
  %22 = getelementptr inbounds [6 x i32], ptr @switch.table.power_supply_hwmon_to_property, i32 0, i32 %5
  %23 = load i32, ptr %22, align 4
  br label %27

24:                                               ; preds = %7
  %25 = getelementptr inbounds [6 x i32], ptr @switch.table.power_supply_hwmon_to_property.8, i32 0, i32 %8
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %7, %4, %3
  %28 = phi i32 [ -22, %3 ], [ -22, %20 ], [ 59, %14 ], [ 58, %13 ], [ 56, %19 ], [ 55, %18 ], [ 54, %17 ], [ 53, %16 ], [ 57, %12 ], [ 52, %15 ], [ %23, %21 ], [ -22, %4 ], [ %26, %24 ], [ -22, %7 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_property_is_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
