; ModuleID = '/llk/IR/drivers/char/tpm/tpm_i2c_infineon.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_i2c_infineon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_inf_dev = type { ptr, i32, [1261 x i8], ptr, i32, i32 }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@tpm_tis_i2c_table = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tpm_i2c_infineon\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"slb9635tt\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"slb9645tt\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@tpm_tis_i2c_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,tpm_i2c_infineon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,slb9635tt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,slb9645tt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author251 = internal constant [46 x i8] c"author=Peter Huewe <peter.huewe@infineon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [40 x i8] c"description=TPM TIS I2C Infineon Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version253 = internal constant [14 x i8] c"version=2.2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@tpm_tis_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @tpm_tis_i2c_probe, ptr @tpm_tis_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tpm_tis_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tpm_tis_i2c_ops, ptr null, ptr null }, ptr @tpm_tis_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [17 x i8] c"tpm_i2c_infineon\00", align 1
@tpm_tis_i2c_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tpm_dev = internal global %struct.tpm_inf_dev zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"This driver only supports one client at a time\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"no algorithms associated to the i2c bus\0A\00", align 1
@tpm_tis_i2c = internal constant %struct.tpm_class_ops { i32 1, i8 -112, i8 -112, ptr @tpm_tis_i2c_req_canceled, ptr @tpm_tis_i2c_recv, ptr @tpm_tis_i2c_send, ptr @tpm_tis_i2c_ready, ptr @tpm_tis_i2c_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"could not request locality\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"could not read vendor id\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"vendor id did not match! ID was %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"1.2 TPM (device-id 0x%X)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to read header\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Unable to read remainder of result\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Error left over data\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license254, ptr @__UNIQUE_ID_version253], section "llvm.metadata"

@__mod_i2c__tpm_tis_i2c_table_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @tpm_tis_i2c_table
@__mod_of__tpm_tis_i2c_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @tpm_tis_i2c_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @tpm_tis_i2c_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tpm_tis_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr @tpm_dev, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #10
  br label %56

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %11) #9
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #10
  br label %56

20:                                               ; preds = %9
  store ptr %0, ptr @tpm_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %21 = tail call ptr @tpmm_chip_alloc(ptr noundef %5, ptr noundef nonnull @tpm_tis_i2c) #9
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %54, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tpm_chip, ptr %21, i32 0, i32 15
  store i32 75, ptr %24, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, ptr %21, i32 0, i32 16
  store i32 200, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tpm_chip, ptr %21, i32 0, i32 17
  store i32 75, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, ptr %21, i32 0, i32 18
  store i32 75, ptr %27, align 4
  %28 = tail call fastcc i32 @request_locality(ptr noundef %21) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #10
  br label %53

31:                                               ; preds = %23
  %32 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext 6, ptr noundef nonnull %4, i32 noundef 4) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #10
  br label %44

35:                                               ; preds = %31
  %36 = load i32, ptr %4, align 4
  switch i32 %36, label %38 [
    i32 1709521, label %39
    i32 -787150080, label %37
  ]

37:                                               ; preds = %35
  br label %39

38:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %36) #10
  br label %44

39:                                               ; preds = %37, %35
  %40 = phi i32 [ 0, %37 ], [ 1, %35 ]
  store i32 %40, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 4), align 4
  %41 = lshr i32 %36, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %41) #10
  store ptr %21, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 3), align 4
  %42 = call i32 @tpm_chip_register(ptr noundef %21) #9
  %43 = icmp eq i32 %42, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br i1 %43, label %56, label %55

44:                                               ; preds = %38, %34
  %45 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  %46 = trunc i32 %45 to i8
  %47 = shl i8 %46, 4
  %48 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %47, ptr noundef nonnull %3, i32 noundef 1) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  store i8 32, ptr %3, align 1
  %51 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %47, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  br label %52

52:                                               ; preds = %50, %44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %53

53:                                               ; preds = %52, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %55

54:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %55

55:                                               ; preds = %54, %53, %39
  store ptr null, ptr @tpm_dev, align 4
  br label %56

