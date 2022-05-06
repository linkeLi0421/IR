; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_spi.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.cros_ec_spi = type { ptr, i64, i32, i32, ptr }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.cros_ec_xfer_work_params = type { %struct.kthread_work, ptr, ptr, ptr, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_host_response = type { i8, i8, i16, i16, i16 }

@cros_ec_spi_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cros_ec_spi_id = internal constant [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cros-ec-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@__UNIQUE_ID_license234 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [59 x i8] c"description=SPI interface for ChromeOS Embedded Controller\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@cros_ec_driver_spi = internal global %struct.spi_driver { ptr @cros_ec_spi_id, ptr @cros_ec_spi_probe, ptr @cros_ec_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_spi_pm_ops, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [12 x i8] c"cros-ec-spi\00", align 1
@cros_ec_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_spi_suspend, ptr @cros_ec_spi_resume, ptr @cros_ec_spi_suspend, ptr @cros_ec_spi_resume, ptr @cros_ec_spi_suspend, ptr @cros_ec_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot register EC\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"google,cros-ec-spi-pre-delay\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"google,cros-ec-spi-msg-delay\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"spi transfer failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"bad packet checksum, expected %02x, got %02x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [30 x i8] c"EC failed to respond in time\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"cs-deassert spi transfer failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"bad packet checksum, calculated %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"cros_ec_spi_high_pri\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Can't create cros_ec high pri worker: %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license234], section "llvm.metadata"

@__mod_of__cros_ec_spi_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cros_ec_spi_of_match
@__mod_spi__cros_ec_spi_id_device_table = dso_local alias [2 x %struct.spi_device_id], ptr @cros_ec_spi_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cros_ec_driver_spi) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cros_ec_driver_spi, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 6
  store i8 1, ptr %3, align 2
  %4 = tail call i32 @spi_setup(ptr noundef %0) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %6
  store ptr %0, ptr %7, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 184, i32 noundef 3520) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr inbounds %struct.cros_ec_spi, ptr %7, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, ptr %2, align 4
  %25 = getelementptr inbounds %struct.cros_ec_spi, ptr %7, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %10, ptr %27, align 8
  %28 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 9
  store ptr %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 10
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 17
  store ptr @cros_ec_cmd_xfer_spi, ptr %33, align 8
  %34 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 18
  store ptr @cros_ec_pkt_xfer_spi, ptr %34, align 4
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi ptr [ %39, %38 ], [ %36, %26 ]
  store ptr %41, ptr %10, align 8
  %42 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 13
  store i32 52, ptr %42, align 4
  %43 = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 14
  store i32 8, ptr %43, align 8
  %44 = call i64 @ktime_get() #9
  %45 = getelementptr inbounds %struct.cros_ec_spi, ptr %7, i32 0, i32 1
  store i64 %44, ptr %45, align 8
  %46 = call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.13) #9
  %47 = getelementptr inbounds %struct.cros_ec_spi, ptr %7, i32 0, i32 4
  store ptr %46, ptr %47, align 8
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %59, label %49

49:                                               ; preds = %40
  %50 = call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @cros_ec_spi_high_pri_release, ptr noundef %46) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @kthread_destroy_worker(ptr noundef %46) #9
  br label %64

53:                                               ; preds = %49
  %54 = load ptr, ptr %47, align 8
  %55 = getelementptr inbounds %struct.kthread_worker, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  call void @sched_set_fifo(ptr noundef %56) #9
  %57 = call i32 @cros_ec_register(ptr noundef nonnull %10) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %61

59:                                               ; preds = %40
  %60 = ptrtoint ptr %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %60) #10
  br label %64

61:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %64

62:                                               ; preds = %53
  %63 = call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext true) #9
  br label %64

