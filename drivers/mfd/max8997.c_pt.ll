; ModuleID = '/llk/IR/drivers/mfd/max8997.c_pt.bc'
source_filename = "../drivers/mfd/max8997.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_bulk_read\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_write_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_bulk_write\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8997_update_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8997_update_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8997_update_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
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
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }

@__kstrtab_max8997_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_read_reg to i32), ptr @__kstrtab_max8997_read_reg, ptr @__kstrtabns_max8997_read_reg }, section "___ksymtab_gpl+max8997_read_reg", align 4
@__kstrtab_max8997_bulk_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_bulk_read = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_bulk_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_bulk_read to i32), ptr @__kstrtab_max8997_bulk_read, ptr @__kstrtabns_max8997_bulk_read }, section "___ksymtab_gpl+max8997_bulk_read", align 4
@__kstrtab_max8997_write_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_write_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_write_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_write_reg to i32), ptr @__kstrtab_max8997_write_reg, ptr @__kstrtabns_max8997_write_reg }, section "___ksymtab_gpl+max8997_write_reg", align 4
@__kstrtab_max8997_bulk_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_bulk_write = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_bulk_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_bulk_write to i32), ptr @__kstrtab_max8997_bulk_write, ptr @__kstrtabns_max8997_bulk_write }, section "___ksymtab_gpl+max8997_bulk_write", align 4
@__kstrtab_max8997_update_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8997_update_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8997_update_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8997_update_reg to i32), ptr @__kstrtab_max8997_update_reg, ptr @__kstrtabns_max8997_update_reg }, section "___ksymtab_gpl+max8997_update_reg", align 4
@__initcall__kmod_max8997__248_490_max8997_i2c_init4 = internal global ptr @max8997_i2c_init, section ".initcall4.init", align 4
@max8997_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max8997_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @max8997_pmic_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_pm, ptr null, ptr null }, ptr @max8997_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"max8997\00", align 1
@max8997_pmic_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8997-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@max8997_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max8997_suspend, ptr @max8997_resume, ptr @max8997_freeze, ptr null, ptr null, ptr @max8997_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max8997_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8997\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max8966\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@max8997_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&max8997->iolock\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to allocate I2C device for Haptic\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to allocate I2C device for MUIC\0A\00", align 1
@max8997_devs = internal constant [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.6, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.10, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.11, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.11, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to add MFD devices %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"max8997-pmic\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"max8997-rtc\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"max8997-battery\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"max8997-haptic\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"max8997-muic\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"max8997-led\00", align 1
@max8997_dumpaddr_pmic = internal unnamed_addr constant [118 x i8] c"\08\09\0A\0B\13\14\15\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMPQRSTUVZ^_`cdefghijklnpqrstuvwxyz{\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\97\98\99\9A", align 1
@max8997_dumpaddr_haptic = internal unnamed_addr constant [15 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_max8997__248_490_max8997_i2c_init4, ptr @__ksymtab_max8997_bulk_read, ptr @__ksymtab_max8997_bulk_write, ptr @__ksymtab_max8997_read_reg, ptr @__ksymtab_max8997_update_reg, ptr @__ksymtab_max8997_write_reg], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_read_reg(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max8997_dev, ptr %5, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %1) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = trunc i32 %7 to i8
  store i8 %10, ptr %2, align 1
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ 0, %9 ], [ %7, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_bulk_read(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = trunc i32 %2 to i8
  %9 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %8, ptr noundef %3) #5
  tail call void @mutex_unlock(ptr noundef %7) #5
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_write_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max8997_dev, ptr %5, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_bulk_write(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = trunc i32 %2 to i8
  %9 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %8, ptr noundef %3) #5
  tail call void @mutex_unlock(ptr noundef %7) #5
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_update_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %1) #5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = zext i8 %3 to i32
  %12 = and i8 %3, %2
  %13 = xor i32 %11, -1
  %14 = and i32 %8, %13
  %15 = trunc i32 %14 to i8
  %16 = or i8 %12, %15
  %17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %16) #5
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %17, %10 ], [ %8, %4 ]
  tail call void @mutex_unlock(ptr noundef %7) #5
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max8997_i2c_init() #2 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8997_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 372, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %98, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %9, align 8
  store ptr %3, ptr %6, align 4
  %10 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 2
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %16 = ptrtoint ptr %15 to i32
  %17 = load ptr, ptr %6, align 4
  br label %21

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %17, %14 ], [ %3, %18 ]
  %23 = phi i32 [ %16, %14 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 9
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %21
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 160, i32 noundef 3520) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %28, align 8
  %36 = tail call i32 @irq_of_parse_and_map(ptr noundef %35, i32 noundef 1) #5
  store i32 %36, ptr %32, align 4
  %37 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %31
  %39 = phi ptr [ %32, %34 ], [ inttoptr (i32 -12 to ptr), %31 ]
  %40 = ptrtoint ptr %39 to i32
  br label %98

