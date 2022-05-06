; ModuleID = '/llk/IR/drivers/spi/spidev.c_pt.bc'
source_filename = "../drivers/spi/spidev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.spidev_data = type { i32, %struct.spinlock, ptr, %struct.list_head, %struct.mutex, i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.spi_ioc_transfer = type { i64, i64, i32, i32, i16, i8, i8, i8, i8, i8, i8 }

@__param_str_bufsiz = internal constant [14 x i8] c"spidev.bufsiz\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bufsiz = internal global i32 4096, align 4
@__param_bufsiz = internal constant %struct.kernel_param { ptr @__param_str_bufsiz, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.63 { ptr @bufsiz } }, section "__param", align 4
@__UNIQUE_ID_bufsiztype224 = internal constant [28 x i8] c"spidev.parmtype=bufsiz:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bufsiz225 = internal constant [63 x i8] c"spidev.parm=bufsiz:data bytes in biggest supported SPI message\00", section ".modinfo", align 1
@__initcall__kmod_spidev__227_872_spidev_init6 = internal global ptr @spidev_init, section ".initcall6.init", align 4
@spidev_spi_driver = internal global %struct.spi_driver { ptr @spidev_spi_ids, ptr @spidev_probe, ptr @spidev_remove, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spidev_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@spidev_class = internal unnamed_addr global ptr null, align 4
@__exitcall_spidev_exit = internal global ptr @spidev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [61 x i8] c"spidev.author=Andrea Paterniani, <a.paterniani@swapp-eng.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [50 x i8] c"spidev.description=User mode SPI device interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [31 x i8] c"spidev.file=drivers/spi/spidev\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [19 x i8] c"spidev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [24 x i8] c"spidev.alias=spi:spidev\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@spidev_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @spidev_read, ptr @spidev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spidev_ioctl, ptr null, ptr null, i32 0, ptr @spidev_open, ptr null, ptr @spidev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@spidev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"spidev\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@device_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_list_lock, i64 12), ptr getelementptr (i8, ptr @device_list_lock, i64 12) } }, align 4
@device_list = internal global %struct.list_head { ptr @device_list, ptr @device_list }, align 4
@spidev_spi_ids = internal constant [9 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"dh2228fv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ltc2488\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sx1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bk4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"dhcom-board\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m53cpld\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"spi-petra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"spi-authenta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@spidev_dt_ids = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,dh2228fv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lineartechnology,ltc2488\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lwn,bk4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dh,dhcom-board\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"menlo,m53cpld\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cisco,spi-petra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micron,spi-authenta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"spidev listed directly in DT is not supported\0A\00", align 1
@spidev_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"&spidev->buf_lock\00", align 1
@minors = internal global [1 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"spidev%d.%d\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_bufsiz225, ptr @__UNIQUE_ID_bufsiztype224, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_spidev_exit, ptr @__initcall__kmod_spidev__227_872_spidev_init6, ptr @__param_bufsiz, ptr @spidev_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spidev_init() #0 section ".init.text" {
  %1 = tail call i32 @__register_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @spidev_fops) #10
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @spidev_init.__key) #10
  store ptr %4, ptr @spidev_class, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef %7) #10
  %8 = load ptr, ptr @spidev_class, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %16

10:                                               ; preds = %3
  %11 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @spidev_spi_driver) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr @spidev_class, align 4
  tail call void @class_destroy(ptr noundef %14) #10
  %15 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef %15) #10
  br label %16

16:                                               ; preds = %13, %10, %6, %0
  %17 = phi i32 [ %9, %6 ], [ %1, %0 ], [ %11, %13 ], [ %11, %10 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spidev_exit() #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4)) #10
  %1 = load ptr, ptr @spidev_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  %2 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = load i32, ptr @bufsiz, align 4
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %59, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %12) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %5, i8 0, i64 96, i1 false) #10
  %15 = load ptr, ptr %14, align 4
  store ptr %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 12
  %18 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %20 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %20, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %24, ptr %21, align 4
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %6, ptr %25, align 4
  store volatile ptr %24, ptr %6, align 4
  %26 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %29 = load i16, ptr %26, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %26, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %31 = icmp eq ptr %28, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  br label %57