64:                                               ; preds = %62, %61, %59, %52, %9, %6, %1
  %65 = phi i32 [ %57, %61 ], [ 0, %62 ], [ %4, %1 ], [ -12, %6 ], [ -12, %9 ], [ %60, %59 ], [ %50, %52 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cros_ec_unregister(ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_cmd_xfer_spi(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.cros_ec_xfer_work_params, align 4
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  store ptr %3, ptr %3, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kthread_work, ptr %3, i32 0, i32 1
  store ptr @cros_ec_xfer_high_pri_work, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kthread_work, ptr %3, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.kthread_work, ptr %3, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 1
  store ptr @do_cros_ec_cmd_xfer_spi, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 2
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 3
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_spi, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = call zeroext i1 @kthread_queue_work(ptr noundef %15, ptr noundef nonnull %3) #9
  call void @kthread_flush_work(ptr noundef nonnull %3) #9
  %17 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_pkt_xfer_spi(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.cros_ec_xfer_work_params, align 4
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  store ptr %3, ptr %3, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kthread_work, ptr %3, i32 0, i32 1
  store ptr @cros_ec_xfer_high_pri_work, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kthread_work, ptr %3, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.kthread_work, ptr %3, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 1
  store ptr @do_cros_ec_pkt_xfer_spi, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 2
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 3
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %3, i32 0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_spi, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = call zeroext i1 @kthread_queue_work(ptr noundef %15, ptr noundef nonnull %3) #9
  call void @kthread_flush_work(ptr noundef nonnull %3) #9
  %17 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_cros_ec_cmd_xfer_spi(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #9
  %13 = tail call i32 @cros_ec_prepare_tx(ptr noundef %0, ptr noundef %1) #9
  %14 = tail call i64 @ktime_get() #9
  %15 = getelementptr inbounds %struct.cros_ec_spi, ptr %12, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = sub i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = icmp ult i32 %18, 200000
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = sub nuw nsw i32 200999, %18
  %22 = udiv i32 %21, 1000
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #9
  br label %24

24:                                               ; preds = %20, %2
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %434, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds %struct.spi_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @spi_bus_lock(ptr noundef %30) #9
  %32 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  %34 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %34, i8 0, i32 84, i1 false)
  %35 = load ptr, ptr %33, align 8
  store ptr %35, ptr %9, align 4
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 1
  store ptr %25, ptr %36, align 4
  %37 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 2
  store i32 %13, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 7
  store i8 2, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %39, i8 0, i32 40, i1 false) #9
  store volatile ptr %10, ptr %10, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18
  store ptr %43, ptr %40, align 4
  store ptr %10, ptr %43, align 4
  %44 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18, i32 1
  store ptr %10, ptr %44, align 4
  store volatile ptr %43, ptr %10, align 4
  %45 = load ptr, ptr %12, align 8
  %46 = call i32 @spi_sync_locked(ptr noundef %45, ptr noundef nonnull %10) #9
  switch i32 %46, label %351 [
    i32 0, label %47
    i32 -11, label %353
  ]

47:                                               ; preds = %27
  %48 = icmp sgt i32 %13, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %53, %47
  %50 = phi i32 [ %54, %53 ], [ 0, %47 ]
  %51 = getelementptr i8, ptr %25, i32 %50
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %53 [
    i8 -4, label %353
    i8 -5, label %353
    i8 -19, label %353
  ]

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %50, 1
  %55 = icmp eq i32 %54, %13
  br i1 %55, label %56, label %49

56:                                               ; preds = %53, %47
  %57 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 4
  %60 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %63, label %64, !prof !9

63:                                               ; preds = %56
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #9, !srcloc !10
  unreachable

64:                                               ; preds = %56
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, 20
  %67 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  %68 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 7
  %69 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %70 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %71 = getelementptr inbounds i8, ptr %8, i32 8
  %72 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %73 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10
  %74 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10, i32 1
  %75 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  %76 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  %77 = load ptr, ptr %67, align 4
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #9
  br label %81

80:                                               ; preds = %221
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

81:                                               ; preds = %221, %64
  %82 = phi ptr [ %79, %64 ], [ %224, %221 ]
  %83 = phi i32 [ %78, %64 ], [ %223, %221 ]
  %84 = phi ptr [ %77, %64 ], [ %91, %221 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %7, i8 0, i32 96, i1 false) #9
  store i8 2, ptr %68, align 4
  store ptr %84, ptr %69, align 4
  store i32 32, ptr %70, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %71, i8 0, i32 40, i1 false) #9
  store volatile ptr %8, ptr %8, align 4
  store volatile ptr %73, ptr %73, align 4
  store ptr %73, ptr %74, align 4
  store ptr %75, ptr %72, align 4
  store ptr %8, ptr %75, align 4
  store ptr %8, ptr %76, align 4
  store volatile ptr %75, ptr %8, align 4
  %85 = load ptr, ptr %82, align 8
  %86 = call i32 @spi_sync_locked(ptr noundef %85, ptr noundef nonnull %8) #9
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.5, i32 noundef %86) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #9
  br label %353

90:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #9
  %91 = load ptr, ptr %67, align 4
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, -20
  br i1 %93, label %290, label %94

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %91, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, -20
  br i1 %97, label %288, label %98

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %91, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, -20
  br i1 %101, label %286, label %102

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %91, i32 3
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, -20
  br i1 %105, label %284, label %106

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %91, i32 4
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, -20
  br i1 %109, label %282, label %110

110:                                              ; preds = %106
  %111 = getelementptr i8, ptr %91, i32 5
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, -20
  br i1 %113, label %280, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %91, i32 6
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, -20
  br i1 %117, label %278, label %118

118:                                              ; preds = %114
  %119 = getelementptr i8, ptr %91, i32 7
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, -20
  br i1 %121, label %276, label %122

122:                                              ; preds = %118
  %123 = getelementptr i8, ptr %91, i32 8
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, -20
  br i1 %125, label %274, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %91, i32 9
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, -20
  br i1 %129, label %272, label %130

130:                                              ; preds = %126
  %131 = getelementptr i8, ptr %91, i32 10
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, -20
  br i1 %133, label %270, label %134

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %91, i32 11
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, -20
  br i1 %137, label %268, label %138

138:                                              ; preds = %134
  %139 = getelementptr i8, ptr %91, i32 12
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, -20
  br i1 %141, label %266, label %142

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %91, i32 13
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, -20
  br i1 %145, label %264, label %146

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %91, i32 14
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, -20
  br i1 %149, label %262, label %150

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %91, i32 15
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, -20
  br i1 %153, label %260, label %154

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %91, i32 16
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, -20
  br i1 %157, label %258, label %158

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %91, i32 17
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, -20
  br i1 %161, label %256, label %162

162:                                              ; preds = %158
  %163 = getelementptr i8, ptr %91, i32 18
  %164 = load i8, ptr %163, align 1
  %165 = icmp eq i8 %164, -20
  br i1 %165, label %254, label %166

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %91, i32 19
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, -20
  br i1 %169, label %252, label %170

170:                                              ; preds = %166
  %171 = getelementptr i8, ptr %91, i32 20
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, -20
  br i1 %173, label %250, label %174

174:                                              ; preds = %170
  %175 = getelementptr i8, ptr %91, i32 21
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, -20
  br i1 %177, label %248, label %178

178:                                              ; preds = %174
  %179 = getelementptr i8, ptr %91, i32 22
  %180 = load i8, ptr %179, align 1
  %181 = icmp eq i8 %180, -20
  br i1 %181, label %246, label %182

182:                                              ; preds = %178
  %183 = getelementptr i8, ptr %91, i32 23
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, -20
  br i1 %185, label %244, label %186

186:                                              ; preds = %182
  %187 = getelementptr i8, ptr %91, i32 24
  %188 = load i8, ptr %187, align 1
  %189 = icmp eq i8 %188, -20
  br i1 %189, label %242, label %190

190:                                              ; preds = %186
  %191 = getelementptr i8, ptr %91, i32 25
  %192 = load i8, ptr %191, align 1
  %193 = icmp eq i8 %192, -20
  br i1 %193, label %240, label %194

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %91, i32 26
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, -20
  br i1 %197, label %238, label %198

198:                                              ; preds = %194
  %199 = getelementptr i8, ptr %91, i32 27
  %200 = load i8, ptr %199, align 1
  %201 = icmp eq i8 %200, -20
  br i1 %201, label %236, label %202

202:                                              ; preds = %198
  %203 = getelementptr i8, ptr %91, i32 28
  %204 = load i8, ptr %203, align 1
  %205 = icmp eq i8 %204, -20
  br i1 %205, label %234, label %206

206:                                              ; preds = %202
  %207 = getelementptr i8, ptr %91, i32 29
  %208 = load i8, ptr %207, align 1
  %209 = icmp eq i8 %208, -20
  br i1 %209, label %232, label %210

210:                                              ; preds = %206
  %211 = getelementptr i8, ptr %91, i32 30
  %212 = load i8, ptr %211, align 1
  %213 = icmp eq i8 %212, -20
  br i1 %213, label %230, label %214

214:                                              ; preds = %210
  %215 = getelementptr i8, ptr %91, i32 31
  %216 = load i8, ptr %215, align 1
  %217 = icmp eq i8 %216, -20
  br i1 %217, label %228, label %218

218:                                              ; preds = %214
  %219 = sub i32 %66, %83
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = load i32, ptr %60, align 4
  %223 = load volatile i32, ptr @jiffies, align 64
  %224 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #9
  %225 = icmp slt i32 %222, 32
  br i1 %225, label %80, label %81, !prof !9

226:                                              ; preds = %218
  %227 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %227, ptr noundef nonnull @.str.9) #10
  br label %353

228:                                              ; preds = %214
  %229 = getelementptr i8, ptr %91, i32 31
  br label %290

