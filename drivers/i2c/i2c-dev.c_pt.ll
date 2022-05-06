; ModuleID = '/llk/IR/drivers/i2c/i2c-dev.c_pt.bc'
source_filename = "../drivers/i2c/i2c-dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.i2c_dev = type { %struct.list_head, ptr, %struct.device, %struct.cdev }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.i2c_rdwr_ioctl_data = type { ptr, i32 }
%struct.i2c_smbus_ioctl_data = type { i8, i8, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }

@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@i2cdev_notifier = internal global %struct.notifier_block { ptr @i2cdev_notifier_call, ptr null, i32 0 }, align 4
@i2c_dev_class = internal unnamed_addr global ptr null, align 4
@__UNIQUE_ID_author249 = internal constant [47 x i8] c"i2c_dev.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [55 x i8] c"i2c_dev.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [44 x i8] c"i2c_dev.description=I2C /dev entries driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [33 x i8] c"i2c_dev.file=drivers/i2c/i2c-dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [20 x i8] c"i2c_dev.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i2c_dev__254_776_i2c_dev_init6 = internal global ptr @i2c_dev_init, section ".initcall6.init", align 4
@__exitcall_i2c_dev_exit = internal global ptr @i2c_dev_exit, section ".exitcall.exit", align 4
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@i2cdev_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @i2cdev_read, ptr @i2cdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2cdev_ioctl, ptr null, ptr null, i32 0, ptr @i2cdev_open, ptr null, ptr @i2cdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [7 x i8] c"i2c-%d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\013i2c_dev: Out of device minors (%d)\0A\00", align 1
@i2c_dev_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@i2c_dev_list = internal global %struct.list_head { ptr @i2c_dev_list, ptr @i2c_dev_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"i2c-dev %d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\016i2c_dev: i2c /dev entries driver\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@i2c_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"i2c-dev\00", align 1
@i2c_groups = internal global [2 x ptr] [ptr @i2c_group, ptr null], align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\013i2c_dev: Driver Initialisation failed\0A\00", align 1
@i2c_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @i2c_attrs, ptr null }, align 4
@i2c_attrs = internal global [2 x ptr] [ptr @dev_attr_name, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @name_show, ptr null }, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_i2c_dev_exit, ptr @__initcall__kmod_i2c_dev__254_776_i2c_dev_init6, ptr @i2c_dev_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_dev_exit() #0 section ".exit.text" {
  %1 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @i2cdev_notifier) #12
  %2 = tail call i32 @i2c_for_each_dev(ptr noundef null, ptr noundef nonnull @i2cdev_detach_adapter) #12
  %3 = load ptr, ptr @i2c_dev_class, align 4
  tail call void @class_destroy(ptr noundef %3) #12
  tail call void @unregister_chrdev_region(i32 noundef 93323264, i32 noundef 1048576) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_detach_adapter(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 476
  %8 = load i32, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #12
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ @i2c_dev_list, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @i2c_dev_list
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.i2c_dev, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %19, label %9

19:                                               ; preds = %13, %9
  %20 = phi ptr [ %11, %13 ], [ null, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %21 = load i16, ptr @i2c_dev_list_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @i2c_dev_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %23 = icmp eq ptr %20, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #12
  %25 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %29 = load i16, ptr @i2c_dev_list_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @i2c_dev_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %31 = getelementptr inbounds %struct.i2c_dev, ptr %20, i32 0, i32 3
  %32 = getelementptr inbounds %struct.i2c_dev, ptr %20, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %31, ptr noundef %32) #12
  tail call void @put_device(ptr noundef %32) #12
  br label %33

33:                                               ; preds = %24, %19, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_dev_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %2 = tail call i32 @register_chrdev_region(i32 noundef 93323264, i32 noundef 1048576, ptr noundef nonnull @.str.6) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @i2c_dev_init.__key) #12
  store ptr %5, ptr @i2c_dev_class, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 3
  store ptr @i2c_groups, ptr %10, align 4
  %11 = tail call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @i2cdev_notifier) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 @i2c_for_each_dev(ptr noundef null, ptr noundef nonnull @i2cdev_attach_adapter) #12
  br label %22