56:                                               ; preds = %55, %39, %19, %8
  %57 = phi i32 [ -16, %8 ], [ -19, %19 ], [ -19, %55 ], [ 0, %39 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 3), align 4
  tail call void @tpm_chip_unregister(ptr noundef %3) #9
  %4 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1, !annotation !8
  %5 = trunc i32 %4 to i8
  %6 = shl i8 %5, 4
  %7 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %6, ptr noundef nonnull %2, i32 noundef 1) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  store i8 32, ptr %2, align 1
  %10 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  store ptr null, ptr @tpm_dev, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpmm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @request_locality(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 2, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  %5 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 1) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i8, ptr %3, align 1
  %9 = and i8 %8, -96
  %10 = icmp eq i8 %9, -96
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %30

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %13 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 15
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %14
  br label %18

18:                                               ; preds = %26, %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1, !annotation !8
  %19 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext 0, ptr noundef nonnull %2, i32 noundef 1) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr %2, align 1
  %23 = and i8 %22, -96
  %24 = icmp eq i8 %23, -96
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %30

26:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #9
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 %27, %17
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %18, label %30

30:                                               ; preds = %26, %25, %11
  %31 = phi i32 [ 0, %11 ], [ 0, %25 ], [ -62, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iic_tpm_read(i8 noundef zeroext %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = load ptr, ptr @tpm_dev, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %15 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = load i16, ptr %10, align 2
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %19 = trunc i32 %2 to i16
  store i16 %19, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %1, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %5, i32 12, i1 false)
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) %6, i32 12, i1 false)
  %22 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %144, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 4
  call void %31(ptr noundef %23, i32 noundef 2) #9
  %32 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 4), align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load ptr, ptr @tpm_dev, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @__i2c_transfer(ptr noundef %37, ptr noundef nonnull %7, i32 noundef 2) #9
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %133, label %40

40:                                               ; preds = %34
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %41 = load ptr, ptr @tpm_dev, align 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 @__i2c_transfer(ptr noundef %43, ptr noundef nonnull %7, i32 noundef 2) #9
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %133, label %46

46:                                               ; preds = %40
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %47 = load ptr, ptr @tpm_dev, align 4
  %48 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = call i32 @__i2c_transfer(ptr noundef %49, ptr noundef nonnull %7, i32 noundef 2) #9
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %133, label %52

52:                                               ; preds = %46
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  br label %133

53:                                               ; preds = %28
  %54 = icmp eq i32 %2, 0
  br i1 %54, label %133, label %55

55:                                               ; preds = %126, %53
  %56 = phi i32 [ %127, %126 ], [ %2, %53 ]
  %57 = phi i32 [ %129, %126 ], [ %2, %53 ]
  %58 = load ptr, ptr @tpm_dev, align 4
  %59 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = call i32 @__i2c_transfer(ptr noundef %60, ptr noundef nonnull %5, i32 noundef 1) #9
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %55
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %64 = load ptr, ptr @tpm_dev, align 4
  %65 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = call i32 @__i2c_transfer(ptr noundef %66, ptr noundef nonnull %5, i32 noundef 1) #9
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %63
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %70 = load ptr, ptr @tpm_dev, align 4
  %71 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = call i32 @__i2c_transfer(ptr noundef %72, ptr noundef nonnull %5, i32 noundef 1) #9
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  br label %133

76:                                               ; preds = %69, %63, %55
  %77 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call i32 @llvm.umin.i32(i32 %77, i32 %57)
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %18, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %80, %79 ], [ %56, %76 ]
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %84 = load ptr, ptr @tpm_dev, align 4
  %85 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 @__i2c_transfer(ptr noundef %86, ptr noundef nonnull %6, i32 noundef 1) #9
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %126, label %89

89:                                               ; preds = %82
  %90 = icmp eq i32 %87, -95
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  store i32 32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  br label %95