230:                                              ; preds = %210
  %231 = getelementptr i8, ptr %91, i32 30
  br label %290

232:                                              ; preds = %206
  %233 = getelementptr i8, ptr %91, i32 29
  br label %290

234:                                              ; preds = %202
  %235 = getelementptr i8, ptr %91, i32 28
  br label %290

236:                                              ; preds = %198
  %237 = getelementptr i8, ptr %91, i32 27
  br label %290

238:                                              ; preds = %194
  %239 = getelementptr i8, ptr %91, i32 26
  br label %290

240:                                              ; preds = %190
  %241 = getelementptr i8, ptr %91, i32 25
  br label %290

242:                                              ; preds = %186
  %243 = getelementptr i8, ptr %91, i32 24
  br label %290

244:                                              ; preds = %182
  %245 = getelementptr i8, ptr %91, i32 23
  br label %290

246:                                              ; preds = %178
  %247 = getelementptr i8, ptr %91, i32 22
  br label %290

248:                                              ; preds = %174
  %249 = getelementptr i8, ptr %91, i32 21
  br label %290

250:                                              ; preds = %170
  %251 = getelementptr i8, ptr %91, i32 20
  br label %290

252:                                              ; preds = %166
  %253 = getelementptr i8, ptr %91, i32 19
  br label %290

254:                                              ; preds = %162
  %255 = getelementptr i8, ptr %91, i32 18
  br label %290

256:                                              ; preds = %158
  %257 = getelementptr i8, ptr %91, i32 17
  br label %290

258:                                              ; preds = %154
  %259 = getelementptr i8, ptr %91, i32 16
  br label %290

260:                                              ; preds = %150
  %261 = getelementptr i8, ptr %91, i32 15
  br label %290

262:                                              ; preds = %146
  %263 = getelementptr i8, ptr %91, i32 14
  br label %290

264:                                              ; preds = %142
  %265 = getelementptr i8, ptr %91, i32 13
  br label %290

266:                                              ; preds = %138
  %267 = getelementptr i8, ptr %91, i32 12
  br label %290

268:                                              ; preds = %134
  %269 = getelementptr i8, ptr %91, i32 11
  br label %290

270:                                              ; preds = %130
  %271 = getelementptr i8, ptr %91, i32 10
  br label %290

272:                                              ; preds = %126
  %273 = getelementptr i8, ptr %91, i32 9
  br label %290

274:                                              ; preds = %122
  %275 = getelementptr i8, ptr %91, i32 8
  br label %290

276:                                              ; preds = %118
  %277 = getelementptr i8, ptr %91, i32 7
  br label %290

278:                                              ; preds = %114
  %279 = getelementptr i8, ptr %91, i32 6
  br label %290

280:                                              ; preds = %110
  %281 = getelementptr i8, ptr %91, i32 5
  br label %290

282:                                              ; preds = %106
  %283 = getelementptr i8, ptr %91, i32 4
  br label %290

284:                                              ; preds = %102
  %285 = getelementptr i8, ptr %91, i32 3
  br label %290

286:                                              ; preds = %98
  %287 = getelementptr i8, ptr %91, i32 2
  br label %290

288:                                              ; preds = %94
  %289 = getelementptr i8, ptr %91, i32 1
  br label %290

290:                                              ; preds = %288, %286, %284, %282, %280, %278, %276, %274, %272, %270, %268, %266, %264, %262, %260, %258, %256, %254, %252, %250, %248, %246, %244, %242, %240, %238, %236, %234, %232, %230, %228, %90
  %291 = phi ptr [ %229, %228 ], [ %231, %230 ], [ %233, %232 ], [ %235, %234 ], [ %237, %236 ], [ %239, %238 ], [ %241, %240 ], [ %243, %242 ], [ %245, %244 ], [ %247, %246 ], [ %249, %248 ], [ %251, %250 ], [ %253, %252 ], [ %255, %254 ], [ %257, %256 ], [ %259, %258 ], [ %261, %260 ], [ %263, %262 ], [ %265, %264 ], [ %267, %266 ], [ %269, %268 ], [ %271, %270 ], [ %273, %272 ], [ %275, %274 ], [ %277, %276 ], [ %279, %278 ], [ %281, %280 ], [ %283, %282 ], [ %285, %284 ], [ %287, %286 ], [ %289, %288 ], [ %91, %90 ]
  %292 = getelementptr i8, ptr %91, i32 32
  %293 = getelementptr i8, ptr %291, i32 1
  %294 = ptrtoint ptr %292 to i32
  %295 = ptrtoint ptr %293 to i32
  %296 = sub i32 %294, %295
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %301, label %298, !prof !9

298:                                              ; preds = %290
  %299 = load i32, ptr %60, align 4
  %300 = icmp sgt i32 %296, %299
  br i1 %300, label %301, label %302, !prof !9

301:                                              ; preds = %298, %290
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

302:                                              ; preds = %298
  %303 = call i32 @llvm.smin.i32(i32 %296, i32 %59) #9
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %91, ptr align 1 %293, i32 %303, i1 false) #9
  %304 = sub i32 %59, %303
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %353

306:                                              ; preds = %302
  %307 = load ptr, ptr %67, align 4
  %308 = getelementptr i8, ptr %307, i32 %303
  %309 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 7
  %310 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 1
  %311 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  %312 = getelementptr inbounds i8, ptr %6, i32 8
  %313 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %314 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  %315 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  %316 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  %317 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  %318 = call i32 @llvm.smin.i32(i32 %304, i32 256) #9
  %319 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  %320 = ptrtoint ptr %308 to i32
  %321 = ptrtoint ptr %307 to i32
  %322 = sub i32 %318, %321
  %323 = add i32 %322, %320
  %324 = load i32, ptr %60, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %327, !prof !9

326:                                              ; preds = %340, %306
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

327:                                              ; preds = %340, %306
  %328 = phi ptr [ %344, %340 ], [ %319, %306 ]
  %329 = phi i32 [ %343, %340 ], [ %318, %306 ]
  %330 = phi ptr [ %341, %340 ], [ %308, %306 ]
  %331 = phi i32 [ %338, %340 ], [ %304, %306 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %5, i8 0, i32 96, i1 false) #9
  store i8 2, ptr %309, align 4
  store ptr %330, ptr %310, align 4
  store i32 %329, ptr %311, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %312, i8 0, i32 40, i1 false) #9
  store volatile ptr %6, ptr %6, align 4
  store volatile ptr %314, ptr %314, align 4
  store ptr %314, ptr %315, align 4
  store ptr %316, ptr %313, align 4
  store ptr %6, ptr %316, align 4
  store ptr %6, ptr %317, align 4
  store volatile ptr %316, ptr %6, align 4
  %332 = load ptr, ptr %328, align 8
  %333 = call i32 @spi_sync_locked(ptr noundef %332, ptr noundef nonnull %6) #9
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %327
  %336 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull @.str.5, i32 noundef %333) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #9
  br label %353