33:                                               ; preds = %9
  %34 = call i32 @spi_sync(ptr noundef nonnull %28, ptr noundef nonnull %6) #10
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = select i1 %35, i32 %37, i32 %34
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %38, i32 -1090519040) #11, !srcloc !13
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load ptr, ptr %14, align 4
  %46 = tail call ptr @llvm.thread.pointer() #10
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #12, !srcloc !14
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %51 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %45, i32 noundef %38) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %52

52:                                               ; preds = %44, %40
  %53 = phi i32 [ %51, %44 ], [ %38, %40 ]
  %54 = icmp eq i32 %38, %53
  %55 = sub i32 %38, %53
  %56 = select i1 %54, i32 -14, i32 %55
  br label %57

57:                                               ; preds = %52, %33, %32
  %58 = phi i32 [ %56, %52 ], [ %38, %33 ], [ -108, %32 ]
  call void @mutex_unlock(ptr noundef %12) #10
  br label %59

59:                                               ; preds = %57, %4
  %60 = phi i32 [ %58, %57 ], [ -90, %4 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = load i32, ptr @bufsiz, align 4
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %67, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp slt i32 %2, 0
  %16 = load i1, ptr @check_copy_size.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !17

19:                                               ; preds = %9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %20

20:                                               ; preds = %19, %9
  br i1 %15, label %65, label %21, !prof !17

21:                                               ; preds = %20
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #11, !srcloc !18
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !19

25:                                               ; preds = %21
  %26 = tail call ptr @llvm.thread.pointer() #10
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #12, !srcloc !14
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %31 = tail call i32 @arm_copy_from_user(ptr noundef %14, ptr noundef %1, i32 noundef %2) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %32

32:                                               ; preds = %25, %21
  %33 = phi i32 [ %31, %25 ], [ %2, %21 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !19

35:                                               ; preds = %32
  %36 = sub i32 %2, %33
  %37 = getelementptr i8, ptr %14, i32 %36
  tail call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %33, i1 false) #10
  br label %65

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %39 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %39, i8 0, i64 92, i1 false) #10
  %40 = load ptr, ptr %13, align 4
  store ptr %40, ptr %5, align 4
  %41 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 12
  %43 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %45 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %45, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %47 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %49, ptr %46, align 4
  store ptr %6, ptr %49, align 4
  %50 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %6, ptr %50, align 4
  store volatile ptr %49, ptr %6, align 4
  %51 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %51) #10
  %52 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %54 = load i16, ptr %51, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %56 = icmp eq ptr %53, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %38
  %58 = call i32 @spi_sync(ptr noundef nonnull %53, ptr noundef nonnull %6) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %57, %38
  %64 = phi i32 [ %62, %60 ], [ %58, %57 ], [ -108, %38 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  br label %65

65:                                               ; preds = %63, %35, %20
  %66 = phi i32 [ %64, %63 ], [ -14, %20 ], [ -14, %35 ]
  call void @mutex_unlock(ptr noundef %12) #10
  br label %67

67:                                               ; preds = %65, %4
  %68 = phi i32 [ %66, %65 ], [ -90, %4 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = and i32 %1, 65280
  %5 = icmp eq i32 %4, 27392
  br i1 %5, label %6, label %218

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spidev_data, ptr %8, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.spidev_data, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @get_device(ptr noundef nonnull %11) #10
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr null, ptr %11
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi ptr [ null, %6 ], [ %16, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %19 = load i16, ptr %9, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %21 = icmp eq ptr %18, null
  br i1 %21, label %218, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.spidev_data, ptr %8, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %23) #10
  switch i32 %1, label %194 [
    i32 -2147390719, label %24
    i32 -2147194107, label %35
    i32 -2147390718, label %46
    i32 -2147390717, label %59
    i32 -2147194108, label %69
    i32 1074031364, label %175
    i32 1073834755, label %157
    i32 1073834754, label %135
    i32 1073834753, label %79
    i32 1074031365, label %89
  ]

24:                                               ; preds = %22
  %25 = inttoptr i32 %2 to ptr
  %26 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 7
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i8
  %29 = tail call ptr @llvm.thread.pointer() #10
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #12, !srcloc !14
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %34 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %25, i8 %28, i32 -1090519041) #10, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %216

35:                                               ; preds = %22
  %36 = inttoptr i32 %2 to ptr
  %37 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 7
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 28671
  %40 = tail call ptr @llvm.thread.pointer() #10
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #12, !srcloc !14
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %36, i32 %39, i32 -1090519041) #10, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %216

