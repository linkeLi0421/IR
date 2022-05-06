; ModuleID = '/llk/IR/drivers/iio/gyro/mpu3050-core.c_pt.bc'
source_filename = "../drivers/iio/gyro/mpu3050-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpu3050_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22mpu3050_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_mpu3050_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpu3050_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22mpu3050_common_remove\22\09\09\09\09\09"
module asm "__kstrtabns_mpu3050_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpu3050_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mpu3050_dev_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mpu3050_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mpu3050 = type { ptr, %struct.iio_mount_matrix, ptr, %struct.mutex, i32, [2 x %struct.regulator_bulk_data], i32, i32, i8, [3 x i16], ptr, i8, i8, i8, i8, i8, i64, ptr }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.72 = type { [4 x i16], i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@mpu3050_common_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&mpu3050->lock\00", align 1
@mpu3050_reg_vdd = internal constant [4 x i8] c"vdd\00", align 1
@mpu3050_reg_vlogic = internal constant [7 x i8] c"vlogic\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot get regulators\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not read device ID\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported chip id %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"found MPU-3050 part no: %d, version: %d\0A\00", align 1
@mpu3050_channels = internal constant [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @mpu3050_ext_info, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 2, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @mpu3050_ext_info, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 3, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @mpu3050_ext_info, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@mpu3050_info = internal constant %struct.iio_info { ptr null, ptr @mpu3050_attribute_group, ptr @mpu3050_read_raw, ptr null, ptr null, ptr @mpu3050_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mpu3050_scan_masks = internal constant [2 x i32] [i32 15, i32 0], align 4
@mpu3050_buffer_setup_ops = internal constant %struct.iio_buffer_setup_ops { ptr @mpu3050_buffer_preenable, ptr null, ptr null, ptr @mpu3050_buffer_postdisable, ptr null }, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"device register failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register trigger\0A\00", align 1
@__kstrtab_mpu3050_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpu3050_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_mpu3050_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpu3050_common_probe to i32), ptr @__kstrtab_mpu3050_common_probe, ptr @__kstrtabns_mpu3050_common_probe }, section "___ksymtab+mpu3050_common_probe", align 4
@__kstrtab_mpu3050_common_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpu3050_common_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_mpu3050_common_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpu3050_common_remove to i32), ptr @__kstrtab_mpu3050_common_remove, ptr @__kstrtabns_mpu3050_common_remove }, section "___ksymtab+mpu3050_common_remove", align 4
@mpu3050_dev_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpu3050_runtime_suspend, ptr @mpu3050_runtime_resume, ptr null }, align 4
@__kstrtab_mpu3050_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpu3050_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mpu3050_dev_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpu3050_dev_pm_ops to i32), ptr @__kstrtab_mpu3050_dev_pm_ops, ptr @__kstrtabns_mpu3050_dev_pm_ops }, section "___ksymtab+mpu3050_dev_pm_ops", align 4
@__UNIQUE_ID_author278 = internal constant [29 x i8] c"mpu3050.author=Linus Walleij\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [45 x i8] c"mpu3050.description=MPU3050 gyroscope driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [38 x i8] c"mpu3050.file=drivers/iio/gyro/mpu3050\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [20 x i8] c"mpu3050.license=GPL\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"cannot enable regulators\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"error setting power mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [101 x i8] c"die ID: %04llX, wafer ID: %02llX, A lot ID: %04llX, W lot ID: %03llX, WP ID: %01llX, rev ID: %02llX\0A\00", align 1
@mpu3050_ext_info = internal constant [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.11, i32 1, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @mpu3050_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"mount_matrix\00", align 1
@mpu3050_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mpu3050_attributes, ptr null }, align 4
@mpu3050_attributes = internal global [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_anglevel_scale_available, i64 4), ptr null], align 4
@iio_const_attr_anglevel_scale_available = internal global %struct.iio_const_attr { ptr @.str.12, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"0.000122070 0.000274658 0.000518798 0.001068115\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"anglevel_scale_available\00", align 1
@mpu3050_fs_precision = internal unnamed_addr constant [4 x i32] [i32 4, i32 9, i32 17, i32 35], align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"error reading temperature\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"error reading axis data\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"FIFO overflow! Emptying and resetting FIFO\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"error resetting FIFO\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"pulse interrupts on the rising edge\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"pulse interrupts on the falling edge\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"interrupts active high level\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"interrupts active low level\0A\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"unsupported IRQ trigger specified (%lx), enforce rising edge\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"can't get IRQ %d, error %d\0A\00", align 1
@mpu3050_trigger_ops = internal constant %struct.iio_trigger_ops { ptr @mpu3050_drdy_trigger_set_state, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"error reading IRQ status\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"error disabling IRQ\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"error clearing IRQ status\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"error disabling FIFO\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"error putting to sleep\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"error disabling regulators\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__ksymtab_mpu3050_common_probe, ptr @__ksymtab_mpu3050_common_remove, ptr @__ksymtab_mpu3050_dev_pm_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpu3050_common_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = tail call ptr @devm_iio_device_alloc(ptr noundef %0, i32 noundef 136) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %75, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 2
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @mpu3050_common_probe.__key) #8
  %13 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 6
  store i32 3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 7
  store i32 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 8
  store i8 99, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 1
  %17 = tail call i32 @iio_read_mount_matrix(ptr noundef %0, ptr noundef %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.mpu3050, ptr %10, i32 0, i32 5
  store ptr @mpu3050_reg_vdd, ptr %20, align 4
  %21 = getelementptr %struct.mpu3050, ptr %10, i32 0, i32 5, i32 1
  store ptr @mpu3050_reg_vlogic, ptr %21, align 4
  %22 = tail call i32 @devm_regulator_bulk_get(ptr noundef %0, i32 noundef 2, ptr noundef %20) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %75

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @mpu3050_power_up(ptr noundef %10)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %25
  %29 = call i32 @regmap_read(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %73

32:                                               ; preds = %28
  %33 = load i32, ptr %5, align 4
  %34 = and i32 %33, 126
  %35 = icmp eq i32 %34, 104
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %34) #9
  br label %73

37:                                               ; preds = %32
  %38 = call i32 @regmap_read(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %5) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %73

41:                                               ; preds = %37
  %42 = load i32, ptr %5, align 4
  %43 = lshr i32 %42, 4
  %44 = and i32 %43, 15
  %45 = and i32 %42, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %44, i32 noundef %45) #9
  %46 = call fastcc i32 @mpu3050_hw_init(ptr noundef %10)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 13
  store ptr @mpu3050_channels, ptr %49, align 8
  %50 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 14
  store i32 5, ptr %50, align 4
  %51 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 17
  store ptr @mpu3050_info, ptr %51, align 8
  %52 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 6
  store ptr @mpu3050_scan_masks, ptr %52, align 4
  store i32 1, ptr %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 15
  store ptr %3, ptr %53, align 8
  %54 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %6, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @mpu3050_trigger_handler, i32 noundef 0, ptr noundef nonnull @mpu3050_buffer_setup_ops, ptr noundef null) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  br label %73

