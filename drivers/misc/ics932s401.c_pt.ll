; ModuleID = '/llk/IR/drivers/misc/ics932s401.c_pt.bc'
source_filename = "../drivers/misc/ics932s401.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.ics932s401_data = type { %struct.attribute_group, %struct.mutex, i8, i32, [21 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ics932s401__247_472_ics932s401_driver_init6 = internal global ptr @ics932s401_driver_init, section ".initcall6.init", align 4
@ics932s401_driver = internal global %struct.i2c_driver { i32 1, ptr @ics932s401_probe, ptr @ics932s401_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ics932s401_id, ptr @ics932s401_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_ics932s401_driver_exit = internal global ptr @ics932s401_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [60 x i8] c"ics932s401.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [41 x i8] c"ics932s401.description=ICS932S401 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [40 x i8] c"ics932s401.file=drivers/misc/ics932s401\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [23 x i8] c"ics932s401.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [39 x i8] c"ics932s401.alias=dmi:bvnIBM:*:rn9228:*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [39 x i8] c"ics932s401.alias=dmi:bvnIBM:*:rn9232:*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [48 x i8] c"ics932s401.alias=dmi:bvnIBM:*:pnIBMSystemx3650*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [48 x i8] c"ics932s401.alias=dmi:bvnIBM:*:pnIBMSystemx3550*\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"ics932s401\00", align 1
@ics932s401_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ics932s401\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@normal_i2c = internal constant [2 x i16] [i16 105, i16 -2], align 2
@ics932s401_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&data->lock\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s chip found\0A\00", align 1
@ics932s401_attr = internal global [12 x ptr] [ptr @dev_attr_spread_enabled, ptr @dev_attr_cpu_clock_selection, ptr @dev_attr_cpu_clock, ptr @dev_attr_src_clock_selection, ptr @dev_attr_src_clock, ptr @dev_attr_pci_clock_selection, ptr @dev_attr_pci_clock, ptr @dev_attr_usb_clock, ptr @dev_attr_ref_clock, ptr @dev_attr_cpu_spread, ptr @dev_attr_src_spread, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dev_attr_spread_enabled = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @show_spread_enabled, ptr null }, align 4
@dev_attr_cpu_clock_selection = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @show_cpu_clock_sel, ptr null }, align 4
@dev_attr_cpu_clock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @show_cpu_clock, ptr null }, align 4
@dev_attr_src_clock_selection = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @show_src_clock_sel, ptr null }, align 4
@dev_attr_src_clock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @show_src_clock, ptr null }, align 4
@dev_attr_pci_clock_selection = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @show_pci_clock_sel, ptr null }, align 4
@dev_attr_pci_clock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @show_pci_clock, ptr null }, align 4
@dev_attr_usb_clock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @show_value, ptr null }, align 4
@dev_attr_ref_clock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @show_value, ptr null }, align 4
@dev_attr_cpu_spread = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @show_spread, ptr null }, align 4
@dev_attr_src_spread = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @show_spread, ptr null }, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"spread_enabled\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@regs_to_copy = internal unnamed_addr constant [15 x i32] [i32 1, i32 6, i32 7, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20], align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"cpu_clock_selection\00", align 1
@fs_speeds = internal unnamed_addr constant [8 x i32] [i32 266666, i32 133333, i32 200000, i32 166666, i32 333333, i32 100000, i32 400000, i32 0], align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@divisors = internal unnamed_addr constant [16 x i32] [i32 2, i32 3, i32 5, i32 15, i32 4, i32 6, i32 10, i32 30, i32 8, i32 12, i32 20, i32 60, i32 16, i32 24, i32 40, i32 120], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"cpu_clock\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"src_clock_selection\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"src_clock\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"pci_clock_selection\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"pci_clock\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"usb_clock\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ref_clock\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"cpu_spread\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"0%%\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"-0.%lu%%\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"src_spread\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Unknown revision %d\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_ics932s401_driver_exit, ptr @__initcall__kmod_ics932s401__247_472_ics932s401_driver_init6, ptr @ics932s401_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ics932s401_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ics932s401_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ics932s401_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ics932s401_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ics932s401_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 72) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @ics932s401_probe.__key) #9
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.attribute_group, ptr %4, i32 0, i32 3
  store ptr @ics932s401_attr, ptr %11, align 4
  %12 = tail call i32 @sysfs_create_group(ptr noundef %9, ptr noundef nonnull %4) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %15

