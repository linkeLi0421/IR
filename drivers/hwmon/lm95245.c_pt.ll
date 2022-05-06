; ModuleID = '/llk/IR/drivers/hwmon/lm95245.c_pt.bc'
source_filename = "../drivers/hwmon/lm95245.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.lm95245_data = type { ptr, %struct.mutex, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm95245__267_606_lm95245_driver_init6 = internal global ptr @lm95245_driver_init, section ".initcall6.init", align 4
@lm95245_driver = internal global %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm95245_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm95245_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm95245_id, ptr @lm95245_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_lm95245_driver_exit = internal global ptr @lm95245_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author268 = internal constant [71 x i8] c"lm95245.author=Alexander Stein <alexander.stein@systec-electronic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [50 x i8] c"lm95245.description=LM95235/LM95245 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [35 x i8] c"lm95245.file=drivers/hwmon/lm95245\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [20 x i8] c"lm95245.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"lm95245\00", align 1
@lm95245_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm95235\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm95245\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@lm95245_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm95235\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm95245\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@normal_i2c = internal constant [6 x i16] [i16 24, i16 25, i16 41, i16 76, i16 77, i16 -2], align 2
@lm95245_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @lm95245_is_writeable_reg, ptr null, ptr @lm95245_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@lm95245_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&data->update_lock\00", align 1
@lm95245_chip_info = internal constant %struct.hwmon_chip_info { ptr @lm95245_hwmon_ops, ptr @lm95245_info }, align 4
@lm95245_hwmon_ops = internal constant %struct.hwmon_ops { ptr @lm95245_is_visible, ptr @lm95245_read, ptr null, ptr @lm95245_write }, align 4
@lm95245_info = internal global [3 x ptr] [ptr @.compoundliteral.2, ptr @.compoundliteral.4, ptr null], align 4
@.compoundliteral = internal global [2 x i32] [i32 32, i32 0], align 4
@.compoundliteral.2 = internal global %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, align 4
@.compoundliteral.3 = internal global [3 x i32] [i32 132610, i32 1771398, i32 0], align 4
@.compoundliteral.4 = internal global %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.3 }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"lm95235\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_lm95245_driver_exit, ptr @__initcall__kmod_lm95245__267_606_lm95245_driver_init6, ptr @lm95245_driver_exit], section "llvm.metadata"
@switch.table.lm95245_probe = private unnamed_addr constant [3 x i32] [i32 63, i32 364, i32 1000], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lm95245_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm95245_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @lm95245_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @lm95245_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm95245_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @lm95245_regmap_config, ptr noundef null, ptr noundef null) #7
  store ptr %7, ptr %4, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.lm95245_data, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm95245_probe.__key) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %13 = load ptr, ptr %4, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %2) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %35

17:                                               ; preds = %11
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds [3 x i32], ptr @switch.table.lm95245_probe, i32 0, i32 %18
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %22, %20 ], [ 2500, %17 ]
  %25 = getelementptr inbounds %struct.lm95245_data, ptr %4, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %26 = load ptr, ptr %4, align 4
  %27 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 3, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %31 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %3, ptr noundef %30, ptr noundef nonnull %4, ptr noundef nonnull @lm95245_chip_info, ptr noundef null) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %33 = ptrtoint ptr %31 to i32
  %34 = select i1 %32, i32 %33, i32 0
  br label %35

35:                                               ; preds = %29, %23, %16, %9, %1
  %36 = phi i32 [ %10, %9 ], [ %34, %29 ], [ -12, %1 ], [ %27, %23 ], [ %14, %16 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm95245_detect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %4) #7
  %12 = and i32 %11, 1572864
  %13 = icmp eq i32 %12, 1572864
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -2) #7
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -1) #7
  switch i32 %18, label %23 [
    i32 177, label %19
    i32 179, label %20
  ]

19:                                               ; preds = %17
  switch i16 %6, label %23 [
    i16 76, label %20
    i16 41, label %20
    i16 24, label %20
  ]

20:                                               ; preds = %19, %19, %19, %17
  %21 = phi ptr [ @.str.5, %19 ], [ @.str.5, %19 ], [ @.str.5, %19 ], [ @.str, %17 ]
  %22 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull %21, i32 noundef 20) #7
  br label %23