337:                                              ; preds = %327
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #9
  %338 = sub nsw i32 %331, %329
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %337
  %341 = getelementptr i8, ptr %330, i32 %329
  %342 = load ptr, ptr %67, align 4
  %343 = call i32 @llvm.smin.i32(i32 %338, i32 256) #9
  %344 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  %345 = ptrtoint ptr %341 to i32
  %346 = ptrtoint ptr %342 to i32
  %347 = sub i32 %343, %346
  %348 = add i32 %347, %345
  %349 = load i32, ptr %60, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %326, label %327, !prof !9

351:                                              ; preds = %27
  %352 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.5, i32 noundef %46) #10
  br label %353

353:                                              ; preds = %351, %337, %335, %302, %226, %88, %49, %49, %49, %27
  %354 = phi i32 [ %46, %351 ], [ %333, %335 ], [ %86, %88 ], [ -110, %226 ], [ 0, %302 ], [ %46, %27 ], [ 0, %337 ], [ -11, %49 ], [ -11, %49 ], [ -11, %49 ]
  %355 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #9
  %356 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %356, i8 0, i32 40, i1 false) #9
  store volatile ptr %3, ptr %3, align 4
  %357 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %358 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %358, ptr %358, align 4
  %359 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %358, ptr %359, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i32 96, i1 false) #9
  %360 = getelementptr inbounds %struct.cros_ec_spi, ptr %355, i32 0, i32 3
  %361 = load i32, ptr %360, align 4
  %362 = trunc i32 %361 to i16
  %363 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 9
  store i16 %362, ptr %363, align 2
  %364 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %364, ptr %357, align 4
  store ptr %3, ptr %364, align 4
  %365 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %365, align 4
  store volatile ptr %364, ptr %3, align 4
  %366 = load ptr, ptr %355, align 8
  %367 = call i32 @spi_sync_locked(ptr noundef %366, ptr noundef nonnull %3) #9
  %368 = call i64 @ktime_get() #9
  %369 = getelementptr inbounds %struct.cros_ec_spi, ptr %355, i32 0, i32 1
  store i64 %368, ptr %369, align 8
  %370 = icmp slt i32 %367, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %353
  %372 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %372, ptr noundef nonnull @.str.11, i32 noundef %367) #10
  br label %373

373:                                              ; preds = %371, %353
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  %374 = load ptr, ptr %12, align 8
  %375 = getelementptr inbounds %struct.spi_device, ptr %374, i32 0, i32 2
  %376 = load ptr, ptr %375, align 4
  %377 = call i32 @spi_bus_unlock(ptr noundef %376) #9
  %378 = icmp eq i32 %354, 0
  %379 = select i1 %378, i32 %367, i32 %354
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %428, label %381

381:                                              ; preds = %373
  %382 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  %383 = load ptr, ptr %382, align 4
  %384 = load i8, ptr %383, align 1
  %385 = zext i8 %384 to i32
  %386 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  store i32 %385, ptr %386, align 4
  %387 = call i32 @cros_ec_check_result(ptr noundef %0, ptr noundef %1) #9
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %428

389:                                              ; preds = %381
  %390 = getelementptr i8, ptr %383, i32 1
  %391 = load i8, ptr %390, align 1
  %392 = zext i8 %391 to i32
  %393 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %394 = load i32, ptr %393, align 4
  %395 = icmp ult i32 %394, %392
  br i1 %395, label %396, label %398

396:                                              ; preds = %389
  %397 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %397, ptr noundef nonnull @.str.6, i32 noundef %392, i32 noundef %394) #10
  br label %428

398:                                              ; preds = %389
  %399 = load i8, ptr %383, align 1
  %400 = zext i8 %399 to i32
  %401 = add nuw nsw i32 %400, %392
  %402 = icmp eq i8 %391, 0
  br i1 %402, label %418, label %403

403:                                              ; preds = %398
  %404 = icmp eq i32 %394, 0
  br label %405

405:                                              ; preds = %415, %403
  %406 = phi i32 [ %401, %403 ], [ %412, %415 ]
  %407 = phi i32 [ 0, %403 ], [ %416, %415 ]
  %408 = add nuw nsw i32 %407, 2
  %409 = getelementptr i8, ptr %383, i32 %408
  %410 = load i8, ptr %409, align 1
  %411 = zext i8 %410 to i32
  %412 = add i32 %406, %411
  br i1 %404, label %415, label %413

413:                                              ; preds = %405
  %414 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %407
  store i8 %410, ptr %414, align 1
  br label %415

415:                                              ; preds = %413, %405
  %416 = add nuw nsw i32 %407, 1
  %417 = icmp eq i32 %416, %392
  br i1 %417, label %418, label %405

418:                                              ; preds = %415, %398
  %419 = phi i32 [ %401, %398 ], [ %412, %415 ]
  %420 = and i32 %419, 255
  %421 = add nuw nsw i32 %392, 2
  %422 = getelementptr i8, ptr %383, i32 %421
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %420, %424
  br i1 %425, label %428, label %426

426:                                              ; preds = %418
  %427 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %427, ptr noundef nonnull @.str.8, i32 noundef %420, i32 noundef %424) #10
  br label %428

428:                                              ; preds = %426, %418, %396, %381, %373
  %429 = phi i32 [ %379, %373 ], [ %387, %381 ], [ -28, %396 ], [ -74, %426 ], [ %392, %418 ]
  call void @kfree(ptr noundef nonnull %25) #9
  %430 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %431 = load i32, ptr %430, align 4
  %432 = icmp eq i32 %431, 210
  br i1 %432, label %433, label %434

433:                                              ; preds = %428
  call void @msleep(i32 noundef 50) #9
  br label %434