46:                                               ; preds = %22
  %47 = inttoptr i32 %2 to ptr
  %48 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 7
  %49 = load i32, ptr %48, align 8
  %50 = trunc i32 %49 to i8
  %51 = lshr i8 %50, 3
  %52 = and i8 %51, 1
  %53 = tail call ptr @llvm.thread.pointer() #10
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #12, !srcloc !14
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %47, i8 %52, i32 -1090519041) #10, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %216

59:                                               ; preds = %22
  %60 = inttoptr i32 %2 to ptr
  %61 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 5
  %62 = load i8, ptr %61, align 1
  %63 = tail call ptr @llvm.thread.pointer() #10
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %64) #12, !srcloc !14
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %68 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %60, i8 %62, i32 -1090519041) #10, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %216

69:                                               ; preds = %22
  %70 = inttoptr i32 %2 to ptr
  %71 = getelementptr inbounds %struct.spidev_data, ptr %8, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = tail call ptr @llvm.thread.pointer() #10
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %74) #12, !srcloc !14
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %78 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %70, i32 %72, i32 -1090519041) #10, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %216

79:                                               ; preds = %22
  %80 = inttoptr i32 %2 to ptr
  %81 = tail call ptr @llvm.thread.pointer() #10
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %82) #12, !srcloc !14
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %86 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %80, i32 -1090519041) #10, !srcloc !25
  %87 = extractvalue { i32, i32 } %86, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %88 = and i32 %87, 255
  br label %98

89:                                               ; preds = %22
  %90 = inttoptr i32 %2 to ptr
  %91 = tail call ptr @llvm.thread.pointer() #10
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %93 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %92) #12, !srcloc !14
  %94 = and i32 %93, -13
  %95 = or i32 %94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %96 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %90, i32 -1090519041) #10, !srcloc !26
  %97 = extractvalue { i32, i32 } %96, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %98

98:                                               ; preds = %89, %79
  %99 = phi i32 [ %88, %79 ], [ %97, %89 ]
  %100 = phi { i32, i32 } [ %86, %79 ], [ %96, %89 ]
  %101 = extractvalue { i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %216

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 7
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %99, -28672
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %216

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.spi_controller, ptr %105, i32 0, i32 56
  %112 = load i8, ptr %111, align 8, !range !27
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.spi_controller, ptr %105, i32 0, i32 55
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 4
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i32
  %122 = getelementptr ptr, ptr %116, i32 %121
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  %125 = or i32 %99, 4
  %126 = select i1 %124, i32 %99, i32 %125
  br label %127

127:                                              ; preds = %118, %114, %110
  %128 = phi i32 [ %99, %114 ], [ %99, %110 ], [ %126, %118 ]
  %129 = and i32 %107, 36864
  %130 = and i32 %128, 65535
  %131 = or i32 %130, %129
  store i32 %131, ptr %106, align 8
  %132 = tail call i32 @spi_setup(ptr noundef nonnull %18) #10
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %216

134:                                              ; preds = %127
  store i32 %107, ptr %106, align 8
  br label %216

135:                                              ; preds = %22
  %136 = inttoptr i32 %2 to ptr
  %137 = tail call ptr @llvm.thread.pointer() #10
  %138 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %139 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %138) #12, !srcloc !14
  %140 = and i32 %139, -13
  %141 = or i32 %140, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %141) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %142 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %136, i32 -1090519041) #10, !srcloc !28
  %143 = extractvalue { i32, i32 } %142, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %216

145:                                              ; preds = %135
  %146 = extractvalue { i32, i32 } %142, 1
  %147 = and i32 %146, 255
  %148 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 7
  %149 = load i32, ptr %148, align 8
  %150 = icmp eq i32 %147, 0
  %151 = and i32 %149, -9
  %152 = select i1 %150, i32 0, i32 8
  %153 = or i32 %151, %152
  store i32 %153, ptr %148, align 8
  %154 = tail call i32 @spi_setup(ptr noundef nonnull %18) #10
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %216

156:                                              ; preds = %145
  store i32 %149, ptr %148, align 8
  br label %216

157:                                              ; preds = %22
  %158 = inttoptr i32 %2 to ptr
  %159 = tail call ptr @llvm.thread.pointer() #10
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %161 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %160) #12, !srcloc !14
  %162 = and i32 %161, -13
  %163 = or i32 %162, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %164 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %158, i32 -1090519041) #10, !srcloc !29
  %165 = extractvalue { i32, i32 } %164, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %216