92:                                               ; preds = %89
  %93 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92, %91
  %96 = phi i32 [ 32, %91 ], [ %93, %92 ]
  %97 = call i32 @llvm.umin.i32(i32 %96, i32 %57)
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr %18, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i32 [ %97, %95 ], [ %83, %92 ]
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %101 = load ptr, ptr @tpm_dev, align 4
  %102 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 8
  %104 = call i32 @__i2c_transfer(ptr noundef %103, ptr noundef nonnull %6, i32 noundef 1) #9
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %99
  %107 = icmp eq i32 %104, -95
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store i32 32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  br label %112

109:                                              ; preds = %106
  %110 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109, %108
  %113 = phi i32 [ 32, %108 ], [ %110, %109 ]
  %114 = call i32 @llvm.umin.i32(i32 %113, i32 %57)
  %115 = trunc i32 %114 to i16
  store i16 %115, ptr %18, align 4
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i32 [ %114, %112 ], [ %100, %109 ]
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %118 = load ptr, ptr @tpm_dev, align 4
  %119 = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 8
  %121 = call i32 @__i2c_transfer(ptr noundef %120, ptr noundef nonnull %6, i32 noundef 1) #9
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = icmp eq i32 %121, -95
  br i1 %124, label %125, label %133

125:                                              ; preds = %123
  store i32 32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  br label %133

126:                                              ; preds = %116, %99, %82
  %127 = phi i32 [ %83, %82 ], [ %100, %99 ], [ %117, %116 ]
  %128 = phi i32 [ %87, %82 ], [ %104, %99 ], [ %121, %116 ]
  %129 = call i32 @llvm.usub.sat.i32(i32 %57, i32 %127)
  %130 = load ptr, ptr %20, align 4
  %131 = getelementptr i8, ptr %130, i32 %127
  store ptr %131, ptr %20, align 4
  %132 = icmp ugt i32 %57, %127
  br i1 %132, label %55, label %133

133:                                              ; preds = %126, %125, %123, %75, %53, %52, %46, %40, %34
  %134 = phi i32 [ 0, %53 ], [ %38, %34 ], [ %44, %40 ], [ %50, %46 ], [ %50, %52 ], [ %73, %75 ], [ -95, %125 ], [ %121, %123 ], [ %128, %126 ]
  %135 = load ptr, ptr @tpm_dev, align 4
  %136 = getelementptr inbounds %struct.i2c_client, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.i2c_adapter, ptr %137, i32 0, i32 4
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.i2c_lock_operations, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  call void %141(ptr noundef %137, i32 noundef 2) #9
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  %142 = icmp sgt i32 %134, 0
  %143 = select i1 %142, i32 0, i32 -5
  br label %144