57:                                               ; preds = %48
  %58 = call i32 @__iio_device_register(ptr noundef nonnull %6, ptr noundef null) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #9
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %6) #8
  br label %73

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %6, ptr %62, align 8
  %63 = icmp eq i32 %2, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = call fastcc i32 @mpu3050_trigger_probe(ptr noundef nonnull %6, i32 noundef %2)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  br label %68

68:                                               ; preds = %67, %64, %61
  %69 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #8, !srcloc !9
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #8, !srcloc !10
  %71 = call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %0) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef 10000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #8
  %72 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #8
  br label %75

73:                                               ; preds = %60, %56, %41, %40, %36, %31
  %74 = phi i32 [ -19, %31 ], [ -19, %36 ], [ -19, %40 ], [ %46, %41 ], [ %54, %56 ], [ %58, %60 ]
  call fastcc void @mpu3050_power_down(ptr noundef %10)
  br label %75

75:                                               ; preds = %73, %68, %25, %24, %8, %4
  %76 = phi i32 [ %22, %24 ], [ %74, %73 ], [ 0, %68 ], [ -12, %4 ], [ %17, %8 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_power_up(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 5
  %3 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %2) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %15

7:                                                ; preds = %1
  tail call void @msleep(i32 noundef 200) #8
  %8 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 62, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #9
  br label %15

14:                                               ; preds = %7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  br label %15

15:                                               ; preds = %14, %12, %5
  %16 = phi i32 [ %3, %5 ], [ %10, %12 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_hw_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 62, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 62, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 23, i32 noundef 0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 55, i32 noundef 52) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 56, i32 noundef 0) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load ptr, ptr %3, align 8
  %25 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef 57, ptr noundef nonnull %2, i32 noundef 8) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  call void @add_device_randomness(ptr noundef nonnull %2, i32 noundef 8) #8
  %28 = load i64, ptr %2, align 8
  %29 = load ptr, ptr %0, align 8
  %30 = and i64 %28, 8191
  %31 = lshr i64 %28, 13
  %32 = and i64 %31, 31
  %33 = lshr i64 %28, 18
  %34 = and i64 %33, 65535
  %35 = lshr i64 %28, 34
  %36 = and i64 %35, 4095
  %37 = lshr i64 %28, 47
  %38 = and i64 %37, 7
  %39 = lshr i64 %28, 50
  %40 = and i64 %39, 63
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.10, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36, i64 noundef %38, i64 noundef %40) #9
  br label %41