167:                                              ; preds = %157
  %168 = extractvalue { i32, i32 } %164, 1
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 5
  %171 = load i8, ptr %170, align 1
  store i8 %169, ptr %170, align 1
  %172 = tail call i32 @spi_setup(ptr noundef nonnull %18) #10
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %216

174:                                              ; preds = %167
  store i8 %171, ptr %170, align 1
  br label %216

175:                                              ; preds = %22
  %176 = inttoptr i32 %2 to ptr
  %177 = tail call ptr @llvm.thread.pointer() #10
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 3
  %179 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %178) #12, !srcloc !14
  %180 = and i32 %179, -13
  %181 = or i32 %180, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %181) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %182 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %176, i32 -1090519041) #10, !srcloc !30
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %179) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %185 = icmp eq i32 %183, 0
  br i1 %185, label %186, label %216

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 3
  %188 = load i32, ptr %187, align 8
  store i32 %184, ptr %187, align 8
  %189 = tail call i32 @spi_setup(ptr noundef nonnull %18) #10
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.spidev_data, ptr %8, i32 0, i32 8
  store i32 %184, ptr %192, align 4
  br label %193

193:                                              ; preds = %191, %186
  store i32 %188, ptr %187, align 8
  br label %216

194:                                              ; preds = %22
  %195 = inttoptr i32 %2 to ptr
  %196 = and i32 %1, -1073676289
  %197 = icmp eq i32 %196, 1073769216
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = lshr i32 %1, 16
  %200 = and i32 %199, 16383
  %201 = and i32 %1, 2031616
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = lshr i32 %200, 5
  %205 = icmp ult i32 %200, 32
  br i1 %205, label %216, label %206

206:                                              ; preds = %203
  %207 = tail call ptr @memdup_user(ptr noundef %195, i32 noundef %200) #10
  %208 = icmp ugt ptr %207, inttoptr (i32 -4096 to ptr)
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %198, %194
  %210 = phi ptr [ %207, %206 ], [ inttoptr (i32 -22 to ptr), %198 ], [ inttoptr (i32 -25 to ptr), %194 ]
  %211 = ptrtoint ptr %210 to i32
  br label %216

212:                                              ; preds = %206
  %213 = icmp eq ptr %207, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %212
  %215 = tail call fastcc i32 @spidev_message(ptr noundef %8, ptr noundef nonnull %207, i32 noundef %204)
  tail call void @kfree(ptr noundef nonnull %207) #10
  br label %216

216:                                              ; preds = %214, %212, %209, %203, %193, %175, %174, %167, %157, %156, %145, %135, %134, %127, %103, %98, %69, %59, %46, %35, %24
  %217 = phi i32 [ %211, %209 ], [ %215, %214 ], [ 0, %212 ], [ %189, %193 ], [ %183, %175 ], [ %165, %157 ], [ %143, %135 ], [ %101, %98 ], [ %78, %69 ], [ %68, %59 ], [ %58, %46 ], [ %45, %35 ], [ %34, %24 ], [ -22, %103 ], [ %132, %127 ], [ %132, %134 ], [ %154, %145 ], [ %154, %156 ], [ %172, %167 ], [ %172, %174 ], [ 0, %203 ]
  tail call void @mutex_unlock(ptr noundef %23) #10
  tail call void @put_device(ptr noundef nonnull %18) #10
  br label %218

218:                                              ; preds = %216, %17, %3
  %219 = phi i32 [ %217, %216 ], [ -25, %3 ], [ -108, %17 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_open(ptr noundef %0, ptr noundef %1) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @device_list_lock) #10
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ @device_list, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @device_list
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -12
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %6, i32 -12
  %15 = getelementptr i8, ptr %6, i32 32
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, ptr @bufsiz, align 4
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #13
  store ptr %20, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18, %13
  %23 = getelementptr i8, ptr %6, i32 36
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, ptr @bufsiz, align 4
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #13
  store ptr %28, ptr %23, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %31) #10
  store ptr null, ptr %15, align 4
  br label %38

32:                                               ; preds = %26, %22
  %33 = getelementptr i8, ptr %6, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %14, ptr %36, align 8
  %37 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #10
  br label %38