15:                                               ; preds = %14, %6, %2
  %16 = phi i32 [ 0, %6 ], [ %12, %14 ], [ -12, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ics932s401_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %4, ptr noundef %3) #9
  tail call void @kfree(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ics932s401_detect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #9
  %10 = and i32 %9, 1572864
  %11 = icmp eq i32 %10, 1572864
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 7) #9
  %14 = ashr i32 %13, 12
  %15 = and i32 %13, 3840
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 9) #9
  %19 = and i32 %18, -256
  %20 = icmp eq i32 %19, 2816
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = icmp eq i32 %14, 4
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %14) #11
  br label %25

25:                                               ; preds = %23, %21
  %26 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 20) #9
  br label %27

27:                                               ; preds = %25, %17, %12, %2
  %28 = phi i32 [ 0, %25 ], [ -19, %2 ], [ -19, %12 ], [ -19, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_spread_enabled(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i32 3, i1 false)
  br label %40

39:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i32 3, i1 false)
  br label %40

40:                                               ; preds = %39, %38
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpu_clock_sel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 10
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %33
  %40 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 11
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 63
  %44 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 12
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %42, 1
  %48 = and i32 %47, 256
  %49 = or i32 %48, %46
  %50 = shl nuw nsw i32 %42, 3
  %51 = and i32 %50, 512
  %52 = or i32 %49, %51
  %53 = mul nuw nsw i32 %52, 14318
  %54 = add nuw nsw i32 %53, 114544
  %55 = add nuw nsw i32 %43, 2
  %56 = udiv i32 %54, %55
  %57 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 19
  %58 = load i8, ptr %57, align 1
  %59 = lshr i8 %58, 4
  %60 = zext i8 %59 to i32
  %61 = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = sdiv i32 %56, %62
  br label %76

64:                                               ; preds = %33
  %65 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 6
  %66 = load i8, ptr %65, align 2
  %67 = and i8 %66, 7
  %68 = zext i8 %67 to i32
  %69 = getelementptr [8 x i32], ptr @fs_speeds, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %36, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  switch i32 %70, label %76 [
    i32 166666, label %74
    i32 333333, label %75
  ]

74:                                               ; preds = %73
  br label %76

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75, %74, %73, %64, %39
  %77 = phi i32 [ %63, %39 ], [ %70, %73 ], [ 320000, %75 ], [ 160000, %74 ], [ %70, %64 ]
  %78 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %77)
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpu_clock(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 11
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 12
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %36, 1
  %42 = and i32 %41, 256
  %43 = or i32 %42, %40
  %44 = shl nuw nsw i32 %36, 3
  %45 = and i32 %44, 512
  %46 = or i32 %43, %45
  %47 = mul nuw nsw i32 %46, 14318
  %48 = add nuw nsw i32 %47, 114544
  %49 = add nuw nsw i32 %37, 2
  %50 = udiv i32 %48, %49
  %51 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 19
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = sdiv i32 %50, %56
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %57)
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_src_clock_sel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 10
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %33
  %40 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 15
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 63
  %44 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 16
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %42, 1
  %48 = and i32 %47, 256
  %49 = or i32 %48, %46
  %50 = shl nuw nsw i32 %42, 3
  %51 = and i32 %50, 512
  %52 = or i32 %49, %51
  %53 = mul nuw nsw i32 %52, 14318
  %54 = add nuw nsw i32 %53, 114544
  %55 = add nuw nsw i32 %43, 2
  %56 = udiv i32 %54, %55
  %57 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 20
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 15
  %60 = zext i8 %59 to i32
  %61 = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = sdiv i32 %56, %62
  br label %68

64:                                               ; preds = %33
  %65 = and i32 %36, 12
  %66 = icmp eq i32 %65, 12
  %67 = select i1 %66, i32 96000, i32 100000
  br label %68