41:                                               ; preds = %27, %23, %19, %15, %11, %7, %1
  %42 = phi i32 [ 0, %27 ], [ %5, %1 ], [ %9, %7 ], [ %13, %11 ], [ %25, %23 ], [ %21, %19 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_trigger_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.72, align 8
  %4 = alloca i16, align 2
  %5 = alloca [5 x i16], align 2
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %9 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %6) #8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 16
  %12 = load i64, ptr %11, align 8
  br label %15

13:                                               ; preds = %2
  %14 = tail call i64 @iio_get_time_ns(ptr noundef %6) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i64 [ %12, %10 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 11
  %19 = load i8, ptr %18, align 8, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %81, label %21

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %22 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 58, ptr noundef nonnull %4, i32 noundef 2) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load i16, ptr %4, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %29 = icmp eq i16 %27, 2
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.16) #9
  %32 = load ptr, ptr %22, align 8
  %33 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 61, i32 noundef 66, i32 noundef 66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.17) #9
  br label %77

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 15
  store i8 0, ptr %38, align 4
  br label %78

39:                                               ; preds = %26
  %40 = xor i1 %29, true
  %41 = icmp ugt i16 %28, 8
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 15
  %45 = getelementptr inbounds [5 x i16], ptr %5, i32 0, i32 1
  br label %46

46:                                               ; preds = %74, %43
  %47 = phi i16 [ %28, %43 ], [ %75, %74 ]
  %48 = phi i32 [ 0, %43 ], [ %64, %74 ]
  %49 = phi i64 [ %16, %43 ], [ 0, %74 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %5, i8 0, i32 10, i1 false), !annotation !8
  %50 = load i8, ptr %44, align 4, !range !11
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i16 -21846, ptr %5, align 2
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ 8, %52 ], [ 10, %46 ]
  %55 = phi i32 [ 1, %52 ], [ 0, %46 ]
  %56 = load ptr, ptr %22, align 8
  %57 = getelementptr [5 x i16], ptr %5, i32 0, i32 %55
  %58 = call i32 @regmap_bulk_read(ptr noundef %56, i32 noundef 60, ptr noundef %57, i32 noundef %54) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = call i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef %6, ptr noundef %45, i32 noundef 8, i64 noundef %49) #8
  %62 = trunc i32 %54 to i16
  %63 = sub i16 %47, %62
  %64 = add i32 %48, 1
  store i8 1, ptr %44, align 4
  %65 = icmp ult i16 %63, 8
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load ptr, ptr %22, align 8
  %68 = call i32 @regmap_bulk_read(ptr noundef %67, i32 noundef 58, ptr noundef nonnull %4, i32 noundef 2) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i16, ptr %4, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  br label %74

73:                                               ; preds = %66, %53
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #8
  br label %77

74:                                               ; preds = %70, %60
  %75 = phi i16 [ %72, %70 ], [ %63, %60 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #8
  %76 = icmp ugt i16 %75, 8
  br i1 %76, label %46, label %79

77:                                               ; preds = %73, %35, %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %101

78:                                               ; preds = %39, %37
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %81

79:                                               ; preds = %74
  %80 = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br i1 %80, label %81, label %101

81:                                               ; preds = %79, %78, %15
  %82 = phi i64 [ 0, %79 ], [ %16, %15 ], [ %16, %78 ]
  %83 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = call i32 @regmap_bulk_read(ptr noundef %84, i32 noundef 27, ptr noundef nonnull %3, i32 noundef 8) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.15) #9
  br label %101

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 9
  %91 = load i8, ptr %90, align 8, !range !11
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 3
  %97 = add nsw i32 %96, -1
  %98 = getelementptr i64, ptr %3, i32 %97
  store i64 %82, ptr %98, align 8
  br label %99