38:                                               ; preds = %32, %30, %18, %4
  %39 = phi i32 [ 0, %32 ], [ -12, %30 ], [ -12, %18 ], [ -6, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @device_list_lock) #10
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spidev_data, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.spidev_data, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %8 = load i16, ptr %5, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %10 = getelementptr inbounds %struct.spidev_data, ptr %4, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = icmp eq ptr %7, null
  %16 = getelementptr inbounds %struct.spidev_data, ptr %4, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #10
  store ptr null, ptr %16, align 4
  %18 = getelementptr inbounds %struct.spidev_data, ptr %4, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #10
  store ptr null, ptr %18, align 4
  br i1 %15, label %20, label %21

20:                                               ; preds = %14
  tail call void @kfree(ptr noundef %4) #10
  br label %26

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.spi_device, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.spidev_data, ptr %4, i32 0, i32 8
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %21, %20, %2
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spidev_message(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct.spi_message, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store volatile ptr %4, ptr %4, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %7, ptr %8, align 4
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 96) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %196, label %11, !prof !17

11:                                               ; preds = %3
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %196, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %138, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.spidev_data, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.spidev_data, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.spidev_data, ptr %0, i32 0, i32 8
  br label %23

23:                                               ; preds = %130, %17
  %24 = phi ptr [ %19, %17 ], [ %53, %130 ]
  %25 = phi ptr [ %21, %17 ], [ %92, %130 ]
  %26 = phi i32 [ 0, %17 ], [ %52, %130 ]
  %27 = phi i32 [ 0, %17 ], [ %91, %130 ]
  %28 = phi i32 [ 0, %17 ], [ %37, %130 ]
  %29 = phi i32 [ %2, %17 ], [ %134, %130 ]
  %30 = phi ptr [ %1, %17 ], [ %136, %130 ]
  %31 = phi ptr [ %13, %17 ], [ %135, %130 ]
  %32 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 63
  %35 = and i32 %34, -64
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 2
  store i32 %33, ptr %36, align 4
  %37 = add i32 %33, %28
  %38 = or i32 %37, %33
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %194

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = add i32 %35, %26
  %46 = load i32, ptr @bufsiz, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %194, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 1
  store ptr %24, ptr %49, align 4
  %50 = getelementptr i8, ptr %24, i32 %35
  br label %51

51:                                               ; preds = %48, %40
  %52 = phi i32 [ %45, %48 ], [ %26, %40 ]
  %53 = phi ptr [ %50, %48 ], [ %24, %40 ]
  %54 = load i64, ptr %30, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %51
  %57 = add i32 %35, %27
  %58 = load i32, ptr @bufsiz, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %194, label %60

60:                                               ; preds = %56
  store ptr %25, ptr %31, align 4
  %61 = load i64, ptr %30, align 8
  %62 = trunc i64 %61 to i32
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %32, align 8
  %65 = icmp slt i32 %64, 0
  %66 = load i1, ptr @check_copy_size.__already_done, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %70, !prof !17

69:                                               ; preds = %60
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %70

70:                                               ; preds = %69, %60
  br i1 %65, label %194, label %71, !prof !17

71:                                               ; preds = %70
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 %64, i32 -1090519040) #11, !srcloc !18
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82, !prof !19