434:                                              ; preds = %433, %428, %24
  %435 = phi i32 [ -12, %24 ], [ %429, %433 ], [ %429, %428 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #9
  ret i32 %435
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cros_ec_xfer_high_pri_work(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %3(ptr noundef %5, ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %0, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_prepare_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_check_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_cros_ec_pkt_xfer_spi(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca %struct.spi_transfer, align 4
  %12 = alloca %struct.spi_transfer, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %12, i8 0, i32 96, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #9
  %16 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 0, ptr %16, align 4, !annotation !8
  %17 = tail call i32 @cros_ec_prepare_tx(ptr noundef %0, ptr noundef %1) #9
  %18 = tail call i64 @ktime_get() #9
  %19 = getelementptr inbounds %struct.cros_ec_spi, ptr %15, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = sub i64 %18, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp ult i32 %22, 200000
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = sub nuw nsw i32 200999, %22
  %26 = udiv i32 %25, 1000
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #9
  br label %28

28:                                               ; preds = %24, %2
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %502, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %15, align 8
  %33 = getelementptr inbounds %struct.spi_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @spi_bus_lock(ptr noundef %34) #9
  %36 = getelementptr inbounds i8, ptr %13, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %36, i8 0, i32 40, i1 false) #9
  store volatile ptr %13, ptr %13, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %38 = getelementptr inbounds %struct.spi_message, ptr %13, i32 0, i32 10
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_message, ptr %13, i32 0, i32 10, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.cros_ec_spi, ptr %15, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %12, i8 0, i32 96, i1 false)
  %44 = load i32, ptr %40, align 8
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 9
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 18
  store ptr %13, ptr %47, align 4
  %48 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 18, i32 1
  store ptr %13, ptr %48, align 4
  store volatile ptr %47, ptr %13, align 4
  br label %49

49:                                               ; preds = %43, %31
  %50 = phi ptr [ %47, %43 ], [ %13, %31 ]
  %51 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %51, i8 0, i32 84, i1 false)
  %52 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %11, align 4
  %54 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 1
  store ptr %29, ptr %54, align 4
  %55 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 2
  store i32 %17, ptr %55, align 4
  %56 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 7
  store i8 2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18
  store ptr %57, ptr %37, align 4
  store ptr %13, ptr %57, align 4
  %58 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18, i32 1
  store ptr %50, ptr %58, align 4
  store volatile ptr %57, ptr %50, align 4
  %59 = load ptr, ptr %15, align 8
  %60 = call i32 @spi_sync_locked(ptr noundef %59, ptr noundef nonnull %13) #9
  switch i32 %60, label %406 [
    i32 0, label %61
    i32 -11, label %409
  ]

61:                                               ; preds = %49
  %62 = icmp sgt i32 %17, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %67, %61
  %64 = phi i32 [ %68, %67 ], [ 0, %61 ]
  %65 = getelementptr i8, ptr %29, i32 %64
  %66 = load i8, ptr %65, align 1
  switch i8 %66, label %67 [
    i8 -4, label %409
    i8 -5, label %409
    i8 -19, label %409
  ]

67:                                               ; preds = %63
  %68 = add nuw nsw i32 %64, 1
  %69 = icmp eq i32 %68, %17
  br i1 %69, label %70, label %63

70:                                               ; preds = %67, %61
  %71 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 8
  %74 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %75, 32
  br i1 %76, label %77, label %78, !prof !9

77:                                               ; preds = %70
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

78:                                               ; preds = %70
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = add i32 %79, 20
  %81 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  %82 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 7
  %83 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 1
  %84 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 2
  %85 = getelementptr inbounds i8, ptr %10, i32 8
  %86 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %87 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10
  %88 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10, i32 1
  %89 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18
  %90 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18, i32 1
  %91 = load ptr, ptr %81, align 4
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #9
  br label %95

94:                                               ; preds = %236
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

95:                                               ; preds = %236, %78
  %96 = phi ptr [ %93, %78 ], [ %239, %236 ]
  %97 = phi i32 [ %92, %78 ], [ %238, %236 ]
  %98 = phi ptr [ %91, %78 ], [ %106, %236 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %9, i8 0, i32 96, i1 false) #9
  store i8 2, ptr %82, align 4
  store ptr %98, ptr %83, align 4
  store i32 32, ptr %84, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %85, i8 0, i32 40, i1 false) #9
  store volatile ptr %10, ptr %10, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %88, align 4
  store ptr %89, ptr %86, align 4
  store ptr %10, ptr %89, align 4
  store ptr %10, ptr %90, align 4
  store volatile ptr %89, ptr %10, align 4
  %99 = load ptr, ptr %96, align 8
  %100 = call i32 @spi_sync_locked(ptr noundef %99, ptr noundef nonnull %10) #9
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.5, i32 noundef %100) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #9
  br label %409

105:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #9
  %106 = load ptr, ptr %81, align 4
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, -20
  br i1 %108, label %306, label %109

109:                                              ; preds = %105
  %110 = getelementptr i8, ptr %106, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, -20
  br i1 %112, label %304, label %113

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %106, i32 2
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %115, -20
  br i1 %116, label %302, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %106, i32 3
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, -20
  br i1 %120, label %300, label %121

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %106, i32 4
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, -20
  br i1 %124, label %298, label %125

125:                                              ; preds = %121
  %126 = getelementptr i8, ptr %106, i32 5
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, -20
  br i1 %128, label %296, label %129

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %106, i32 6
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, -20
  br i1 %132, label %294, label %133

133:                                              ; preds = %129
  %134 = getelementptr i8, ptr %106, i32 7
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, -20
  br i1 %136, label %292, label %137

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %106, i32 8
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, -20
  br i1 %140, label %290, label %141

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %106, i32 9
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, -20
  br i1 %144, label %288, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %106, i32 10
  %147 = load i8, ptr %146, align 1
  %148 = icmp eq i8 %147, -20
  br i1 %148, label %286, label %149

149:                                              ; preds = %145
  %150 = getelementptr i8, ptr %106, i32 11
  %151 = load i8, ptr %150, align 1
  %152 = icmp eq i8 %151, -20
  br i1 %152, label %284, label %153

153:                                              ; preds = %149
  %154 = getelementptr i8, ptr %106, i32 12
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %155, -20
  br i1 %156, label %282, label %157

157:                                              ; preds = %153
  %158 = getelementptr i8, ptr %106, i32 13
  %159 = load i8, ptr %158, align 1
  %160 = icmp eq i8 %159, -20
  br i1 %160, label %280, label %161

161:                                              ; preds = %157
  %162 = getelementptr i8, ptr %106, i32 14
  %163 = load i8, ptr %162, align 1
  %164 = icmp eq i8 %163, -20
  br i1 %164, label %278, label %165

165:                                              ; preds = %161
  %166 = getelementptr i8, ptr %106, i32 15
  %167 = load i8, ptr %166, align 1
  %168 = icmp eq i8 %167, -20
  br i1 %168, label %276, label %169

169:                                              ; preds = %165
  %170 = getelementptr i8, ptr %106, i32 16
  %171 = load i8, ptr %170, align 1
  %172 = icmp eq i8 %171, -20
  br i1 %172, label %274, label %173

173:                                              ; preds = %169
  %174 = getelementptr i8, ptr %106, i32 17
  %175 = load i8, ptr %174, align 1
  %176 = icmp eq i8 %175, -20
  br i1 %176, label %272, label %177

177:                                              ; preds = %173
  %178 = getelementptr i8, ptr %106, i32 18
  %179 = load i8, ptr %178, align 1
  %180 = icmp eq i8 %179, -20
  br i1 %180, label %270, label %181