15:                                               ; preds = %9
  %16 = load ptr, ptr @i2c_dev_class, align 4
  tail call void @class_destroy(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %8, %7 ], [ %11, %15 ]
  tail call void @unregister_chrdev_region(i32 noundef 93323264, i32 noundef 1048576) #12
  br label %19

19:                                               ; preds = %17, %0
  %20 = phi i32 [ %2, %0 ], [ %18, %17 ]
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %20, %19 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_notifier_call(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %8 [
    i32 1, label %4
    i32 2, label %6
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @i2cdev_attach_adapter(ptr noundef %2, ptr noundef null)
  br label %8

6:                                                ; preds = %3
  %7 = tail call i32 @i2cdev_detach_adapter(ptr noundef %2, ptr noundef null)
  br label %8

8:                                                ; preds = %6, %4, %3
  %9 = phi i32 [ 0, %6 ], [ %5, %4 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_attach_adapter(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -64
  %8 = getelementptr i8, ptr %0, i32 476
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 1048575
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9) #13
  br label %24

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 552) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 1
  store ptr %7, ptr %18, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #12
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @i2c_dev_list, i32 0, i32 1), align 4
  store ptr %15, ptr getelementptr inbounds (%struct.list_head, ptr @i2c_dev_list, i32 0, i32 1), align 4
  store ptr @i2c_dev_list, ptr %15, align 8
  %20 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %15, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %21 = load i16, ptr @i2c_dev_list_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @i2c_dev_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %23 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %13, %11
  %25 = phi ptr [ %15, %17 ], [ inttoptr (i32 -12 to ptr), %13 ], [ inttoptr (i32 -19 to ptr), %11 ]
  %26 = ptrtoint ptr %25 to i32
  br label %47

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 3
  tail call void @cdev_init(ptr noundef %28, ptr noundef nonnull @i2cdev_fops) #12
  %29 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 3, i32 1
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %30) #12
  %31 = load i32, ptr %8, align 4
  %32 = or i32 %31, 93323264
  %33 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 2, i32 27
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr @i2c_dev_class, align 4
  %35 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 2, i32 31
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 2, i32 1
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_dev, ptr %15, i32 0, i32 2, i32 33
  store ptr @i2cdev_dev_release, ptr %37, align 4
  %38 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %30, ptr noundef nonnull @.str, i32 noundef %31) #12
  %39 = tail call i32 @cdev_device_add(ptr noundef %28, ptr noundef %30) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %27
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #12
  %42 = load ptr, ptr %20, align 4
  %43 = load ptr, ptr %15, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %45 = load i16, ptr @i2c_dev_list_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @i2c_dev_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  tail call void @put_device(ptr noundef %30) #12
  br label %47

47:                                               ; preds = %41, %27, %24, %2
  %48 = phi i32 [ %26, %24 ], [ %39, %41 ], [ 0, %2 ], [ 0, %27 ]
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2cdev_dev_release(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 8192)
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %8, i32 noundef %7, i16 noundef zeroext 1) #12
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %11, i32 -1090519040) #16, !srcloc !12
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #17, !srcloc !13
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %23 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %11) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i32 [ %23, %17 ], [ %11, %13 ]
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %11, i32 -14
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i32 [ %11, %10 ], [ %27, %24 ]
  tail call void @kfree(ptr noundef nonnull %8) #12
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i32 [ %29, %28 ], [ -12, %4 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 8192)
  %8 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %7) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = ptrtoint ptr %8 to i32
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef %8, i32 noundef %7, i16 noundef zeroext 0) #12
  tail call void @kfree(ptr noundef %8) #12
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_rdwr_ioctl_data, align 8
  %6 = alloca %struct.i2c_smbus_ioctl_data, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  switch i32 %1, label %149 [
    i32 1795, label %9
    i32 1798, label %9
    i32 1796, label %43
    i32 1800, label %49
    i32 1797, label %55
    i32 1799, label %70
    i32 1824, label %107
    i32 1793, label %135
    i32 1794, label %141
  ]

9:                                                ; preds = %3, %3
  %10 = icmp ugt i32 %2, 1023
  br i1 %10, label %149, label %11