99:                                               ; preds = %93, %89
  %100 = call i32 @iio_push_to_buffers(ptr noundef %6, ptr noundef nonnull %3) #8
  br label %101

101:                                              ; preds = %99, %87, %79, %77
  call void @mutex_unlock(ptr noundef %17) #8
  %102 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  call void @iio_trigger_notify_done(ptr noundef %103) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_trigger_probe(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @iio_device_id(ptr noundef %0) #8
  %9 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %5, ptr noundef nonnull @.str.18, ptr noundef %7, i32 noundef %8) #8
  %10 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 10
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 14
  store i8 1, ptr %19, align 1
  br label %20

20:                                               ; preds = %18, %12
  %21 = tail call ptr @irq_get_irq_data(i32 noundef %1) #8
  %22 = getelementptr inbounds %struct.irq_data, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 15
  switch i32 %25, label %34 [
    i32 1, label %26
    i32 2, label %27
    i32 4, label %29
    i32 8, label %31
  ]

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.20) #9
  br label %35

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 12
  store i8 1, ptr %28, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.21) #9
  br label %35

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 13
  store i8 1, ptr %30, align 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.22) #9
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 13
  store i8 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 12
  store i8 1, ptr %33, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.23) #9
  br label %35

34:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %25) #9
  br label %35

35:                                               ; preds = %34, %31, %29, %27, %26
  %36 = phi i32 [ 1, %34 ], [ 8200, %31 ], [ 8196, %29 ], [ 2, %27 ], [ 1, %26 ]
  %37 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 14
  %38 = load i8, ptr %37, align 1, !range !11
  %39 = icmp eq i8 %38, 0
  %40 = or i32 %36, 128
  %41 = select i1 %39, i32 %36, i32 %40
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.iio_trigger, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @mpu3050_irq_handler, ptr noundef nonnull @mpu3050_irq_thread, i32 noundef %41, ptr noundef %44, ptr noundef %42) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %35
  %48 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.25, i32 noundef %1, i32 noundef %45) #9
  br label %67

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 4
  store i32 %1, ptr %50, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds %struct.iio_trigger, ptr %52, i32 0, i32 4, i32 1
  store ptr %51, ptr %53, align 4
  %54 = load ptr, ptr %10, align 4
  store ptr @mpu3050_trigger_ops, ptr %54, align 8
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr inbounds %struct.iio_trigger, ptr %55, i32 0, i32 4, i32 8
  store ptr %0, ptr %56, align 8
  %57 = load ptr, ptr %10, align 4
  %58 = tail call i32 @__iio_trigger_register(ptr noundef %57, ptr noundef null) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr inbounds %struct.iio_trigger, ptr %61, i32 0, i32 4
  %63 = tail call ptr @get_device(ptr noundef %62) #8
  %64 = getelementptr inbounds %struct.iio_trigger, ptr %61, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void @__module_get(ptr noundef %65) #8
  %66 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  store ptr %61, ptr %66, align 4
  br label %67

67:                                               ; preds = %60, %49, %47, %2
  %68 = phi i32 [ %45, %47 ], [ 0, %60 ], [ -12, %2 ], [ %58, %49 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mpu3050_power_down(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 62, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30) #9
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 5
  %10 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.31) #9
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpu3050_common_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #8, !srcloc !13
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  br label %12

12:                                               ; preds = %11, %1
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %3) #8
  %13 = getelementptr inbounds %struct.mpu3050, ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %5) #8
  br label %18

18:                                               ; preds = %16, %12
  tail call void @iio_device_unregister(ptr noundef %3) #8
  %19 = getelementptr inbounds %struct.mpu3050, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 62, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.30) #9
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.mpu3050, ptr %5, i32 0, i32 5
  %27 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.31) #9
  br label %31

31:                                               ; preds = %29, %25
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mpu3050, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 62, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.mpu3050, ptr %5, i32 0, i32 5
  %14 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.31) #9
  br label %18