144:                                              ; preds = %133, %3
  %145 = phi i32 [ -95, %3 ], [ %143, %133 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret i32 %145
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tpm_tis_i2c_req_canceled(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) #5 {
  %3 = icmp eq i8 %1, 64
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp ult i32 %2, 10
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @recv_data(ptr noundef %0, ptr noundef %1, i32 noundef 10)
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = icmp ugt i32 %14, %2
  %16 = icmp ult i32 %14, 10
  %17 = or i1 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %1, i32 10
  %20 = add i32 %14, -10
  %21 = tail call fastcc i32 @recv_data(ptr noundef %0, ptr noundef %19, i32 noundef %20)
  %22 = add i32 %21, %9
  %23 = icmp ult i32 %22, %14
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 17
  %26 = load i32, ptr %25, align 8
  %27 = call fastcc i32 @wait_for_stat(ptr noundef %0, i8 noundef zeroext -128, i32 noundef %26, ptr noundef nonnull %6)
  %28 = load i32, ptr %6, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %18, %8
  %32 = phi ptr [ @.str.7, %8 ], [ @.str.8, %18 ], [ @.str.9, %24 ]
  %33 = phi i32 [ %9, %8 ], [ -62, %18 ], [ -5, %24 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %32) #10
  br label %34

34:                                               ; preds = %31, %24, %11, %3
  %35 = phi i32 [ %22, %24 ], [ -5, %3 ], [ -5, %11 ], [ %33, %31 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 64, ptr %5, align 1
  %36 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %37 = trunc i32 %36 to i8
  %38 = shl i8 %37, 4
  %39 = or i8 %38, 1
  %40 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %39, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  tail call void @usleep_range_state(i32 noundef 2400, i32 noundef 2600, i32 noundef 2) #9
  %41 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %42 = trunc i32 %41 to i8
  %43 = shl i8 %42, 4
  %44 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %43, ptr noundef nonnull %4, i32 noundef 1) #9
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %34
  %47 = load i8, ptr %4, align 1
  %48 = and i8 %47, -124
  %49 = icmp eq i8 %48, -124
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  store i8 32, ptr %4, align 1
  %51 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %43, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  br label %52

52:                                               ; preds = %50, %46, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_send(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 32, ptr %10, align 1
  %11 = icmp ugt i32 %2, 1260
  br i1 %11, label %142, label %12

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @request_locality(ptr noundef %0)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %142, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 -1, ptr %8, align 1
  br label %16

16:                                               ; preds = %25, %15
  %17 = phi i8 [ 0, %15 ], [ %26, %25 ]
  %18 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %19 = trunc i32 %18 to i8
  %20 = shl i8 %19, 4
  %21 = or i8 %20, 1
  %22 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %21, ptr noundef nonnull %8, i32 noundef 1) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  store i32 0, ptr %9, align 4
  br label %35

25:                                               ; preds = %16
  %26 = add nuw nsw i8 %17, 1
  %27 = load i8, ptr %8, align 1
  %28 = icmp eq i8 %27, -1
  %29 = icmp ult i8 %17, 9
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %16, label %31

31:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %32 = zext i8 %27 to i32
  store i32 %32, ptr %9, align 4
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31, %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 64, ptr %7, align 1
  %36 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %37 = trunc i32 %36 to i8
  %38 = shl i8 %37, 4
  %39 = or i8 %38, 1
  %40 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %39, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %41 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = call fastcc i32 @wait_for_stat(ptr noundef %0, i8 noundef zeroext 64, i32 noundef %42, ptr noundef nonnull %9)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %123, label %45

45:                                               ; preds = %35, %31
  %46 = add i32 %2, -1
  %47 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 18
  %48 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  %49 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 17
  br label %51

51:                                               ; preds = %97, %45
  %52 = phi i32 [ 0, %45 ], [ %99, %97 ]
  %53 = phi i8 [ 0, %45 ], [ %95, %97 ]
  %54 = icmp ugt i32 %46, %52
  br i1 %54, label %55, label %105

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false) #9, !annotation !8
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = load i32, ptr %47, align 4
  %58 = add i32 %57, %56
  br label %59

59:                                               ; preds = %78, %55
  %60 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %61 = trunc i32 %60 to i8
  %62 = shl i8 %61, 4
  %63 = or i8 %62, 2
  %64 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %63, ptr noundef nonnull %6, i32 noundef 3) #9
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %59
  %67 = load i8, ptr %48, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = load i8, ptr %49, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = or i32 %72, %69
  %74 = load i8, ptr %6, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %66, %59
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #9
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = sub i32 %79, %58
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %59, label %82

82:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  br label %142

83:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  %84 = sub i32 %46, %52
  %85 = call i32 @llvm.umin.i32(i32 %76, i32 %84)
  %86 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %87 = trunc i32 %86 to i8
  %88 = shl i8 %87, 4
  %89 = or i8 %88, 5
  %90 = getelementptr i8, ptr %1, i32 %52
  %91 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %89, ptr noundef %90, i32 noundef %85, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  %92 = icmp eq i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i8
  %95 = add i8 %53, %94
  %96 = icmp ugt i8 %95, 50
  br i1 %96, label %123, label %97

97:                                               ; preds = %83
  %98 = select i1 %92, i32 %85, i32 0
  %99 = add i32 %98, %52
  %100 = load i32, ptr %50, align 8
  %101 = call fastcc i32 @wait_for_stat(ptr noundef %0, i8 noundef zeroext -128, i32 noundef %100, ptr noundef nonnull %9)
  %102 = load i32, ptr %9, align 4
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %123, label %51