11:                                               ; preds = %9
  %12 = load i16, ptr %8, align 8
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  %15 = icmp ugt i32 %2, 127
  %16 = and i1 %15, %14
  br i1 %16, label %149, label %17

17:                                               ; preds = %11
  %18 = icmp eq i32 %1, 1795
  br i1 %18, label %19, label %40

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %2, ptr %4, align 4
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = icmp ne ptr %27, @i2c_adapter_type
  %29 = getelementptr i8, ptr %23, i32 -64
  %30 = icmp eq ptr %29, null
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = tail call fastcc i32 @i2cdev_check_mux_parents(ptr noundef nonnull %29, i32 noundef %2) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %149

36:                                               ; preds = %32, %25, %19
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  %38 = call i32 @device_for_each_child(ptr noundef %37, ptr noundef nonnull %4, ptr noundef nonnull @i2cdev_check_mux_children) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %149

40:                                               ; preds = %36, %17
  %41 = trunc i32 %2 to i16
  %42 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  store i16 %41, ptr %42, align 2
  br label %149

43:                                               ; preds = %3
  %44 = icmp eq i32 %2, 0
  %45 = load i16, ptr %8, align 8
  %46 = and i16 %45, -17
  %47 = select i1 %44, i16 0, i16 16
  %48 = or i16 %46, %47
  store i16 %48, ptr %8, align 8
  br label %149

49:                                               ; preds = %3
  %50 = icmp eq i32 %2, 0
  %51 = load i16, ptr %8, align 8
  %52 = and i16 %51, -5
  %53 = select i1 %50, i16 0, i16 4
  %54 = or i16 %52, %53
  store i16 %54, ptr %8, align 8
  br label %149

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.i2c_algorithm, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %57) #12
  %63 = inttoptr i32 %2 to ptr
  %64 = tail call ptr @llvm.thread.pointer() #12
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #17, !srcloc !13
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %63, i32 %62, i32 -1090519041) #12, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  br label %149

70:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !17
  %71 = inttoptr i32 %2 to ptr
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %71, i32 8, i32 -1090519040) #16, !srcloc !18
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83, !prof !19

75:                                               ; preds = %70
  %76 = tail call ptr @llvm.thread.pointer() #12
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #17, !srcloc !13
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %81 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %71, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !19

83:                                               ; preds = %75, %70
  %84 = phi i32 [ %81, %75 ], [ 8, %70 ]
  %85 = sub i32 8, %84
  %86 = getelementptr i8, ptr %5, i32 %85
  call void @llvm.memset.p0.i32(ptr align 1 %86, i8 0, i32 %84, i1 false) #12
  br label %105

87:                                               ; preds = %75
  %88 = load ptr, ptr %5, align 8
  %89 = icmp eq ptr %88, null
  %90 = getelementptr inbounds %struct.i2c_rdwr_ioctl_data, ptr %5, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %89, i1 true, i1 %92
  %94 = icmp ugt i32 %91, 42
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = mul nuw nsw i32 %91, 12
  %98 = call ptr @memdup_user(ptr noundef nonnull %88, i32 noundef %97) #12
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %98 to i32
  br label %105

102:                                              ; preds = %96
  %103 = load i32, ptr %90, align 4
  %104 = call fastcc i32 @i2cdev_ioctl_rdwr(ptr noundef %8, i32 noundef %103, ptr noundef %98)
  br label %105

105:                                              ; preds = %102, %100, %87, %83
  %106 = phi i32 [ %101, %100 ], [ %104, %102 ], [ -22, %87 ], [ -14, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %149

107:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !17
  %108 = inttoptr i32 %2 to ptr
  %109 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %108, i32 12, i32 -1090519040) #16, !srcloc !18
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120, !prof !19

112:                                              ; preds = %107
  %113 = tail call ptr @llvm.thread.pointer() #12
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %115 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %114) #17, !srcloc !13
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %118 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %108, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120, !prof !19

120:                                              ; preds = %112, %107
  %121 = phi i32 [ %118, %112 ], [ 12, %107 ]
  %122 = sub i32 12, %121
  %123 = getelementptr i8, ptr %6, i32 %122
  call void @llvm.memset.p0.i32(ptr align 1 %123, i8 0, i32 %121, i1 false) #12
  br label %133