18:                                               ; preds = %16, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @mpu3050_power_up(ptr noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @mpu3050_get_mount_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mpu3050, ptr %4, i32 0, i32 1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2, !annotation !8
  switch i32 %4, label %87 [
    i32 3, label %9
    i32 5, label %13
    i32 12, label %23
    i32 2, label %34
    i32 0, label %43
  ]

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %87

12:                                               ; preds = %9
  store i32 23000, ptr %2, align 4
  br label %87

13:                                               ; preds = %5
  %14 = load i32, ptr %1, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = getelementptr %struct.mpu3050, ptr %8, i32 0, i32 9, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = sext i16 %21 to i32
  store i32 %22, ptr %2, align 4
  br label %87

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 8
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  %30 = add nuw nsw i16 %29, 1
  %31 = select i1 %26, i16 8000, i16 1000
  %32 = udiv i16 %31, %30
  %33 = zext i16 %32 to i32
  store i32 %33, ptr %2, align 4
  br label %87

34:                                               ; preds = %5
  %35 = load i32, ptr %1, align 4
  switch i32 %35, label %87 [
    i32 9, label %36
    i32 4, label %37
  ]

36:                                               ; preds = %34
  store i32 1000, ptr %2, align 4
  store i32 280, ptr %3, align 4
  br label %87

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [4 x i32], ptr @mpu3050_fs_precision, i32 0, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 1
  store i32 %42, ptr %2, align 4
  store i32 65535, ptr %3, align 4
  br label %87

43:                                               ; preds = %5
  %44 = load ptr, ptr %8, align 8
  %45 = tail call i32 @__pm_runtime_resume(ptr noundef %44, i32 noundef 4) #8
  %46 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %46) #8
  %47 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 7
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 8
  %50 = load i8, ptr %49, align 4
  store i32 0, ptr %47, align 8
  store i8 0, ptr %49, align 4
  %51 = tail call fastcc i32 @mpu3050_start_sampling(ptr noundef %8) #8
  store i32 %48, ptr %47, align 8
  store i8 %50, ptr %49, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %43
  %54 = load i32, ptr %1, align 4
  switch i32 %54, label %80 [
    i32 9, label %55
    i32 4, label %66
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = call i32 @regmap_bulk_read(ptr noundef %57, i32 noundef 27, ptr noundef nonnull %6, i32 noundef 2) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.14) #9
  br label %80

62:                                               ; preds = %55
  %63 = load i16, ptr %6, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63)
  %65 = sext i16 %64 to i32
  store i32 %65, ptr %2, align 4
  br label %80

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.mpu3050, ptr %8, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 27
  %72 = call i32 @regmap_bulk_read(ptr noundef %68, i32 noundef %71, ptr noundef nonnull %6, i32 noundef 2) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.15) #9
  br label %80

76:                                               ; preds = %66
  %77 = load i16, ptr %6, align 2
  %78 = call i16 @llvm.bswap.i16(i16 %77)
  %79 = zext i16 %78 to i32
  store i32 %79, ptr %2, align 4
  br label %80

80:                                               ; preds = %76, %74, %62, %60, %53, %43
  %81 = phi i32 [ %51, %43 ], [ %72, %74 ], [ 1, %76 ], [ %58, %60 ], [ 1, %62 ], [ -22, %53 ]
  call void @mutex_unlock(ptr noundef %46) #8
  %82 = load ptr, ptr %8, align 8
  %83 = call i64 @ktime_get_mono_fast_ns() #8
  %84 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 11, i32 22
  store volatile i64 %83, ptr %84, align 8
  %85 = load ptr, ptr %8, align 8
  %86 = call i32 @__pm_runtime_suspend(ptr noundef %85, i32 noundef 13) #8
  br label %87