75:                                               ; preds = %71
  %76 = tail call ptr @llvm.thread.pointer() #10
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #12, !srcloc !14
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %81 = call i32 @arm_copy_from_user(ptr noundef %25, ptr noundef %63, i32 noundef %64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i32 [ %81, %75 ], [ %64, %71 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85, !prof !19

85:                                               ; preds = %82
  %86 = sub i32 %64, %83
  %87 = getelementptr i8, ptr %25, i32 %86
  call void @llvm.memset.p0.i32(ptr align 1 %87, i8 0, i32 %83, i1 false) #10
  br label %194

88:                                               ; preds = %82
  %89 = getelementptr i8, ptr %25, i32 %35
  br label %90

90:                                               ; preds = %88, %51
  %91 = phi i32 [ %57, %88 ], [ %27, %51 ]
  %92 = phi ptr [ %89, %88 ], [ %25, %51 ]
  %93 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 6
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  %96 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 7
  %97 = load i8, ptr %96, align 4
  %98 = select i1 %95, i8 0, i8 2
  %99 = and i8 %97, -3
  %100 = or i8 %99, %98
  store i8 %100, ptr %96, align 4
  %101 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 7
  %102 = load i8, ptr %101, align 4
  %103 = shl i8 %102, 2
  %104 = and i8 %103, 28
  %105 = and i8 %100, -29
  %106 = or i8 %104, %105
  store i8 %106, ptr %96, align 4
  %107 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 8
  %108 = load i8, ptr %107, align 1
  %109 = shl i8 %108, 5
  %110 = and i8 %106, 31
  %111 = or i8 %110, %109
  store i8 %111, ptr %96, align 4
  %112 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 5
  %113 = load i8, ptr %112, align 2
  %114 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 8
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 4
  %116 = load i16, ptr %115, align 8
  %117 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 9
  store i16 %116, ptr %117, align 2
  %118 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 9, i32 1
  store i8 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 12
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %30, i32 0, i32 9
  %123 = load i8, ptr %122, align 2
  %124 = zext i8 %123 to i16
  %125 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 11
  store i16 %124, ptr %125, align 2
  %126 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 11, i32 1
  store i8 0, ptr %126, align 2
  %127 = icmp eq i32 %120, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %90
  %129 = load i32, ptr %22, align 4
  store i32 %129, ptr %121, align 4
  br label %130

130:                                              ; preds = %128, %90
  %131 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 18
  %132 = load ptr, ptr %6, align 4
  store ptr %131, ptr %6, align 4
  store ptr %4, ptr %131, align 4
  %133 = getelementptr inbounds %struct.spi_transfer, ptr %31, i32 0, i32 18, i32 1
  store ptr %132, ptr %133, align 4
  store volatile ptr %131, ptr %132, align 4
  %134 = add i32 %29, -1
  %135 = getelementptr %struct.spi_transfer, ptr %31, i32 1
  %136 = getelementptr %struct.spi_ioc_transfer, ptr %30, i32 1
  %137 = icmp eq i32 %134, 0
  br i1 %137, label %138, label %23

138:                                              ; preds = %130, %15
  %139 = phi i32 [ 0, %15 ], [ %37, %130 ]
  %140 = getelementptr inbounds %struct.spidev_data, ptr %0, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %140) #10
  %141 = getelementptr inbounds %struct.spidev_data, ptr %0, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %143 = load i16, ptr %140, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %140, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %145 = icmp eq ptr %142, null
  br i1 %145, label %194, label %146

146:                                              ; preds = %138
  %147 = call i32 @spi_sync(ptr noundef nonnull %142, ptr noundef nonnull %4) #10
  %148 = icmp eq i32 %147, 0
  %149 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = select i1 %148, i32 %150, i32 %147
  %152 = icmp slt i32 %151, 0
  %153 = or i1 %152, %16
  %154 = select i1 %152, i32 %151, i32 %139
  br i1 %153, label %194, label %155

155:                                              ; preds = %189, %146
  %156 = phi i32 [ %190, %189 ], [ %2, %146 ]
  %157 = phi ptr [ %192, %189 ], [ %1, %146 ]
  %158 = phi ptr [ %191, %189 ], [ %13, %146 ]
  %159 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %157, i32 0, i32 1
  %160 = load i64, ptr %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %189, label %162

162:                                              ; preds = %155
  %163 = trunc i64 %160 to i32
  %164 = inttoptr i32 %163 to ptr
  %165 = getelementptr inbounds %struct.spi_transfer, ptr %158, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %157, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = icmp slt i32 %168, 0
  %170 = load i1, ptr @check_copy_size.__already_done, align 1
  %171 = xor i1 %170, true
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %174, !prof !17

173:                                              ; preds = %162
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %174

174:                                              ; preds = %173, %162
  br i1 %169, label %194, label %175, !prof !17

175:                                              ; preds = %174
  %176 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %164, i32 %168, i32 -1090519040) #11, !srcloc !13
  %177 = extractvalue { i32, i32 } %176, 0
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = tail call ptr @llvm.thread.pointer() #10
  %181 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 3
  %182 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %181) #12, !srcloc !14
  %183 = and i32 %182, -13
  %184 = or i32 %183, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %185 = call i32 @arm_copy_to_user(ptr noundef %164, ptr noundef %166, i32 noundef %168) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  br label %186