124:                                              ; preds = %112
  %125 = load i8, ptr %6, align 4
  %126 = getelementptr inbounds %struct.i2c_smbus_ioctl_data, ptr %6, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = getelementptr inbounds %struct.i2c_smbus_ioctl_data, ptr %6, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.i2c_smbus_ioctl_data, ptr %6, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = call fastcc i32 @i2cdev_ioctl_smbus(ptr noundef %8, i8 noundef zeroext %125, i8 noundef zeroext %127, i32 noundef %129, ptr noundef %131)
  br label %133

133:                                              ; preds = %124, %120
  %134 = phi i32 [ %132, %124 ], [ -14, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %149

135:                                              ; preds = %3
  %136 = icmp slt i32 %2, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.i2c_adapter, ptr %139, i32 0, i32 8
  store i32 %2, ptr %140, align 8
  br label %149

141:                                              ; preds = %3
  %142 = icmp slt i32 %2, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %141
  %144 = mul i32 %2, 10
  %145 = tail call i32 @__msecs_to_jiffies(i32 noundef %144) #12
  %146 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.i2c_adapter, ptr %147, i32 0, i32 7
  store i32 %145, ptr %148, align 4
  br label %149

149:                                              ; preds = %143, %141, %137, %135, %133, %105, %55, %49, %43, %40, %36, %35, %11, %9, %3
  %150 = phi i32 [ %134, %133 ], [ %106, %105 ], [ %69, %55 ], [ 0, %49 ], [ 0, %43 ], [ 0, %40 ], [ -22, %11 ], [ -22, %9 ], [ -16, %36 ], [ -22, %135 ], [ -22, %141 ], [ -25, %3 ], [ 0, %143 ], [ 0, %137 ], [ -16, %35 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = tail call ptr @i2c_get_adapter(i32 noundef %5) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 528) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @i2c_put_adapter(ptr noundef nonnull %6) #12
  br label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 2
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 20, ptr noundef nonnull @.str.4, i32 noundef %16)
  %18 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  store ptr %6, ptr %18, align 8
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %10, ptr %19, align 8
  br label %20

20:                                               ; preds = %13, %12, %2
  %21 = phi i32 [ 0, %13 ], [ -12, %12 ], [ -19, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  tail call void @i2c_put_adapter(ptr noundef %6) #12
  tail call void @kfree(ptr noundef %4) #12
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2cdev_ioctl_rdwr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %115, label %6, !prof !20

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @i2c_transfer(ptr noundef %14, ptr noundef %2, i32 noundef %1) #12
  br label %113

16:                                               ; preds = %54, %10
  %17 = phi i32 [ %55, %54 ], [ 0, %10 ]
  %18 = getelementptr %struct.i2c_msg, ptr %2, i32 %17, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = icmp ugt i16 %19, 8192
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.i2c_msg, ptr %2, i32 %17, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %8, i32 %17
  store ptr %23, ptr %24, align 4
  %25 = load i16, ptr %18, align 4
  %26 = zext i16 %25 to i32
  %27 = tail call ptr @memdup_user(ptr noundef %23, i32 noundef %26) #12
  store ptr %27, ptr %22, align 4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %57, label %29

29:                                               ; preds = %21
  %30 = getelementptr %struct.i2c_msg, ptr %2, i32 %17, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = or i16 %31, 512
  store i16 %32, ptr %30, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1024
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %29
  %37 = and i32 %33, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load i16, ptr %18, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = zext i16 %40 to i32
  %44 = load i8, ptr %27, align 1
  %45 = icmp eq i8 %44, 0
  %46 = zext i8 %44 to i32
  %47 = add nuw nsw i32 %46, 32
  %48 = icmp ugt i32 %47, %43
  %49 = select i1 %45, i1 true, i1 %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %39, %36
  %51 = add nuw i32 %17, 1
  br label %60

52:                                               ; preds = %42
  %53 = zext i8 %44 to i16
  store i16 %53, ptr %18, align 4
  br label %54

54:                                               ; preds = %52, %29
  %55 = add nuw i32 %17, 1
  %56 = icmp eq i32 %55, %1
  br i1 %56, label %70, label %16

57:                                               ; preds = %21
  %58 = ptrtoint ptr %27 to i32
  %59 = icmp slt ptr %27, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57, %50, %16
  %61 = phi i32 [ %58, %57 ], [ -22, %50 ], [ -22, %16 ]
  %62 = phi i32 [ %17, %57 ], [ %51, %50 ], [ %17, %16 ]
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %64, %60
  %65 = phi i32 [ %68, %64 ], [ 0, %60 ]
  %66 = getelementptr %struct.i2c_msg, ptr %2, i32 %65, i32 3
  %67 = load ptr, ptr %66, align 4
  tail call void @kfree(ptr noundef %67) #12
  %68 = add nuw nsw i32 %65, 1
  %69 = icmp eq i32 %68, %62
  br i1 %69, label %113, label %64

70:                                               ; preds = %57, %54
  %71 = phi i32 [ %17, %57 ], [ %1, %54 ]
  %72 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8
  %74 = tail call i32 @i2c_transfer(ptr noundef %73, ptr noundef %2, i32 noundef %1) #12
  %75 = icmp sgt i32 %71, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %108, %70
  %77 = phi i32 [ %79, %108 ], [ %71, %70 ]
  %78 = phi i32 [ %109, %108 ], [ %74, %70 ]
  %79 = add nsw i32 %77, -1
  %80 = icmp sgt i32 %78, -1
  br i1 %80, label %81, label %108

81:                                               ; preds = %76
  %82 = getelementptr %struct.i2c_msg, ptr %2, i32 %79, i32 1
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %81
  %87 = getelementptr ptr, ptr %8, i32 %79
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.i2c_msg, ptr %2, i32 %79, i32 2
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %88, i32 %91, i32 -1090519040) #16, !srcloc !12
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = getelementptr %struct.i2c_msg, ptr %2, i32 %79, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = tail call ptr @llvm.thread.pointer() #12
  %99 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 3
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %99) #17, !srcloc !13
  %101 = and i32 %100, -13
  %102 = or i32 %101, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %103 = tail call i32 @arm_copy_to_user(ptr noundef %88, ptr noundef %97, i32 noundef %91) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  br label %104