105:                                              ; preds = %51
  %106 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %107 = trunc i32 %106 to i8
  %108 = shl i8 %107, 4
  %109 = or i8 %108, 5
  %110 = getelementptr i8, ptr %1, i32 %52
  %111 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %109, ptr noundef %110, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  %112 = load i32, ptr %50, align 8
  %113 = call fastcc i32 @wait_for_stat(ptr noundef %0, i8 noundef zeroext -128, i32 noundef %112, ptr noundef nonnull %9)
  %114 = load i32, ptr %9, align 4
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %105
  %118 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %119 = trunc i32 %118 to i8
  %120 = shl i8 %119, 4
  %121 = or i8 %120, 1
  %122 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %121, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  br label %142

123:                                              ; preds = %105, %97, %83, %35
  %124 = phi i32 [ -62, %35 ], [ -5, %105 ], [ -5, %83 ], [ -5, %97 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 64, ptr %5, align 1
  %125 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %126 = trunc i32 %125 to i8
  %127 = shl i8 %126, 4
  %128 = or i8 %127, 1
  %129 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %128, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @usleep_range_state(i32 noundef 2400, i32 noundef 2600, i32 noundef 2) #9
  %130 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %131 = trunc i32 %130 to i8
  %132 = shl i8 %131, 4
  %133 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %132, ptr noundef nonnull %4, i32 noundef 1) #9
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %123
  %136 = load i8, ptr %4, align 1
  %137 = and i8 %136, -124
  %138 = icmp eq i8 %137, -124
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  store i8 32, ptr %4, align 1
  %140 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %132, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #9
  br label %141

141:                                              ; preds = %139, %135, %123
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %142