23:                                               ; preds = %20, %19, %17, %14, %2
  %24 = phi i32 [ 0, %20 ], [ -19, %2 ], [ -19, %14 ], [ -19, %19 ], [ -19, %17 ]
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm95245_is_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 3, label %4
    i32 4, label %4
    i32 15, label %4
    i32 191, label %4
    i32 17, label %4
    i32 18, label %4
    i32 7, label %4
    i32 32, label %4
    i32 25, label %4
    i32 33, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm95245_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 2, label %4
    i32 51, label %4
    i32 0, label %4
    i32 48, label %4
    i32 1, label %4
    i32 16, label %4
    i32 49, label %4
    i32 50, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm95245_is_visible(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  switch i32 %1, label %14 [
    i32 0, label %5
    i32 1, label %8
  ]

5:                                                ; preds = %4
  %6 = icmp eq i32 %2, 5
  %7 = select i1 %6, i16 420, i16 0
  br label %14

8:                                                ; preds = %4
  switch i32 %2, label %13 [
    i32 1, label %14
    i32 16, label %14
    i32 8, label %14
    i32 17, label %14
    i32 19, label %14
    i32 2, label %9
    i32 7, label %9
    i32 9, label %9
    i32 20, label %9
    i32 10, label %10
  ]

9:                                                ; preds = %8, %8, %8, %8
  br label %14

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i16 420, i16 292
  br label %14

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %10, %9, %8, %8, %8, %8, %8, %5, %4
  %15 = phi i16 [ %7, %5 ], [ 0, %4 ], [ 0, %13 ], [ %12, %10 ], [ 420, %9 ], [ 292, %8 ], [ 292, %8 ], [ 292, %8 ], [ 292, %8 ], [ 292, %8 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm95245_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  switch i32 %1, label %159 [
    i32 0, label %8
    i32 1, label %15
  ]

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 5
  br i1 %9, label %10, label %159

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.lm95245_data, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %4, align 4
  br label %159

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  switch i32 %2, label %157 [
    i32 1, label %19
    i32 7, label %64
    i32 9, label %70
    i32 8, label %78
    i32 10, label %89
    i32 2, label %102
    i32 20, label %110
    i32 16, label %131
    i32 17, label %138
    i32 19, label %148
  ]

19:                                               ; preds = %15
  %20 = icmp eq i32 %3, 0
  %21 = select i1 %20, i32 48, i32 16
  %22 = call i32 @regmap_read(ptr noundef %18, i32 noundef %21, ptr noundef nonnull %6) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %157, label %24

24:                                               ; preds = %19
  %25 = xor i1 %20, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @regmap_read(ptr noundef %18, i32 noundef %26, ptr noundef nonnull %7) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %157, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %7, align 4
  %31 = and i32 %30, 128
  br i1 %20, label %36, label %32

32:                                               ; preds = %29
  %33 = icmp ne i32 %31, 0
  %34 = icmp slt i32 %30, 127
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %49

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %31, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = or i32 %30, -256
  %40 = mul nsw i32 %39, 1000
  br label %155

41:                                               ; preds = %36
  %42 = and i32 %30, 255
  %43 = load i32, ptr %6, align 4
  %44 = mul nuw nsw i32 %42, 1000
  %45 = and i32 %43, 255
  %46 = mul nuw nsw i32 %45, 1000
  %47 = lshr i32 %46, 8
  %48 = add nuw nsw i32 %47, %44
  br label %155

49:                                               ; preds = %32
  %50 = call i32 @regmap_read(ptr noundef %18, i32 noundef 50, ptr noundef nonnull %6) #7
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %157, label %52

52:                                               ; preds = %49
  %53 = call i32 @regmap_read(ptr noundef %18, i32 noundef 49, ptr noundef nonnull %7) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %157, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %7, align 4
  %57 = load i32, ptr %6, align 4
  %58 = and i32 %56, 255
  %59 = mul nuw nsw i32 %58, 1000
  %60 = and i32 %57, 255
  %61 = mul nuw nsw i32 %60, 1000
  %62 = lshr i32 %61, 8
  %63 = add nuw nsw i32 %62, %59
  br label %155

64:                                               ; preds = %15
  %65 = call i32 @regmap_read(ptr noundef %18, i32 noundef 7, ptr noundef nonnull %7) #7
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %157, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %7, align 4
  %69 = mul i32 %68, 1000
  br label %155

70:                                               ; preds = %15
  %71 = icmp eq i32 %3, 0
  %72 = select i1 %71, i32 32, i32 25
  %73 = call i32 @regmap_read(ptr noundef %18, i32 noundef %72, ptr noundef nonnull %7) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %157, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %7, align 4
  %77 = mul i32 %76, 1000
  br label %155

78:                                               ; preds = %15
  %79 = call i32 @regmap_read(ptr noundef %18, i32 noundef 7, ptr noundef nonnull %7) #7
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %157, label %81

81:                                               ; preds = %78
  %82 = call i32 @regmap_read(ptr noundef %18, i32 noundef 33, ptr noundef nonnull %6) #7
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %157, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %7, align 4
  %86 = load i32, ptr %6, align 4
  %87 = sub i32 %85, %86
  %88 = mul i32 %87, 1000
  br label %155

89:                                               ; preds = %15
  %90 = icmp eq i32 %3, 0
  %91 = select i1 %90, i32 32, i32 25
  %92 = call i32 @regmap_read(ptr noundef %18, i32 noundef %91, ptr noundef nonnull %7) #7
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %157, label %94

94:                                               ; preds = %89
  %95 = call i32 @regmap_read(ptr noundef %18, i32 noundef 33, ptr noundef nonnull %6) #7
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %157, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %7, align 4
  %99 = load i32, ptr %6, align 4
  %100 = sub i32 %98, %99
  %101 = mul i32 %100, 1000
  br label %155

102:                                              ; preds = %15
  %103 = call i32 @regmap_read(ptr noundef %18, i32 noundef 191, ptr noundef nonnull %7) #7
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %157, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %7, align 4
  %107 = and i32 %106, 8
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 2, i32 1
  br label %155

110:                                              ; preds = %15
  %111 = call i32 @regmap_read(ptr noundef %18, i32 noundef 18, ptr noundef nonnull %6) #7
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %157, label %113

113:                                              ; preds = %110
  %114 = call i32 @regmap_read(ptr noundef %18, i32 noundef 17, ptr noundef nonnull %7) #7
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %157, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %7, align 4
  %118 = and i32 %117, 128
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = or i32 %117, -256
  %122 = mul nsw i32 %121, 1000
  br label %155

123:                                              ; preds = %116
  %124 = and i32 %117, 255
  %125 = load i32, ptr %6, align 4
  %126 = mul nuw nsw i32 %124, 1000
  %127 = and i32 %125, 255
  %128 = mul nuw nsw i32 %127, 1000
  %129 = lshr i32 %128, 8
  %130 = add nuw nsw i32 %129, %126
  br label %155

131:                                              ; preds = %15
  %132 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %7) #7
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %157, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr %7, align 4
  %136 = lshr i32 %135, 4
  %137 = and i32 %136, 1
  br label %155

138:                                              ; preds = %15
  %139 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %7) #7
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %7, align 4
  %143 = icmp eq i32 %3, 0
  %144 = select i1 %143, i32 1, i32 2
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  br label %155