104:                                              ; preds = %95, %86
  %105 = phi i32 [ %103, %95 ], [ %91, %86 ]
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 %78, i32 -14
  br label %108

108:                                              ; preds = %104, %81, %76
  %109 = phi i32 [ %78, %81 ], [ %78, %76 ], [ %107, %104 ]
  %110 = getelementptr %struct.i2c_msg, ptr %2, i32 %79, i32 3
  %111 = load ptr, ptr %110, align 4
  tail call void @kfree(ptr noundef %111) #12
  %112 = icmp ugt i32 %77, 1
  br i1 %112, label %76, label %113

113:                                              ; preds = %108, %70, %64, %60, %12
  %114 = phi i32 [ %61, %60 ], [ %74, %70 ], [ %15, %12 ], [ %61, %64 ], [ %109, %108 ]
  tail call void @kfree(ptr noundef nonnull %8) #12
  br label %115

115:                                              ; preds = %113, %6, %3
  %116 = phi i32 [ -12, %3 ], [ -12, %6 ], [ %114, %113 ]
  tail call void @kfree(ptr noundef %2) #12
  ret i32 %116
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2cdev_ioctl_smbus(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #9 {
  %6 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false)
  %7 = icmp ugt i32 %3, 8
  %8 = icmp ugt i8 %1, 1
  %9 = or i1 %8, %7
  br i1 %9, label %79, label %10

10:                                               ; preds = %5
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %3, 1
  %14 = icmp eq i8 %1, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %10
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = load i16, ptr %0, align 8
  %22 = tail call i32 @i2c_smbus_xfer(ptr noundef %18, i16 noundef zeroext %20, i16 noundef zeroext %21, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef null) #12
  br label %79

23:                                               ; preds = %12
  %24 = icmp eq ptr %4, null
  br i1 %24, label %79, label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %3, -1
  %27 = icmp ult i32 %26, 2
  %28 = add nsw i32 %3, -3
  %29 = icmp ult i32 %28, 2
  %30 = select i1 %29, i32 2, i32 34
  %31 = select i1 %27, i32 1, i32 %30
  br i1 %14, label %33, label %32