181:                                              ; preds = %177
  %182 = getelementptr i8, ptr %106, i32 19
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, -20
  br i1 %184, label %268, label %185

185:                                              ; preds = %181
  %186 = getelementptr i8, ptr %106, i32 20
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, -20
  br i1 %188, label %266, label %189

189:                                              ; preds = %185
  %190 = getelementptr i8, ptr %106, i32 21
  %191 = load i8, ptr %190, align 1
  %192 = icmp eq i8 %191, -20
  br i1 %192, label %264, label %193

193:                                              ; preds = %189
  %194 = getelementptr i8, ptr %106, i32 22
  %195 = load i8, ptr %194, align 1
  %196 = icmp eq i8 %195, -20
  br i1 %196, label %262, label %197

197:                                              ; preds = %193
  %198 = getelementptr i8, ptr %106, i32 23
  %199 = load i8, ptr %198, align 1
  %200 = icmp eq i8 %199, -20
  br i1 %200, label %260, label %201

201:                                              ; preds = %197
  %202 = getelementptr i8, ptr %106, i32 24
  %203 = load i8, ptr %202, align 1
  %204 = icmp eq i8 %203, -20
  br i1 %204, label %258, label %205

205:                                              ; preds = %201
  %206 = getelementptr i8, ptr %106, i32 25
  %207 = load i8, ptr %206, align 1
  %208 = icmp eq i8 %207, -20
  br i1 %208, label %256, label %209

209:                                              ; preds = %205
  %210 = getelementptr i8, ptr %106, i32 26
  %211 = load i8, ptr %210, align 1
  %212 = icmp eq i8 %211, -20
  br i1 %212, label %254, label %213

213:                                              ; preds = %209
  %214 = getelementptr i8, ptr %106, i32 27
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, -20
  br i1 %216, label %252, label %217

217:                                              ; preds = %213
  %218 = getelementptr i8, ptr %106, i32 28
  %219 = load i8, ptr %218, align 1
  %220 = icmp eq i8 %219, -20
  br i1 %220, label %250, label %221

221:                                              ; preds = %217
  %222 = getelementptr i8, ptr %106, i32 29
  %223 = load i8, ptr %222, align 1
  %224 = icmp eq i8 %223, -20
  br i1 %224, label %248, label %225

225:                                              ; preds = %221
  %226 = getelementptr i8, ptr %106, i32 30
  %227 = load i8, ptr %226, align 1
  %228 = icmp eq i8 %227, -20
  br i1 %228, label %246, label %229

229:                                              ; preds = %225
  %230 = getelementptr i8, ptr %106, i32 31
  %231 = load i8, ptr %230, align 1
  %232 = icmp eq i8 %231, -20
  br i1 %232, label %244, label %233

233:                                              ; preds = %229
  %234 = sub i32 %80, %97
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %233
  %237 = load i32, ptr %74, align 4
  %238 = load volatile i32, ptr @jiffies, align 64
  %239 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #9
  %240 = icmp slt i32 %237, 32
  br i1 %240, label %94, label %95, !prof !9

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %243, ptr noundef nonnull @.str.9) #10
  br label %409

244:                                              ; preds = %229
  %245 = getelementptr i8, ptr %106, i32 31
  br label %306

246:                                              ; preds = %225
  %247 = getelementptr i8, ptr %106, i32 30
  br label %306

248:                                              ; preds = %221
  %249 = getelementptr i8, ptr %106, i32 29
  br label %306

250:                                              ; preds = %217
  %251 = getelementptr i8, ptr %106, i32 28
  br label %306

252:                                              ; preds = %213
  %253 = getelementptr i8, ptr %106, i32 27
  br label %306

254:                                              ; preds = %209
  %255 = getelementptr i8, ptr %106, i32 26
  br label %306

256:                                              ; preds = %205
  %257 = getelementptr i8, ptr %106, i32 25
  br label %306

258:                                              ; preds = %201
  %259 = getelementptr i8, ptr %106, i32 24
  br label %306

260:                                              ; preds = %197
  %261 = getelementptr i8, ptr %106, i32 23
  br label %306

262:                                              ; preds = %193
  %263 = getelementptr i8, ptr %106, i32 22
  br label %306

264:                                              ; preds = %189
  %265 = getelementptr i8, ptr %106, i32 21
  br label %306

266:                                              ; preds = %185
  %267 = getelementptr i8, ptr %106, i32 20
  br label %306

268:                                              ; preds = %181
  %269 = getelementptr i8, ptr %106, i32 19
  br label %306

270:                                              ; preds = %177
  %271 = getelementptr i8, ptr %106, i32 18
  br label %306

272:                                              ; preds = %173
  %273 = getelementptr i8, ptr %106, i32 17
  br label %306

274:                                              ; preds = %169
  %275 = getelementptr i8, ptr %106, i32 16
  br label %306

276:                                              ; preds = %165
  %277 = getelementptr i8, ptr %106, i32 15
  br label %306

278:                                              ; preds = %161
  %279 = getelementptr i8, ptr %106, i32 14
  br label %306

280:                                              ; preds = %157
  %281 = getelementptr i8, ptr %106, i32 13
  br label %306

282:                                              ; preds = %153
  %283 = getelementptr i8, ptr %106, i32 12
  br label %306

284:                                              ; preds = %149
  %285 = getelementptr i8, ptr %106, i32 11
  br label %306

286:                                              ; preds = %145
  %287 = getelementptr i8, ptr %106, i32 10
  br label %306

288:                                              ; preds = %141
  %289 = getelementptr i8, ptr %106, i32 9
  br label %306

290:                                              ; preds = %137
  %291 = getelementptr i8, ptr %106, i32 8
  br label %306

292:                                              ; preds = %133
  %293 = getelementptr i8, ptr %106, i32 7
  br label %306

294:                                              ; preds = %129
  %295 = getelementptr i8, ptr %106, i32 6
  br label %306

296:                                              ; preds = %125
  %297 = getelementptr i8, ptr %106, i32 5
  br label %306

298:                                              ; preds = %121
  %299 = getelementptr i8, ptr %106, i32 4
  br label %306

300:                                              ; preds = %117
  %301 = getelementptr i8, ptr %106, i32 3
  br label %306

302:                                              ; preds = %113
  %303 = getelementptr i8, ptr %106, i32 2
  br label %306

304:                                              ; preds = %109
  %305 = getelementptr i8, ptr %106, i32 1
  br label %306