148:                                              ; preds = %15
  %149 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %7) #7
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %7, align 4
  %153 = lshr i32 %152, 2
  %154 = and i32 %153, 1
  br label %155

155:                                              ; preds = %151, %141, %134, %123, %120, %105, %97, %84, %75, %67, %55, %41, %38
  %156 = phi i32 [ %154, %151 ], [ %147, %141 ], [ %137, %134 ], [ %109, %105 ], [ %101, %97 ], [ %88, %84 ], [ %77, %75 ], [ %69, %67 ], [ %63, %55 ], [ %40, %38 ], [ %48, %41 ], [ %122, %120 ], [ %130, %123 ]
  store i32 %156, ptr %4, align 4
  br label %157

157:                                              ; preds = %155, %148, %138, %131, %113, %110, %102, %94, %89, %81, %78, %70, %64, %52, %49, %24, %19, %15
  %158 = phi i32 [ %22, %19 ], [ %27, %24 ], [ %50, %49 ], [ %53, %52 ], [ %65, %64 ], [ %73, %70 ], [ %79, %78 ], [ %82, %81 ], [ %92, %89 ], [ %95, %94 ], [ %103, %102 ], [ %111, %110 ], [ %114, %113 ], [ %132, %131 ], [ %139, %138 ], [ %149, %148 ], [ -95, %15 ], [ 0, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %159

159:                                              ; preds = %157, %10, %8, %5
  %160 = phi i32 [ %158, %157 ], [ -95, %5 ], [ 0, %10 ], [ -95, %8 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm95245_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  switch i32 %1, label %84 [
    i32 0, label %7
    i32 1, label %30
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %2, 5
  br i1 %10, label %11, label %84

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.lm95245_data, ptr %9, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #7
  %13 = icmp slt i32 %4, 64
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %4, 365
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = icmp ult i32 %4, 1001
  %18 = select i1 %17, i32 1000, i32 2500
  %19 = select i1 %17, i32 2, i32 3
  br label %20

20:                                               ; preds = %16, %14, %11
  %21 = phi i32 [ 63, %11 ], [ 364, %14 ], [ %18, %16 ]
  %22 = phi i32 [ 0, %11 ], [ 1, %14 ], [ %19, %16 ]
  %23 = load ptr, ptr %9, align 4
  %24 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 4, i32 noundef %22) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.lm95245_data, ptr %9, i32 0, i32 2
  store i32 %21, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ 0, %26 ], [ %24, %20 ]
  tail call void @mutex_unlock(ptr noundef %12) #7
  br label %84

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  switch i32 %2, label %82 [
    i32 7, label %34
    i32 9, label %39
    i32 10, label %47
    i32 20, label %61
    i32 2, label %75
  ]

34:                                               ; preds = %30
  %35 = sdiv i32 %4, 1000
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #7
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 255) #7
  %38 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 7, i32 noundef %37) #7
  br label %82

