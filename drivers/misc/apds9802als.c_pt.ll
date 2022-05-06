; ModuleID = '/llk/IR/drivers/misc/apds9802als.c_pt.bc'
source_filename = "../drivers/misc/apds9802als.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_apds9802als__248_306_apds9802als_driver_init6 = internal global ptr @apds9802als_driver_init, section ".initcall6.init", align 4
@apds9802als_driver = internal global %struct.i2c_driver { i32 0, ptr @apds9802als_probe, ptr @apds9802als_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds9802als_pm_ops, ptr null, ptr null }, ptr @apds9802als_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_apds9802als_driver_exit = internal global ptr @apds9802als_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [66 x i8] c"apds9802als.author=Anantha Narayanan <Anantha.Narayanan@intel.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [53 x i8] c"apds9802als.description=Avago apds9802als ALS Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [42 x i8] c"apds9802als.file=drivers/misc/apds9802als\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [27 x i8] c"apds9802als.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"apds9802als\00", align 1
@apds9802als_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @apds9802als_suspend, ptr @apds9802als_resume, ptr @apds9802als_suspend, ptr @apds9802als_resume, ptr @apds9802als_suspend, ptr @apds9802als_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds9802als_suspend, ptr @apds9802als_resume, ptr null }, align 4
@apds9802als_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"apds9802als\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@m_als_gr = internal constant %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @mid_att_als, ptr null }, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"device create file failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ALS chip found\0A\00", align 1
@apds9802als_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&data->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mid_att_als = internal global [3 x ptr] [ptr @dev_attr_lux0_sensor_range, ptr @dev_attr_lux0_input, ptr null], align 4
@dev_attr_lux0_sensor_range = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @als_sensing_range_show, ptr @als_sensing_range_store }, align 4
@dev_attr_lux0_input = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @als_lux0_input_data_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"lux0_sensor_range\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"4095\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"65535\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"lux0_input\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"timeout waiting for data ready\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed default switch on write\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed default LUX on write\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_apds9802als_driver_exit, ptr @__initcall__kmod_apds9802als__248_306_apds9802als_driver_init6, ptr @apds9802als_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @apds9802als_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @apds9802als_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @apds9802als_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @apds9802als_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apds9802als_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #10
  br label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %9, align 8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %11 = tail call i32 @sysfs_create_group(ptr noundef %10, ptr noundef nonnull @m_als_gr) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #10
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %26

14:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.3) #10
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext -128, i8 noundef zeroext 1) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11) #10
  br label %24

18:                                               ; preds = %14
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext -127, i8 noundef zeroext 8) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.12) #10
  br label %22

22:                                               ; preds = %21, %18
  %23 = tail call fastcc i32 @als_wait_for_data_ready(ptr noundef %10) #8
  br label %24

24:                                               ; preds = %22, %17
  tail call void @__mutex_init(ptr noundef nonnull %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @apds9802als_probe.__key) #8
  %25 = tail call i32 @__pm_runtime_set_status(ptr noundef %10, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %10) #8
  br label %26

26:                                               ; preds = %24, %13, %6
  %27 = phi i32 [ -12, %6 ], [ %11, %13 ], [ 0, %24 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apds9802als_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -128) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = trunc i32 %7 to i8
  %11 = and i8 %10, -2
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext -128, i8 noundef zeroext %11) #8
  br label %13

13:                                               ; preds = %9, %1
  tail call void @mutex_unlock(ptr noundef %6) #8
  tail call void @sysfs_remove_group(ptr noundef %4, ptr noundef nonnull @m_als_gr) #8
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  %14 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #8
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #8, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #8, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %20

20:                                               ; preds = %19, %13
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @als_sensing_range_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -127) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i32 6, i1 false)
  br label %12

11:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i32 7, i1 false)
  br label %12

12:                                               ; preds = %11, %10, %3
  %13 = phi i32 [ 5, %10 ], [ 6, %11 ], [ %5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @als_sensing_range_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !12
  %9 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  %13 = icmp ult i32 %12, 4096
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %12, 65536
  br i1 %15, label %16, label %35

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 1, %11 ], [ 2, %14 ]
  store i32 %17, ptr %5, align 4
  %18 = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  call void @mutex_lock(ptr noundef %8) #8
  %19 = call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -127) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = and i32 %19, 250
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = or i32 %22, %25
  %27 = trunc i32 %26 to i8
  %28 = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -127, i8 noundef zeroext %27) #8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %21, %16
  %31 = phi i32 [ %19, %16 ], [ %28, %21 ]
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi i32 [ %31, %30 ], [ %3, %21 ]
  call void @mutex_unlock(ptr noundef %8) #8
  %34 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #8
  br label %35

35:                                               ; preds = %32, %14, %4
  %36 = phi i32 [ %9, %4 ], [ -34, %14 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @als_lux0_input_data_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  tail call void @mutex_lock(ptr noundef %6) #8
  %8 = tail call i32 @i2c_smbus_write_byte(ptr noundef %4, i8 noundef zeroext 64) #8
  %9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -127) #8
  %10 = trunc i32 %9 to i8
  %11 = or i8 %10, 8
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -127, i8 noundef zeroext %11) #8
  %13 = tail call fastcc i32 @als_wait_for_data_ready(ptr noundef %0)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -116) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -115) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef %6) #8
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #8
  %23 = shl i32 %19, 8
  %24 = or i32 %23, %16
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %24)
  br label %29

26:                                               ; preds = %18, %15, %3
  %27 = phi i32 [ %13, %3 ], [ %19, %18 ], [ %16, %15 ]
  tail call void @mutex_unlock(ptr noundef %6) #8
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #8
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %27, %26 ], [ %25, %21 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @als_wait_for_data_ready(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  tail call void @msleep(i32 noundef 30) #8
  %3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %1
  tail call void @msleep(i32 noundef 30) #8
  %7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  tail call void @msleep(i32 noundef 30) #8
  %11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  tail call void @msleep(i32 noundef 30) #8
  %15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  tail call void @msleep(i32 noundef 30) #8
  %19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  tail call void @msleep(i32 noundef 30) #8
  %23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  tail call void @msleep(i32 noundef 30) #8
  %27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  tail call void @msleep(i32 noundef 30) #8
  %31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  tail call void @msleep(i32 noundef 30) #8
  %35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  tail call void @msleep(i32 noundef 30) #8
  %39 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  tail call void @msleep(i32 noundef 30) #8
  %43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -122) #8
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  br label %47

47:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6, %1
  %48 = phi i32 [ -110, %46 ], [ 0, %42 ], [ 0, %38 ], [ 0, %34 ], [ 0, %30 ], [ 0, %26 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apds9802als_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -128) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = trunc i32 %5 to i8
  %9 = and i8 %8, -2
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -128, i8 noundef zeroext %9) #8
  br label %11

11:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apds9802als_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -128) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = trunc i32 %5 to i8
  %9 = or i8 %8, 1
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -128, i8 noundef zeroext %9) #8
  br label %11

11:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 2148047860}
!9 = !{i64 546967, i64 2148036938, i64 2148036964, i64 2148037011, i64 2148037033, i64 2148037061, i64 2148037081}
!10 = !{i64 533536, i64 533561, i64 533583, i64 533599, i64 533611, i64 533631, i64 533655, i64 533671, i64 533683}
!11 = !{i64 2148047986}
!12 = !{!"auto-init"}