41:                                               ; preds = %21
  %42 = icmp eq ptr %5, null
  br i1 %42, label %98, label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %5, %41 ], [ %32, %34 ]
  %45 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = load i32, ptr %44, align 4
  %47 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 10
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_i2c_probe.__key) #5
  %49 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call ptr @i2c_new_dummy_device(ptr noundef %50, i16 noundef zeroext 6) #5
  %52 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.2) #6
  %56 = load ptr, ptr %52, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %98

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4, i32 8
  store ptr %6, ptr %59, align 8
  %60 = load ptr, ptr %49, align 8
  %61 = tail call ptr @i2c_new_dummy_device(ptr noundef %60, i16 noundef zeroext 72) #5
  %62 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 4
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.3) #6
  %66 = load ptr, ptr %62, align 4
  %67 = ptrtoint ptr %66 to i32
  br label %95

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4, i32 8
  store ptr %6, ptr %69, align 8
  %70 = load ptr, ptr %49, align 8
  %71 = tail call ptr @i2c_new_dummy_device(ptr noundef %70, i16 noundef zeroext 37) #5
  %72 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 5
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.4) #6
  %76 = load ptr, ptr %72, align 4
  %77 = ptrtoint ptr %76 to i32
  br label %92

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4, i32 8
  store ptr %6, ptr %79, align 8
  %80 = load ptr, ptr %6, align 4
  %81 = tail call i32 @__pm_runtime_set_status(ptr noundef %80, i32 noundef 0) #5
  %82 = tail call i32 @max8997_irq_init(ptr noundef nonnull %6) #5
  %83 = load ptr, ptr %6, align 4
  %84 = tail call i32 @mfd_add_devices(ptr noundef %83, i32 noundef -1, ptr noundef nonnull @max8997_devs, i32 noundef 7, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %85 = icmp slt i32 %84, 0
  %86 = load ptr, ptr %6, align 4
  br i1 %85, label %87, label %90

87:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.5, i32 noundef %84) #6
  %88 = load ptr, ptr %6, align 4
  tail call void @mfd_remove_devices(ptr noundef %88) #5
  %89 = load ptr, ptr %72, align 4
  tail call void @i2c_unregister_device(ptr noundef %89) #5
  br label %92

90:                                               ; preds = %78
  %91 = tail call i32 @device_init_wakeup(ptr noundef %86, i1 noundef zeroext true) #5
  br label %98

92:                                               ; preds = %87, %74
  %93 = phi i32 [ %77, %74 ], [ %84, %87 ]
  %94 = load ptr, ptr %62, align 4
  tail call void @i2c_unregister_device(ptr noundef %94) #5
  br label %95

95:                                               ; preds = %92, %64
  %96 = phi i32 [ %67, %64 ], [ %93, %92 ]
  %97 = load ptr, ptr %52, align 4
  tail call void @i2c_unregister_device(ptr noundef %97) #5
  br label %98

98:                                               ; preds = %95, %90, %54, %41, %38, %2
  %99 = phi i32 [ %40, %38 ], [ %57, %54 ], [ %96, %95 ], [ %84, %90 ], [ -12, %2 ], [ 0, %41 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 1) #5
  br label %17

17:                                               ; preds = %14, %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  tail call void @enable_irq(i32 noundef %18) #5
  %19 = tail call i32 @max8997_irq_resume(ptr noundef %3) #5
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_freeze(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %4, %1 ], [ %19, %16 ]
  %7 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %8 = getelementptr [118 x i8], ptr @max8997_dumpaddr_pmic, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %10) #5
  %11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext %9) #5
  tail call void @mutex_unlock(ptr noundef %10) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 %7
  %15 = trunc i32 %11 to i8
  store i8 %15, ptr %14, align 1
  br label %16

16:                                               ; preds = %13, %5
  %17 = add nuw nsw i32 %7, 1
  %18 = icmp eq i32 %17, 118
  %19 = load ptr, ptr %3, align 8
  br i1 %18, label %20, label %5

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.max8997_dev, ptr %19, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %21) #5
  %22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 7) #5
  tail call void @mutex_unlock(ptr noundef %21) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 155
  %26 = trunc i32 %22 to i8
  store i8 %26, ptr %25, align 1
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.max8997_dev, ptr %28, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %29) #5
  %30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 8) #5
  tail call void @mutex_unlock(ptr noundef %29) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 156
  %34 = trunc i32 %30 to i8
  store i8 %34, ptr %33, align 1
  br label %35

35:                                               ; preds = %32, %27
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.max8997_dev, ptr %36, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %37) #5
  %38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 9) #5
  tail call void @mutex_unlock(ptr noundef %37) #5
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 157
  %42 = trunc i32 %38 to i8
  store i8 %42, ptr %41, align 1
  br label %43

43:                                               ; preds = %40, %35
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.max8997_dev, ptr %44, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %45) #5
  %46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 10) #5
  tail call void @mutex_unlock(ptr noundef %45) #5
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 158
  %50 = trunc i32 %46 to i8
  store i8 %50, ptr %49, align 1
  br label %51