39:                                               ; preds = %30
  %40 = icmp eq i32 %3, 0
  %41 = select i1 %40, i32 32, i32 25
  %42 = sdiv i32 %4, 1000
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0) #7
  %44 = select i1 %40, i32 127, i32 255
  %45 = tail call i32 @llvm.umin.i32(i32 %43, i32 %44) #7
  %46 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %41, i32 noundef %45) #7
  br label %82

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.lm95245_data, ptr %32, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %48) #7
  %49 = call i32 @regmap_read(ptr noundef %33, i32 noundef 32, ptr noundef nonnull %6) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @mutex_unlock(ptr noundef %48) #7
  br label %82

52:                                               ; preds = %47
  %53 = call i32 @llvm.smax.i32(i32 %4, i32 -1000000) #7
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 1000000) #7
  %55 = load i32, ptr %6, align 4
  %56 = sdiv i32 %54, -1000
  %57 = add i32 %55, %56
  %58 = call i32 @llvm.smax.i32(i32 %57, i32 0) #7
  %59 = call i32 @llvm.umin.i32(i32 %58, i32 31) #7
  %60 = call i32 @regmap_write(ptr noundef %33, i32 noundef 33, i32 noundef %59) #7
  call void @mutex_unlock(ptr noundef %48) #7
  br label %82

61:                                               ; preds = %30
  %62 = tail call i32 @llvm.smax.i32(i32 %4, i32 -128000) #7
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 127875) #7
  %64 = shl nsw i32 %63, 8
  %65 = sdiv i32 %64, 1000
  %66 = getelementptr inbounds %struct.lm95245_data, ptr %32, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %66) #7
  %67 = and i32 %65, 224
  %68 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 18, i32 noundef %67) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  tail call void @mutex_unlock(ptr noundef %66) #7
  br label %82

71:                                               ; preds = %61
  %72 = lshr i32 %65, 8
  %73 = and i32 %72, 255
  %74 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 17, i32 noundef %73) #7
  tail call void @mutex_unlock(ptr noundef %66) #7
  br label %82

75:                                               ; preds = %30
  %76 = add i32 %4, -3
  %77 = icmp ult i32 %76, -2
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %4, 1
  %80 = select i1 %79, i32 8, i32 0
  %81 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 191, i32 noundef 8, i32 noundef %80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %82

82:                                               ; preds = %78, %75, %71, %70, %52, %51, %39, %34, %30
  %83 = phi i32 [ %81, %78 ], [ %68, %70 ], [ %74, %71 ], [ %49, %51 ], [ %60, %52 ], [ %46, %39 ], [ %38, %34 ], [ -22, %75 ], [ -95, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %84

84:                                               ; preds = %82, %28, %7, %5
  %85 = phi i32 [ %83, %82 ], [ -95, %5 ], [ %29, %28 ], [ -95, %7 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