87:                                               ; preds = %80, %37, %36, %34, %23, %16, %13, %12, %9, %5
  %88 = phi i32 [ %81, %80 ], [ 10, %37 ], [ 10, %36 ], [ 1, %23 ], [ 1, %16 ], [ 1, %12 ], [ -22, %9 ], [ -22, %13 ], [ -22, %34 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  ret i32 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mpu3050_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %59 [
    i32 5, label %8
    i32 12, label %17
    i32 2, label %39
  ]

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %59

11:                                               ; preds = %8
  %12 = trunc i32 %2 to i16
  %13 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = getelementptr %struct.mpu3050, ptr %7, i32 0, i32 9, i32 %15
  store i16 %12, ptr %16, align 2
  br label %59

17:                                               ; preds = %5
  %18 = add i32 %2, -8001
  %19 = icmp ult i32 %18, -7997
  br i1 %19, label %59, label %20

20:                                               ; preds = %17
  %21 = icmp ugt i32 %2, 1000
  %22 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 7
  br i1 %21, label %23, label %31

23:                                               ; preds = %20
  store i32 0, ptr %22, align 8
  %24 = trunc i32 %2 to i16
  %25 = lshr i16 %24, 1
  %26 = add nuw nsw i16 %25, 8000
  %27 = udiv i16 %26, %24
  %28 = trunc i16 %27 to i8
  %29 = add nsw i8 %28, -1
  %30 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 8
  store i8 %29, ptr %30, align 4
  br label %59

31:                                               ; preds = %20
  store i32 1, ptr %22, align 8
  %32 = trunc i32 %2 to i16
  %33 = lshr i16 %32, 1
  %34 = add nuw nsw i16 %33, 1000
  %35 = udiv i16 %34, %32
  %36 = trunc i16 %35 to i8
  %37 = add i8 %36, -1
  %38 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 8
  store i8 %37, ptr %38, align 4
  br label %59

39:                                               ; preds = %5
  %40 = load i32, ptr %1, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 6
  store i32 3, ptr %45, align 4
  br label %59

46:                                               ; preds = %42
  %47 = icmp ult i32 %3, 198
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 6
  store i32 0, ptr %49, align 4
  br label %59

50:                                               ; preds = %46
  %51 = icmp ult i32 %3, 397
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 6
  store i32 1, ptr %53, align 4
  br label %59

54:                                               ; preds = %50
  %55 = icmp ult i32 %3, 793
  %56 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 6
  br i1 %55, label %57, label %58

57:                                               ; preds = %54
  store i32 2, ptr %56, align 4
  br label %59

58:                                               ; preds = %54
  store i32 3, ptr %56, align 4
  br label %59

59:                                               ; preds = %58, %57, %52, %48, %44, %39, %31, %23, %17, %11, %8, %5
  %60 = phi i32 [ 0, %44 ], [ 0, %23 ], [ 0, %31 ], [ 0, %11 ], [ -22, %8 ], [ -22, %17 ], [ -22, %39 ], [ 0, %52 ], [ 0, %58 ], [ 0, %57 ], [ 0, %48 ], [ -22, %5 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_start_sampling(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [3 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 62, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 62, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %7
  %12 = getelementptr %struct.mpu3050, ptr %0, i32 0, i32 9, i32 0
  %13 = load i16, ptr %12, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  store i16 %14, ptr %2, align 2
  %15 = getelementptr %struct.mpu3050, ptr %0, i32 0, i32 9, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = getelementptr inbounds [3 x i16], ptr %2, i32 0, i32 1
  store i16 %17, ptr %18, align 2
  %19 = getelementptr %struct.mpu3050, ptr %0, i32 0, i32 9, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = getelementptr inbounds [3 x i16], ptr %2, i32 0, i32 2
  store i16 %21, ptr %22, align 2
  %23 = load ptr, ptr %3, align 8
  %24 = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 12, ptr noundef nonnull %2, i32 noundef 6) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %11
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 3
  %31 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %30, %32
  %34 = call i32 @regmap_write(ptr noundef %27, i32 noundef 22, i32 noundef %33) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %26
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.mpu3050, ptr %0, i32 0, i32 8
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = call i32 @regmap_write(ptr noundef %37, i32 noundef 21, i32 noundef %40) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i32, ptr %31, align 8
  %45 = icmp eq i32 %44, 0
  %46 = load i8, ptr %38, align 4
  %47 = zext i8 %46 to i16
  %48 = add nuw nsw i16 %47, 1
  %49 = select i1 %45, i16 8000, i16 1000
  %50 = udiv i16 %49, %48
  %51 = udiv i16 1000, %50
  %52 = add nuw nsw i16 %51, 50
  %53 = zext i16 %52 to i32
  call void @msleep(i32 noundef %53) #8
  br label %54

54:                                               ; preds = %43, %36, %26, %11, %7, %1
  %55 = phi i32 [ 0, %43 ], [ %5, %1 ], [ %9, %7 ], [ %24, %11 ], [ %34, %26 ], [ %41, %36 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #8
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_buffer_preenable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 11
  %7 = load i8, ptr %6, align 8, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  store i32 0, ptr %10, align 8
  store i8 0, ptr %12, align 4
  %14 = tail call fastcc i32 @mpu3050_start_sampling(ptr noundef %3) #8
  store i32 %11, ptr %10, align 8
  store i8 %13, ptr %12, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i32 [ %14, %9 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_buffer_postdisable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @ktime_get_mono_fast_ns() #8
  %6 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 22
  store volatile i64 %5, ptr %6, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mpu3050, ptr %6, i32 0, i32 11
  %8 = load i8, ptr %7, align 8, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call i64 @iio_get_time_ns(ptr noundef %4) #8
  %12 = getelementptr inbounds %struct.mpu3050, ptr %6, i32 0, i32 16
  store i64 %11, ptr %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ 2, %10 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 26, ptr noundef nonnull %3) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26) #9
  br label %19

14:                                               ; preds = %2
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @iio_trigger_poll_chained(ptr noundef %1) #8
  br label %19

19:                                               ; preds = %18, %14, %12
  %20 = phi i32 [ 1, %12 ], [ 1, %18 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpu3050_drdy_trigger_set_state(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_trigger, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  br i1 %1, label %40, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 23, i32 noundef 0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.27) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %9, align 8
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 26, ptr noundef nonnull %3) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28) #9
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr %9, align 8
  %23 = call i32 @regmap_write(ptr noundef %22, i32 noundef 18, i32 noundef 0) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.29) #9
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %9, align 8
  %29 = call i32 @regmap_write(ptr noundef %28, i32 noundef 61, i32 noundef 2) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.17) #9
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %7, align 8
  %35 = call i64 @ktime_get_mono_fast_ns() #8
  %36 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 22
  store volatile i64 %35, ptr %36, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #8
  %39 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 11
  store i8 0, ptr %39, align 8
  br label %87