306:                                              ; preds = %304, %302, %300, %298, %296, %294, %292, %290, %288, %286, %284, %282, %280, %278, %276, %274, %272, %270, %268, %266, %264, %262, %260, %258, %256, %254, %252, %250, %248, %246, %244, %105
  %307 = phi ptr [ %245, %244 ], [ %247, %246 ], [ %249, %248 ], [ %251, %250 ], [ %253, %252 ], [ %255, %254 ], [ %257, %256 ], [ %259, %258 ], [ %261, %260 ], [ %263, %262 ], [ %265, %264 ], [ %267, %266 ], [ %269, %268 ], [ %271, %270 ], [ %273, %272 ], [ %275, %274 ], [ %277, %276 ], [ %279, %278 ], [ %281, %280 ], [ %283, %282 ], [ %285, %284 ], [ %287, %286 ], [ %289, %288 ], [ %291, %290 ], [ %293, %292 ], [ %295, %294 ], [ %297, %296 ], [ %299, %298 ], [ %301, %300 ], [ %303, %302 ], [ %305, %304 ], [ %106, %105 ]
  %308 = getelementptr i8, ptr %106, i32 32
  %309 = getelementptr i8, ptr %307, i32 1
  %310 = ptrtoint ptr %308 to i32
  %311 = ptrtoint ptr %309 to i32
  %312 = sub i32 %310, %311
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %317, label %314, !prof !9

314:                                              ; preds = %306
  %315 = load i32, ptr %74, align 4
  %316 = icmp sgt i32 %312, %315
  br i1 %316, label %317, label %318, !prof !9

317:                                              ; preds = %314, %306
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

318:                                              ; preds = %314
  %319 = call i32 @llvm.smin.i32(i32 %312, i32 %73) #9
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %106, ptr align 1 %309, i32 %319, i1 false) #9
  %320 = load ptr, ptr %81, align 4
  %321 = getelementptr i8, ptr %320, i32 %319
  %322 = sub i32 %73, %319
  %323 = icmp ult i32 %319, 8
  br i1 %323, label %324, label %353

324:                                              ; preds = %318
  %325 = sub nuw nsw i32 8, %319
  %326 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #9
  %327 = ptrtoint ptr %321 to i32
  %328 = ptrtoint ptr %320 to i32
  %329 = sub i32 %325, %328
  %330 = add i32 %329, %327
  %331 = load i32, ptr %74, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %334, !prof !9

333:                                              ; preds = %324
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

334:                                              ; preds = %324
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %7, i8 0, i32 96, i1 false) #9
  %335 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 7
  store i8 2, ptr %335, align 4
  %336 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  store ptr %321, ptr %336, align 4
  %337 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 %325, ptr %337, align 4
  %338 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %338, i8 0, i32 40, i1 false) #9
  store volatile ptr %8, ptr %8, align 4
  %339 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %340 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10
  store volatile ptr %340, ptr %340, align 4
  %341 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10, i32 1
  store ptr %340, ptr %341, align 4
  %342 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %342, ptr %339, align 4
  store ptr %8, ptr %342, align 4
  %343 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %8, ptr %343, align 4
  store volatile ptr %342, ptr %8, align 4
  %344 = load ptr, ptr %326, align 8
  %345 = call i32 @spi_sync_locked(ptr noundef %344, ptr noundef nonnull %8) #9
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %334
  %348 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %349 = load ptr, ptr %348, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %349, ptr noundef nonnull @.str.5, i32 noundef %345) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #9
  br label %409

350:                                              ; preds = %334
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #9
  %351 = getelementptr i8, ptr %320, i32 8
  %352 = load ptr, ptr %81, align 4
  br label %353

353:                                              ; preds = %350, %318
  %354 = phi ptr [ %352, %350 ], [ %320, %318 ]
  %355 = phi ptr [ %351, %350 ], [ %321, %318 ]
  %356 = getelementptr inbounds %struct.ec_host_response, ptr %354, i32 0, i32 3
  %357 = load i16, ptr %356, align 1
  %358 = zext i16 %357 to i32
  %359 = load i32, ptr %74, align 4
  %360 = icmp slt i32 %359, %358
  br i1 %360, label %409, label %361

361:                                              ; preds = %353
  %362 = icmp sgt i32 %322, 0
  br i1 %362, label %363, label %409

363:                                              ; preds = %361
  %364 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 7
  %365 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 1
  %366 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  %367 = getelementptr inbounds i8, ptr %6, i32 8
  %368 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %369 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  %370 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  %371 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  %372 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  %373 = call i32 @llvm.smin.i32(i32 %322, i32 256) #9
  %374 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  %375 = ptrtoint ptr %355 to i32
  %376 = ptrtoint ptr %354 to i32
  %377 = sub i32 %373, %376
  %378 = add i32 %377, %375
  %379 = icmp sgt i32 %378, %359
  br i1 %379, label %380, label %381, !prof !9

380:                                              ; preds = %395, %363
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

381:                                              ; preds = %395, %363
  %382 = phi ptr [ %400, %395 ], [ %374, %363 ]
  %383 = phi i32 [ %399, %395 ], [ %373, %363 ]
  %384 = phi ptr [ %396, %395 ], [ %355, %363 ]
  %385 = phi i32 [ %393, %395 ], [ %322, %363 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %5, i8 0, i32 96, i1 false) #9
  store i8 2, ptr %364, align 4
  store ptr %384, ptr %365, align 4
  store i32 %383, ptr %366, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %367, i8 0, i32 40, i1 false) #9
  store volatile ptr %6, ptr %6, align 4
  store volatile ptr %369, ptr %369, align 4
  store ptr %369, ptr %370, align 4
  store ptr %371, ptr %368, align 4
  store ptr %6, ptr %371, align 4
  store ptr %6, ptr %372, align 4
  store volatile ptr %371, ptr %6, align 4
  %386 = load ptr, ptr %382, align 8
  %387 = call i32 @spi_sync_locked(ptr noundef %386, ptr noundef nonnull %6) #9
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %381
  %390 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %391 = load ptr, ptr %390, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %391, ptr noundef nonnull @.str.5, i32 noundef %387) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #9
  br label %409

392:                                              ; preds = %381
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #9
  %393 = sub nsw i32 %385, %383
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %409

395:                                              ; preds = %392
  %396 = getelementptr i8, ptr %384, i32 %383
  %397 = load ptr, ptr %81, align 4
  %398 = load i32, ptr %74, align 4
  %399 = call i32 @llvm.smin.i32(i32 %393, i32 256) #9
  %400 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  %401 = ptrtoint ptr %396 to i32
  %402 = ptrtoint ptr %397 to i32
  %403 = sub i32 %399, %402
  %404 = add i32 %403, %401
  %405 = icmp sgt i32 %404, %398
  br i1 %405, label %380, label %381, !prof !9

406:                                              ; preds = %49
  %407 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %408 = load ptr, ptr %407, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %408, ptr noundef nonnull @.str.5, i32 noundef %60) #10
  br label %409