32:                                               ; preds = %25
  switch i32 %3, label %54 [
    i32 8, label %33
    i32 7, label %33
    i32 4, label %33
    i32 6, label %53
  ]

33:                                               ; preds = %32, %32, %32, %25
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 %31, i32 -1090519040) #16, !srcloc !18
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45, !prof !19

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #12
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #17, !srcloc !13
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %43 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef %31) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !19

45:                                               ; preds = %37, %33
  %46 = phi i32 [ %43, %37 ], [ %31, %33 ]
  %47 = sub i32 %31, %46
  %48 = getelementptr i8, ptr %6, i32 %47
  call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %46, i1 false) #12
  br label %79

49:                                               ; preds = %37
  %50 = icmp eq i32 %3, 6
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = icmp eq i8 %1, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51, %32
  store i8 32, ptr %6, align 2
  br label %54

54:                                               ; preds = %53, %51, %49, %32
  %55 = phi i32 [ 8, %53 ], [ 8, %51 ], [ %3, %49 ], [ %3, %32 ]
  %56 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = load i16, ptr %0, align 8
  %61 = call i32 @i2c_smbus_xfer(ptr noundef %57, i16 noundef zeroext %59, i16 noundef zeroext %60, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %55, ptr noundef nonnull %6) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %54
  %64 = icmp eq i8 %1, 1
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  switch i32 %55, label %78 [
    i32 7, label %66
    i32 4, label %66
  ]

66:                                               ; preds = %65, %65, %63
  %67 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 %31, i32 -1090519040) #16, !srcloc !12
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = tail call ptr @llvm.thread.pointer() #12
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %73 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %72) #17, !srcloc !13
  %74 = and i32 %73, -13
  %75 = or i32 %74, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %76 = call i32 @arm_copy_to_user(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef %31) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %65, %54
  br label %79

79:                                               ; preds = %78, %70, %66, %45, %23, %16, %5
  %80 = phi i32 [ %22, %16 ], [ %61, %78 ], [ -22, %5 ], [ -22, %23 ], [ -14, %70 ], [ -14, %45 ], [ -14, %66 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #12
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2cdev_check_mux_parents(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @i2c_adapter_type
  %11 = getelementptr i8, ptr %5, i32 -64
  %12 = select i1 %10, ptr %11, ptr null
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ null, %2 ], [ %12, %7 ]
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %16 = call i32 @device_for_each_child(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull @i2cdev_check) #12
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne ptr %14, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4
  %22 = call fastcc i32 @i2cdev_check_mux_parents(ptr noundef nonnull %14, i32 noundef %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %22, %20 ], [ %16, %13 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_check_mux_children(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @i2cdev_check_mux_children) #12
  br label %22

8:                                                ; preds = %2
  %9 = tail call ptr @i2c_verify_client(ptr noundef %0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i32 0, i32 -16
  br label %22

22:                                               ; preds = %17, %11, %8, %6
  %23 = phi i32 [ %7, %6 ], [ %21, %17 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2cdev_check(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @i2c_verify_client(ptr noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, %8
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 0, i32 -16
  br label %16

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ %15, %11 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1048575
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #12
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ @i2c_dev_list, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @i2c_dev_list
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.i2c_dev, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %17, label %7

17:                                               ; preds = %11, %7
  %18 = phi ptr [ %9, %11 ], [ null, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %19 = load i16, ptr @i2c_dev_list_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @i2c_dev_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %21 = icmp eq ptr %18, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.i2c_dev, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 12
  %26 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %25) #12
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i32 [ %26, %22 ], [ -19, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 2149000687}
!9 = !{i64 2148996511}
!10 = !{i64 2148996586, i64 2148996613, i64 2148996660, i64 2148996682, i64 2148996710, i64 2148996730}
!11 = !{i64 2149023690}
!12 = !{i64 2151583268, i64 2151583293}
!13 = !{i64 4078802}
!14 = !{i64 4078999}
!15 = !{i64 2151564278}
!16 = !{i64 2154176460, i64 2154176740, i64 2154177074, i64 2154177408}
!17 = !{!"auto-init"}
!18 = !{i64 2151582690, i64 2151582715}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