142:                                              ; preds = %141, %117, %82, %12, %3
  %143 = phi i32 [ %124, %141 ], [ 0, %117 ], [ -7, %3 ], [ -16, %12 ], [ -16, %82 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpm_tis_i2c_ready(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 64, ptr %2, align 1
  %3 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %4 = trunc i32 %3 to i8
  %5 = shl i8 %4, 4
  %6 = or i8 %5, 1
  %7 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @tpm_tis_i2c_status(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 -1, ptr %2, align 1
  br label %3

3:                                                ; preds = %11, %1
  %4 = phi i8 [ 0, %1 ], [ %12, %11 ]
  %5 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %6 = trunc i32 %5 to i8
  %7 = shl i8 %6, 4
  %8 = or i8 %7, 1
  %9 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %8, ptr noundef nonnull %2, i32 noundef 1)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = add nuw nsw i8 %4, 1
  %13 = load i8, ptr %2, align 1
  %14 = icmp eq i8 %13, -1
  %15 = icmp ult i8 %4, 9
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %3, label %17

17:                                               ; preds = %11, %3
  %18 = phi i8 [ 0, %3 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @recv_data(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 18
  %6 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %7 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  br label %8

8:                                                ; preds = %40, %3
  %9 = phi i32 [ 0, %3 ], [ %51, %40 ]
  %10 = phi i8 [ 0, %3 ], [ %54, %40 ]
  %11 = icmp ult i32 %9, %2
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #9, !annotation !8
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, %13
  br label %16

16:                                               ; preds = %35, %12
  %17 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %18 = trunc i32 %17 to i8
  %19 = shl i8 %18, 4
  %20 = or i8 %19, 2
  %21 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %20, ptr noundef nonnull %4, i32 noundef 3) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %6, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %29, %26
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23, %16
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #9
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %36, %15
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %16, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  br label %56

40:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  %41 = sub i32 %2, %9
  %42 = call i32 @llvm.umin.i32(i32 %33, i32 %41)
  %43 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %44 = trunc i32 %43 to i8
  %45 = shl i8 %44, 4
  %46 = or i8 %45, 5
  %47 = getelementptr i8, ptr %1, i32 %9
  %48 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %46, ptr noundef %47, i32 noundef %42)
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %42, i32 0
  %51 = add i32 %50, %9
  %52 = xor i1 %49, true
  %53 = zext i1 %52 to i8
  %54 = add i8 %10, %53
  %55 = icmp ugt i8 %54, 50
  br i1 %55, label %56, label %8

56:                                               ; preds = %40, %39, %8
  %57 = phi i32 [ -16, %39 ], [ %9, %8 ], [ -5, %40 ]
  ret i32 %57
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_stat(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 -1, ptr %6, align 1
  br label %7

7:                                                ; preds = %15, %4
  %8 = phi i8 [ 0, %4 ], [ %16, %15 ]
  %9 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %10 = trunc i32 %9 to i8
  %11 = shl i8 %10, 4
  %12 = or i8 %11, 1
  %13 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %12, ptr noundef nonnull %6, i32 noundef 1) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i8 %8, 1
  %17 = load i8, ptr %6, align 1
  %18 = icmp eq i8 %17, -1
  %19 = icmp ult i8 %8, 9
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %7, label %21

21:                                               ; preds = %15, %7
  %22 = phi i8 [ 0, %7 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %23 = zext i8 %22 to i32
  store i32 %23, ptr %3, align 4
  %24 = icmp ne i8 %22, -1
  %25 = and i8 %22, %1
  %26 = icmp eq i8 %25, %1
  %27 = and i1 %24, %26
  br i1 %27, label %55, label %28

28:                                               ; preds = %21
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %29, %2
  br label %31

31:                                               ; preds = %51, %28
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 -1, ptr %5, align 1
  br label %32

32:                                               ; preds = %40, %31
  %33 = phi i8 [ 0, %31 ], [ %41, %40 ]
  %34 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %35 = trunc i32 %34 to i8
  %36 = shl i8 %35, 4
  %37 = or i8 %36, 1
  %38 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %37, ptr noundef nonnull %5, i32 noundef 1) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = add nuw nsw i8 %33, 1
  %42 = load i8, ptr %5, align 1
  %43 = icmp eq i8 %42, -1
  %44 = icmp ult i8 %33, 9
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %32, label %46

46:                                               ; preds = %40, %32
  %47 = phi i8 [ 0, %32 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %48 = zext i8 %47 to i32
  store i32 %48, ptr %3, align 4
  %49 = and i8 %47, %1
  %50 = icmp eq i8 %49, %1
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = sub i32 %52, %30
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %31, label %55

55:                                               ; preds = %51, %46, %21
  %56 = phi i32 [ 0, %21 ], [ -62, %51 ], [ 0, %46 ]
  ret i32 %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #2 {
  %7 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = load ptr, ptr @tpm_dev, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %14 = trunc i32 %2 to i16
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 2), ptr %16, align 4
  %17 = icmp ugt i32 %2, 1260
  br i1 %17, label %53, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %20, i32 noundef 2) #9
  store i8 %0, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 2), align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 2, i32 1), ptr align 1 %1, i32 %2, i1 false)
  %29 = zext i8 %5 to i32
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %38, %25
  %32 = phi i32 [ %39, %38 ], [ 0, %25 ]
  %33 = load ptr, ptr @tpm_dev, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @__i2c_transfer(ptr noundef %35, ptr noundef nonnull %7, i32 noundef 1) #9
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  call void @usleep_range_state(i32 noundef %3, i32 noundef %4, i32 noundef 2) #9
  %39 = add nuw nsw i32 %32, 1
  %40 = icmp eq i32 %39, %29
  br i1 %40, label %41, label %31

41:                                               ; preds = %38, %31
  %42 = icmp sgt i32 %36, 0
  %43 = select i1 %42, i32 0, i32 -5
  br label %44

44:                                               ; preds = %41, %25
  %45 = phi i32 [ -5, %25 ], [ %43, %41 ]
  %46 = load ptr, ptr @tpm_dev, align 4
  %47 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.i2c_lock_operations, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  call void %52(ptr noundef %48, i32 noundef 2) #9
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #9
  br label %53

53:                                               ; preds = %44, %18, %6
  %54 = phi i32 [ -22, %6 ], [ -95, %18 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
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
