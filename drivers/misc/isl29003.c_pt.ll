; ModuleID = '/llk/IR/drivers/misc/isl29003.c_pt.bc'
source_filename = "../drivers/misc/isl29003.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isl29003_data = type { ptr, %struct.mutex, [4 x i8], i8 }

@__initcall__kmod_isl29003__247_469_isl29003_driver_init6 = internal global ptr @isl29003_driver_init, section ".initcall6.init", align 4
@isl29003_driver = internal global %struct.i2c_driver { i32 0, ptr @isl29003_probe, ptr @isl29003_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29003_pm_ops, ptr null, ptr null }, ptr @isl29003_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_isl29003_driver_exit = internal global ptr @isl29003_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [46 x i8] c"isl29003.author=Daniel Mack <daniel@caiaq.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [58 x i8] c"isl29003.description=ISL29003 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [36 x i8] c"isl29003.file=drivers/misc/isl29003\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"isl29003.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version252 = internal constant [21 x i8] c"isl29003.version=1.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"isl29003\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@isl29003_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @isl29003_suspend, ptr @isl29003_resume, ptr @isl29003_suspend, ptr @isl29003_resume, ptr @isl29003_suspend, ptr @isl29003_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@isl29003_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29003\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@isl29003_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&data->lock\00", align 1
@isl29003_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29003_attributes, ptr null }, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"driver version %s enabled\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@isl29003_attributes = internal global [6 x ptr] [ptr @dev_attr_range, ptr @dev_attr_resolution, ptr @dev_attr_mode, ptr @dev_attr_power_state, ptr @dev_attr_lux, ptr null], align 4
@dev_attr_range = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @isl29003_show_range, ptr @isl29003_store_range }, align 4
@dev_attr_resolution = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @isl29003_show_resolution, ptr @isl29003_store_resolution }, align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @isl29003_show_mode, ptr @isl29003_store_mode }, align 4
@dev_attr_power_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @isl29003_show_power_state, ptr @isl29003_store_power_state }, align 4
@dev_attr_lux = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @isl29003_show_lux, ptr null }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"power_state\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"lux\00", align 1
@gain_range = internal unnamed_addr constant [4 x i32] [i32 1000, i32 4000, i32 16000, i32 64000], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_version252, ptr @__exitcall_isl29003_driver_exit, ptr @__initcall__kmod_isl29003__247_469_isl29003_driver_init6, ptr @__modver_attr, ptr @isl29003_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @isl29003_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29003_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @isl29003_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29003_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #8
  %10 = and i32 %9, 393216
  %11 = icmp eq i32 %10, 393216
  br i1 %11, label %12, label %83

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %83, label %16

16:                                               ; preds = %12
  store ptr %0, ptr %14, align 8
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds %struct.isl29003_data, ptr %14, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @isl29003_probe.__key) #8
  %19 = load ptr, ptr %17, align 8
  %20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 0) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %16
  %23 = trunc i32 %20 to i8
  %24 = getelementptr %struct.isl29003_data, ptr %19, i32 0, i32 2, i32 0
  store i8 %23, ptr %24, align 1
  %25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 1) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %81, label %27

27:                                               ; preds = %22
  %28 = trunc i32 %25 to i8
  %29 = getelementptr %struct.isl29003_data, ptr %19, i32 0, i32 2, i32 1
  store i8 %28, ptr %29, align 1
  %30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 2) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %81, label %32

32:                                               ; preds = %27
  %33 = trunc i32 %30 to i8
  %34 = getelementptr %struct.isl29003_data, ptr %19, i32 0, i32 2, i32 2
  store i8 %33, ptr %34, align 1
  %35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 3) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %32
  %38 = trunc i32 %35 to i8
  %39 = getelementptr %struct.isl29003_data, ptr %19, i32 0, i32 2, i32 3
  store i8 %38, ptr %39, align 1
  %40 = load ptr, ptr %17, align 8
  %41 = getelementptr inbounds %struct.isl29003_data, ptr %40, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %41) #8
  %42 = getelementptr %struct.isl29003_data, ptr %40, i32 0, i32 2, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, -13
  %45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %44) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i8 %44, ptr %42, align 1
  br label %48