68:                                               ; preds = %64, %39
  %69 = phi i32 [ %63, %39 ], [ %67, %64 ]
  %70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %69)
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_src_clock(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 15
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 16
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %36, 1
  %42 = and i32 %41, 256
  %43 = or i32 %42, %40
  %44 = shl nuw nsw i32 %36, 3
  %45 = and i32 %44, 512
  %46 = or i32 %43, %45
  %47 = mul nuw nsw i32 %46, 14318
  %48 = add nuw nsw i32 %47, 114544
  %49 = add nuw nsw i32 %37, 2
  %50 = udiv i32 %48, %49
  %51 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 20
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 15
  %54 = zext i8 %53 to i32
  %55 = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = sdiv i32 %50, %56
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %57)
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_pci_clock_sel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 10
  %35 = load i8, ptr %34, align 2
  %36 = icmp sgt i8 %35, -1
  br i1 %36, label %62, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 15
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 63
  %42 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 16
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %40, 1
  %46 = and i32 %45, 256
  %47 = or i32 %46, %44
  %48 = shl nuw nsw i32 %40, 3
  %49 = and i32 %48, 512
  %50 = or i32 %47, %49
  %51 = mul nuw nsw i32 %50, 14318
  %52 = add nuw nsw i32 %51, 114544
  %53 = add nuw nsw i32 %41, 2
  %54 = udiv i32 %52, %53
  %55 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 20
  %56 = load i8, ptr %55, align 4
  %57 = lshr i8 %56, 4
  %58 = zext i8 %57 to i32
  %59 = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = sdiv i32 %54, %60
  br label %62

62:                                               ; preds = %37, %33
  %63 = phi i32 [ %61, %37 ], [ 33333, %33 ]
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %63)
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_pci_clock(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 15
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 16
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %36, 1
  %42 = and i32 %41, 256
  %43 = or i32 %42, %40
  %44 = shl nuw nsw i32 %36, 3
  %45 = and i32 %44, 512
  %46 = or i32 %43, %45
  %47 = mul nuw nsw i32 %46, 14318
  %48 = add nuw nsw i32 %47, 114544
  %49 = add nuw nsw i32 %37, 2
  %50 = udiv i32 %48, %49
  %51 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 20
  %52 = load i8, ptr %51, align 4
  %53 = lshr i8 %52, 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = sdiv i32 %50, %56
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %57)
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_value(ptr nocapture noundef readnone %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp eq ptr %1, @dev_attr_usb_clock
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, @dev_attr_ref_clock
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ics932s401.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 371, 0\0A.popsection", ""() #9, !srcloc !8
  unreachable

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 48000, %3 ], [ 14318, %5 ]
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_spread(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, -200
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %29, %19 ], [ 0, %18 ]
  %21 = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %23) #9
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #9
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %22
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %19

31:                                               ; preds = %19
  store i32 %7, ptr %9, align 4
  %32 = getelementptr inbounds %struct.ics932s401_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %34 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16)
  br label %60

40:                                               ; preds = %33
  %41 = icmp eq ptr %1, @dev_attr_src_spread
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = icmp eq ptr %1, @dev_attr_cpu_spread
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ics932s401.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

45:                                               ; preds = %42, %40
  %46 = phi i32 [ 17, %40 ], [ 13, %42 ]
  %47 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %46, 1
  %51 = getelementptr %struct.ics932s401_data, ptr %6, i32 0, i32 4, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = and i32 %54, 32512
  %56 = or i32 %55, %49
  %57 = mul i32 %56, 500000
  %58 = lshr i32 %57, 14
  %59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %58)
  br label %60

60:                                               ; preds = %45, %38
  %61 = phi i32 [ %59, %45 ], [ %39, %38 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2154071077, i64 2154071567, i64 2154071114, i64 2154071170, i64 2154071204, i64 2154071228, i64 2154071269, i64 2154071290, i64 2154071318, i64 2154071352}
!9 = !{i64 2154072029, i64 2154072519, i64 2154072066, i64 2154072122, i64 2154072156, i64 2154072180, i64 2154072221, i64 2154072242, i64 2154072270, i64 2154072304}