40:                                               ; preds = %2
  %41 = load ptr, ptr %7, align 8
  %42 = tail call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #8
  %43 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 11
  store i8 1, ptr %43, align 8
  %44 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 18, i32 noundef 0) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %40
  %49 = load ptr, ptr %44, align 8
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 61, i32 noundef 66, i32 noundef 66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 15
  store i8 0, ptr %53, align 4
  %54 = load ptr, ptr %44, align 8
  %55 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 18, i32 noundef 241) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = tail call fastcc i32 @mpu3050_start_sampling(ptr noundef %7)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load ptr, ptr %44, align 8
  %62 = call i32 @regmap_read(ptr noundef %61, i32 noundef 26, ptr noundef nonnull %3) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.28) #9
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 12
  %68 = load i8, ptr %67, align 1, !range !11
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 1, i32 129
  store i32 %70, ptr %3, align 4
  %71 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 13
  %72 = load i8, ptr %71, align 2, !range !11
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = or i32 %70, 32
  store i32 %75, ptr %3, align 4
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi i32 [ %75, %74 ], [ %70, %66 ]
  %78 = getelementptr inbounds %struct.mpu3050, ptr %7, i32 0, i32 14
  %79 = load i8, ptr %78, align 1, !range !11
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = or i32 %77, 64
  store i32 %82, ptr %3, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ %82, %81 ], [ %77, %76 ]
  %85 = load ptr, ptr %44, align 8
  %86 = call i32 @regmap_write(ptr noundef %85, i32 noundef 23, i32 noundef %84) #8
  br label %87

87:                                               ; preds = %83, %57, %52, %48, %40, %33
  %88 = phi i32 [ 0, %33 ], [ %46, %40 ], [ %50, %48 ], [ %55, %52 ], [ %58, %57 ], [ %86, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 454365, i64 2147944336, i64 2147944362, i64 2147944409, i64 2147944431, i64 2147944459, i64 2147944479}
!10 = !{i64 2147956548, i64 2147956574, i64 2147956603, i64 2147956637, i64 2147956668, i64 2147956691}
!11 = !{i8 0, i8 2}
!12 = !{i64 2147956055}
!13 = !{i64 440934, i64 440959, i64 440981, i64 440997, i64 441009, i64 441029, i64 441053, i64 441069, i64 441081}
!14 = !{i64 2147956181}