48:                                               ; preds = %47, %37
  tail call void @mutex_unlock(ptr noundef %41) #8
  %49 = load ptr, ptr %17, align 8
  %50 = getelementptr inbounds %struct.isl29003_data, ptr %49, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %50) #8
  %51 = getelementptr %struct.isl29003_data, ptr %49, i32 0, i32 2, i32 0
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, -4
  %54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %53) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i8 %53, ptr %51, align 1
  br label %57

57:                                               ; preds = %56, %48
  tail call void @mutex_unlock(ptr noundef %50) #8
  %58 = load ptr, ptr %17, align 8
  %59 = getelementptr inbounds %struct.isl29003_data, ptr %58, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %59) #8
  %60 = getelementptr %struct.isl29003_data, ptr %58, i32 0, i32 2, i32 0
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, -13
  %63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %62) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i8 %62, ptr %60, align 1
  br label %66

66:                                               ; preds = %65, %57
  tail call void @mutex_unlock(ptr noundef %59) #8
  %67 = load ptr, ptr %17, align 8
  %68 = getelementptr inbounds %struct.isl29003_data, ptr %67, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %68) #8
  %69 = getelementptr %struct.isl29003_data, ptr %67, i32 0, i32 2, i32 0
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 63
  %72 = or i8 %71, 64
  %73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %72) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i8 %72, ptr %69, align 1
  br label %76

76:                                               ; preds = %75, %66
  tail call void @mutex_unlock(ptr noundef %68) #8
  %77 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %78 = tail call i32 @sysfs_create_group(ptr noundef %77, ptr noundef nonnull @isl29003_attr_group) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #10
  br label %83

81:                                               ; preds = %76, %32, %27, %22, %16
  %82 = phi i32 [ %78, %76 ], [ -19, %32 ], [ -19, %27 ], [ -19, %22 ], [ -19, %16 ]
  tail call void @kfree(ptr noundef nonnull %14) #8
  br label %83

83:                                               ; preds = %81, %80, %12, %2
  %84 = phi i32 [ %82, %81 ], [ 0, %80 ], [ -5, %2 ], [ -12, %12 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @isl29003_attr_group) #8
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 0
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 63
  %9 = or i8 %8, 64
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8 %9, ptr %6, align 1
  br label %13

13:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef %5) #8
  %14 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %14) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_show_range(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.isl29003_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 3
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_store_range(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 64
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.isl29003_data, ptr %14, i32 0, i32 1
  call void @mutex_lock(ptr noundef %15) #8
  %16 = getelementptr %struct.isl29003_data, ptr %14, i32 0, i32 2, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -13
  %19 = trunc i32 %10 to i8
  %20 = shl nuw nsw i8 %19, 2
  %21 = or i8 %18, %20
  %22 = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i8 %21, ptr %16, align 1
  br label %25

25:                                               ; preds = %24, %12
  call void @mutex_unlock(ptr noundef %15) #8
  %26 = icmp slt i32 %22, 0
  %27 = select i1 %26, i32 %22, i32 %3
  br label %28

28:                                               ; preds = %25, %9, %4
  %29 = phi i32 [ %7, %4 ], [ -22, %9 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_show_resolution(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.isl29003_data, ptr %5, i32 0, i32 2, i32 0
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 3
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_store_resolution(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = trunc i32 %10 to i8
  %14 = getelementptr i8, ptr %0, i32 64
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.isl29003_data, ptr %15, i32 0, i32 1
  call void @mutex_lock(ptr noundef %16) #8
  %17 = getelementptr %struct.isl29003_data, ptr %15, i32 0, i32 2, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, -4
  %20 = or i8 %19, %13
  %21 = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i8 %20, ptr %17, align 1
  br label %24

24:                                               ; preds = %23, %12
  call void @mutex_unlock(ptr noundef %16) #8
  %25 = icmp slt i32 %21, 0
  %26 = select i1 %25, i32 %21, i32 %3
  br label %27

27:                                               ; preds = %24, %9, %4
  %28 = phi i32 [ %7, %4 ], [ -22, %9 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_show_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.isl29003_data, ptr %5, i32 0, i32 2, i32 0
  %7 = load i8, ptr %6, align 1
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 3
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_store_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 2
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 64
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.isl29003_data, ptr %14, i32 0, i32 1
  call void @mutex_lock(ptr noundef %15) #8
  %16 = getelementptr %struct.isl29003_data, ptr %14, i32 0, i32 2, i32 0
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -13
  %19 = trunc i32 %10 to i8
  %20 = shl nuw nsw i8 %19, 2
  %21 = or i8 %18, %20
  %22 = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i8 %21, ptr %16, align 1
  br label %25

25:                                               ; preds = %24, %12
  call void @mutex_unlock(ptr noundef %15) #8
  %26 = icmp slt i32 %22, 0
  %27 = select i1 %26, i32 %22, i32 %3
  br label %28

28:                                               ; preds = %25, %9, %4
  %29 = phi i32 [ %7, %4 ], [ -22, %9 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_show_power_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isl29003_data, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 64
  %9 = xor i8 %8, 64
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_store_power_state(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %13, i8 64, i8 -128
  %15 = getelementptr i8, ptr %0, i32 64
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.isl29003_data, ptr %16, i32 0, i32 1
  call void @mutex_lock(ptr noundef %17) #8
  %18 = getelementptr %struct.isl29003_data, ptr %16, i32 0, i32 2, i32 0
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 63
  %21 = or i8 %20, %14
  %22 = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i8 %21, ptr %18, align 1
  br label %25

25:                                               ; preds = %24, %12
  %26 = phi i32 [ %22, %12 ], [ %3, %24 ]
  call void @mutex_unlock(ptr noundef %17) #8
  br label %27

27:                                               ; preds = %25, %9, %4
  %28 = phi i32 [ %26, %25 ], [ %7, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_show_lux(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.isl29003_data, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.isl29003_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 4) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef %12) #8
  br label %38

16:                                               ; preds = %11
  %17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 5) #8
  tail call void @mutex_unlock(ptr noundef %12) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr %struct.isl29003_data, ptr %20, i32 0, i32 2, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 3
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.isl29003_data, ptr %20, i32 0, i32 2, i32 0
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 3
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %29, -4
  %31 = add nsw i32 %30, 16
  %32 = shl i32 %17, 8
  %33 = or i32 %32, %13
  %34 = getelementptr [4 x i32], ptr @gain_range, i32 0, i32 %25
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %33
  %37 = ashr i32 %36, %31
  br label %38

38:                                               ; preds = %19, %16, %15
  %39 = phi i32 [ %13, %15 ], [ %37, %19 ], [ %17, %16 ]
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %39)
  br label %41

41:                                               ; preds = %38, %3
  %42 = phi i32 [ %40, %38 ], [ -16, %3 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 64
  %8 = xor i8 %7, 64
  %9 = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 3
  store i8 %8, ptr %9, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.isl29003_data, ptr %10, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = getelementptr %struct.isl29003_data, ptr %10, i32 0, i32 2, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 63
  %15 = or i8 %14, 64
  %16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8 %15, ptr %12, align 1
  br label %19

19:                                               ; preds = %18, %1
  tail call void @mutex_unlock(ptr noundef %11) #8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29003_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 0
  %6 = load i8, ptr %5, align 1
  %7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext %11) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 2, i8 noundef zeroext %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 3, i8 noundef zeroext %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i8 64, i8 -128
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.isl29003_data, ptr %29, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %30) #8
  %31 = getelementptr %struct.isl29003_data, ptr %29, i32 0, i32 2, i32 0
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 63
  %34 = or i8 %33, %28
  %35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %34) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i8 %34, ptr %31, align 1
  br label %38

38:                                               ; preds = %37, %24
  tail call void @mutex_unlock(ptr noundef %30) #8
  br label %39

39:                                               ; preds = %38, %19, %14, %9, %1
  %40 = phi i32 [ %35, %38 ], [ -5, %19 ], [ -5, %14 ], [ -5, %9 ], [ -5, %1 ]
  ret i32 %40
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