409:                                              ; preds = %406, %392, %389, %361, %353, %347, %241, %102, %63, %63, %63, %49
  %410 = phi i32 [ %60, %406 ], [ -90, %353 ], [ -74, %347 ], [ %387, %389 ], [ %100, %102 ], [ -110, %241 ], [ 0, %361 ], [ %60, %49 ], [ 0, %392 ], [ -11, %63 ], [ -11, %63 ], [ -11, %63 ]
  %411 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #9
  %412 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %412, i8 0, i32 40, i1 false) #9
  store volatile ptr %3, ptr %3, align 4
  %413 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %414 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %414, ptr %414, align 4
  %415 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %414, ptr %415, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i32 96, i1 false) #9
  %416 = getelementptr inbounds %struct.cros_ec_spi, ptr %411, i32 0, i32 3
  %417 = load i32, ptr %416, align 4
  %418 = trunc i32 %417 to i16
  %419 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 9
  store i16 %418, ptr %419, align 2
  %420 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %420, ptr %413, align 4
  store ptr %3, ptr %420, align 4
  %421 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %421, align 4
  store volatile ptr %420, ptr %3, align 4
  %422 = load ptr, ptr %411, align 8
  %423 = call i32 @spi_sync_locked(ptr noundef %422, ptr noundef nonnull %3) #9
  %424 = call i64 @ktime_get() #9
  %425 = getelementptr inbounds %struct.cros_ec_spi, ptr %411, i32 0, i32 1
  store i64 %424, ptr %425, align 8
  %426 = icmp slt i32 %423, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %409
  %428 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %429 = load ptr, ptr %428, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %429, ptr noundef nonnull @.str.11, i32 noundef %423) #10
  br label %430

430:                                              ; preds = %427, %409
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  %431 = load ptr, ptr %15, align 8
  %432 = getelementptr inbounds %struct.spi_device, ptr %431, i32 0, i32 2
  %433 = load ptr, ptr %432, align 4
  %434 = call i32 @spi_bus_unlock(ptr noundef %433) #9
  %435 = icmp eq i32 %410, 0
  %436 = select i1 %435, i32 %423, i32 %410
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %496, label %438

438:                                              ; preds = %430
  %439 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr %struct.ec_host_response, ptr %440, i32 0, i32 2
  %442 = load i16, ptr %441, align 1
  %443 = zext i16 %442 to i32
  %444 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  store i32 %443, ptr %444, align 4
  %445 = call i32 @cros_ec_check_result(ptr noundef %0, ptr noundef %1) #9
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %496

447:                                              ; preds = %438
  %448 = getelementptr %struct.ec_host_response, ptr %440, i32 0, i32 3
  %449 = load i16, ptr %448, align 1
  %450 = zext i16 %449 to i32
  %451 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %452 = load i32, ptr %451, align 4
  %453 = icmp ult i32 %452, %450
  br i1 %453, label %478, label %454

454:                                              ; preds = %447
  %455 = lshr i16 %449, 8
  %456 = trunc i16 %455 to i8
  %457 = trunc i16 %449 to i8
  %458 = load i8, ptr %440, align 1
  %459 = getelementptr i8, ptr %440, i32 1
  %460 = load i8, ptr %459, align 1
  %461 = add i8 %460, %458
  %462 = load i8, ptr %441, align 1
  %463 = add i8 %462, %461
  %464 = getelementptr i8, ptr %440, i32 3
  %465 = load i8, ptr %464, align 1
  %466 = add i8 %465, %463
  %467 = add i8 %466, %457
  %468 = add i8 %467, %456
  %469 = getelementptr i8, ptr %440, i32 6
  %470 = load i8, ptr %469, align 1
  %471 = add i8 %470, %468
  %472 = getelementptr i8, ptr %440, i32 7
  %473 = load i8, ptr %472, align 1
  %474 = add i8 %473, %471
  %475 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 5
  %476 = getelementptr i8, ptr %440, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %475, ptr align 1 %476, i32 %450, i1 false)
  %477 = icmp eq i16 %449, 0
  br i1 %477, label %489, label %481

478:                                              ; preds = %447
  %479 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %480 = load ptr, ptr %479, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %480, ptr noundef nonnull @.str.6, i32 noundef %450, i32 noundef %452) #10
  br label %496

481:                                              ; preds = %481, %454
  %482 = phi i8 [ %486, %481 ], [ %474, %454 ]
  %483 = phi i32 [ %487, %481 ], [ 0, %454 ]
  %484 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %483
  %485 = load i8, ptr %484, align 1
  %486 = add i8 %485, %482
  %487 = add nuw nsw i32 %483, 1
  %488 = icmp eq i32 %487, %450
  br i1 %488, label %489, label %481

489:                                              ; preds = %481, %454
  %490 = phi i8 [ %474, %454 ], [ %486, %481 ]
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %496, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %494 = load ptr, ptr %493, align 4
  %495 = zext i8 %490 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %494, ptr noundef nonnull @.str.12, i32 noundef %495) #10
  br label %496

496:                                              ; preds = %492, %489, %478, %438, %430
  %497 = phi i32 [ %436, %430 ], [ %445, %438 ], [ -90, %478 ], [ -74, %492 ], [ %450, %489 ]
  call void @kfree(ptr noundef nonnull %29) #9
  %498 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %499 = load i32, ptr %498, align 4
  %500 = icmp eq i32 %499, 210
  br i1 %500, label %501, label %502

501:                                              ; preds = %496
  call void @msleep(i32 noundef 50) #9
  br label %502

502:                                              ; preds = %501, %496, %28
  %503 = phi i32 [ -12, %28 ], [ %497, %501 ], [ %497, %496 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #9
  ret i32 %503
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cros_ec_spi_high_pri_release(ptr noundef %0) #2 {
  tail call void @kthread_destroy_worker(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cros_ec_suspend(ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cros_ec_resume(ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153232240, i64 2153232742, i64 2153232277, i64 2153232333, i64 2153232367, i64 2153232391, i64 2153232432, i64 2153232453, i64 2153232481, i64 2153232515}
!11 = !{i64 2153222145, i64 2153222647, i64 2153222182, i64 2153222238, i64 2153222272, i64 2153222296, i64 2153222337, i64 2153222358, i64 2153222386, i64 2153222420}
!12 = !{i64 2153234917, i64 2153235419, i64 2153234954, i64 2153235010, i64 2153235044, i64 2153235068, i64 2153235109, i64 2153235130, i64 2153235158, i64 2153235192}
!13 = !{i64 2153223800, i64 2153224302, i64 2153223837, i64 2153223893, i64 2153223927, i64 2153223951, i64 2153223992, i64 2153224013, i64 2153224041, i64 2153224075}
!14 = !{i64 2153226477, i64 2153226979, i64 2153226514, i64 2153226570, i64 2153226604, i64 2153226628, i64 2153226669, i64 2153226690, i64 2153226718, i64 2153226752}