186:                                              ; preds = %179, %175
  %187 = phi i32 [ %185, %179 ], [ %168, %175 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186, %155
  %190 = add i32 %156, -1
  %191 = getelementptr %struct.spi_transfer, ptr %158, i32 1
  %192 = getelementptr %struct.spi_ioc_transfer, ptr %157, i32 1
  %193 = icmp eq i32 %190, 0
  br i1 %193, label %194, label %155

194:                                              ; preds = %189, %186, %174, %146, %138, %85, %70, %56, %44, %23
  %195 = phi i32 [ %154, %146 ], [ -14, %85 ], [ -108, %138 ], [ -14, %186 ], [ %139, %189 ], [ -14, %174 ], [ -14, %70 ], [ -90, %23 ], [ -90, %44 ], [ -90, %56 ]
  call void @kfree(ptr noundef nonnull %13) #10
  br label %196

196:                                              ; preds = %194, %11, %3
  %197 = phi i32 [ %195, %194 ], [ -12, %11 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  ret i32 %197
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %3, ptr noundef nonnull @.str.1) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #14
  br label %47

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 56) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 2
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef nonnull @spidev_probe.__key) #10
  %17 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 3
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 8
  tail call void @mutex_lock(ptr noundef nonnull @device_list_lock) #10
  %19 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @minors, i32 noundef 32) #10
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = or i32 %19, 160432128
  store i32 %22, ptr %11, align 8
  %23 = load ptr, ptr @spidev_class, align 4
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.spi_controller, ptr %25, i32 0, i32 2
  %27 = load i16, ptr %26, align 8
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %23, ptr noundef %0, i32 noundef %22, ptr noundef nonnull %11, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %31) #10
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %32 to i32
  br i1 %33, label %42, label %35

35:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef %19, ptr noundef nonnull @minors) #10
  %36 = load ptr, ptr @device_list, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %17, ptr %37, align 4
  store ptr %36, ptr %17, align 4
  store ptr @device_list, ptr %18, align 8
  store volatile ptr %17, ptr @device_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #10
  %38 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 8
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %11, ptr %41, align 8
  br label %47

42:                                               ; preds = %21, %13
  %43 = phi i32 [ -19, %13 ], [ %34, %21 ]
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #10
  %44 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.spidev_data, ptr %11, i32 0, i32 8
  store i32 %45, ptr %46, align 4
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %47

47:                                               ; preds = %42, %35, %9, %8
  %48 = phi i32 [ -22, %8 ], [ -12, %9 ], [ %43, %42 ], [ 0, %35 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spidev_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @device_list_lock) #10
  %4 = getelementptr inbounds %struct.spidev_data, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.spidev_data, ptr %3, i32 0, i32 2
  store ptr null, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %6 = load i16, ptr %4, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %8 = getelementptr inbounds %struct.spidev_data, ptr %3, i32 0, i32 3
  %9 = getelementptr inbounds %struct.spidev_data, ptr %3, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = load ptr, ptr @spidev_class, align 4
  %14 = load i32, ptr %3, align 4
  tail call void @device_destroy(ptr noundef %13, i32 noundef %14) #10
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 1048575
  tail call void @_clear_bit(i32 noundef %16, ptr noundef nonnull @minors) #10
  %17 = getelementptr inbounds %struct.spidev_data, ptr %3, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @kfree(ptr noundef %3) #10
  br label %21

21:                                               ; preds = %20, %1
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 2148946895}
!9 = !{i64 2148942719}
!10 = !{i64 2148942794, i64 2148942821, i64 2148942868, i64 2148942890, i64 2148942918, i64 2148942938}
!11 = !{i64 480777}
!12 = !{i64 2148971039}
!13 = !{i64 2151255034, i64 2151255059}
!14 = !{i64 3750568}
!15 = !{i64 3750765}
!16 = !{i64 2151236044}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2151254456, i64 2151254481}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2153455374, i64 2153455654, i64 2153455988, i64 2153456322}
!21 = !{i64 2153469956, i64 2153470236, i64 2153470570, i64 2153470904}
!22 = !{i64 2153475396, i64 2153475676, i64 2153476010, i64 2153476344}
!23 = !{i64 2153484332, i64 2153484612, i64 2153484946, i64 2153485280}
!24 = !{i64 2153496907, i64 2153497187, i64 2153497521, i64 2153497855}
!25 = !{i64 2153505136, i64 2153505416, i64 2153505750, i64 2153506084}
!26 = !{i64 2153522226, i64 2153522506, i64 2153522840, i64 2153523174}
!27 = !{i8 0, i8 2}
!28 = !{i64 2153537072, i64 2153537352, i64 2153537686, i64 2153538020}
!29 = !{i64 2153550448, i64 2153550728, i64 2153551062, i64 2153551396}
!30 = !{i64 2153568824, i64 2153569104, i64 2153569438, i64 2153569772}