51:                                               ; preds = %48, %43
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.max8997_dev, ptr %52, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %53) #5
  %54 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 12) #5
  tail call void @mutex_unlock(ptr noundef %53) #5
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 159
  %58 = trunc i32 %54 to i8
  store i8 %58, ptr %57, align 1
  br label %59

59:                                               ; preds = %56, %51
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.max8997_dev, ptr %60, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %61) #5
  %62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 13) #5
  tail call void @mutex_unlock(ptr noundef %61) #5
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 160
  %66 = trunc i32 %62 to i8
  store i8 %66, ptr %65, align 1
  br label %67

67:                                               ; preds = %64, %59
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.max8997_dev, ptr %68, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %69) #5
  %70 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 14) #5
  tail call void @mutex_unlock(ptr noundef %69) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 161
  %74 = trunc i32 %70 to i8
  store i8 %74, ptr %73, align 1
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %88, %75
  %77 = phi i32 [ %89, %88 ], [ 0, %75 ]
  %78 = getelementptr [15 x i8], ptr @max8997_dumpaddr_haptic, i32 0, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = load ptr, ptr %3, align 8
  %81 = getelementptr inbounds %struct.max8997_dev, ptr %80, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %81) #5
  %82 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext %79) #5
  tail call void @mutex_unlock(ptr noundef %81) #5
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = add nuw nsw i32 %77, 170
  %86 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 %85
  %87 = trunc i32 %82 to i8
  store i8 %87, ptr %86, align 1
  br label %88

88:                                               ; preds = %84, %76
  %89 = add nuw nsw i32 %77, 1
  %90 = icmp eq i32 %89, 15
  br i1 %90, label %91, label %76

91:                                               ; preds = %88
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_restore(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 0
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.max8997_dev, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 8, i8 noundef zeroext %6) #5
  tail call void @mutex_unlock(ptr noundef %7) #5
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i32 [ 1, %1 ], [ %18, %9 ]
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr [118 x i8], ptr @max8997_dumpaddr_pmic, i32 0, i32 %10
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 %10
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.max8997_dev, ptr %11, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %16) #5
  %17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext %13, i8 noundef zeroext %15) #5
  tail call void @mutex_unlock(ptr noundef %16) #5
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, 118
  br i1 %19, label %20, label %9

20:                                               ; preds = %9
  %21 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 155
  %22 = load i8, ptr %21, align 1
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.max8997_dev, ptr %23, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %24) #5
  %25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 7, i8 noundef zeroext %22) #5
  tail call void @mutex_unlock(ptr noundef %24) #5
  %26 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 156
  %27 = load i8, ptr %26, align 1
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.max8997_dev, ptr %28, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %29) #5
  %30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 8, i8 noundef zeroext %27) #5
  tail call void @mutex_unlock(ptr noundef %29) #5
  %31 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 157
  %32 = load i8, ptr %31, align 1
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.max8997_dev, ptr %33, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %34) #5
  %35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 9, i8 noundef zeroext %32) #5
  tail call void @mutex_unlock(ptr noundef %34) #5
  %36 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 158
  %37 = load i8, ptr %36, align 1
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.max8997_dev, ptr %38, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %39) #5
  %40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 10, i8 noundef zeroext %37) #5
  tail call void @mutex_unlock(ptr noundef %39) #5
  %41 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 159
  %42 = load i8, ptr %41, align 1
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.max8997_dev, ptr %43, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %44) #5
  %45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 12, i8 noundef zeroext %42) #5
  tail call void @mutex_unlock(ptr noundef %44) #5
  %46 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 160
  %47 = load i8, ptr %46, align 1
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.max8997_dev, ptr %48, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %49) #5
  %50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 13, i8 noundef zeroext %47) #5
  tail call void @mutex_unlock(ptr noundef %49) #5
  %51 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 161
  %52 = load i8, ptr %51, align 1
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.max8997_dev, ptr %53, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %54) #5
  %55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 14, i8 noundef zeroext %52) #5
  tail call void @mutex_unlock(ptr noundef %54) #5
  br label %56

56:                                               ; preds = %56, %20
  %57 = phi i32 [ %66, %56 ], [ 0, %20 ]
  %58 = getelementptr [15 x i8], ptr @max8997_dumpaddr_haptic, i32 0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = add nuw nsw i32 %57, 170
  %61 = getelementptr %struct.max8997_dev, ptr %4, i32 0, i32 15, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.max8997_dev, ptr %63, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %64) #5
  %65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext %59, i8 noundef zeroext %62) #5
  tail call void @mutex_unlock(ptr noundef %64) #5
  %66 = add nuw nsw i32 %57, 1
  %67 = icmp eq i32 %66, 15
  br i1 %67, label %68, label %56

68:                                               ; preds = %56
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_irq_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
