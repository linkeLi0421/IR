; ModuleID = '/llk/IR/drivers/mfd/max8998.c_pt.bc'
source_filename = "../drivers/mfd/max8998.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_bulk_read\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_write_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_write_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_bulk_write\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max8998_update_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22max8998_update_reg\22\09\09\09\09\09"
module asm "__kstrtabns_max8998_update_reg:\09\09\09\09\09"
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
%struct.max8998_reg_dump = type { i8, i8 }
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
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }

@__kstrtab_max8998_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_read_reg to i32), ptr @__kstrtab_max8998_read_reg, ptr @__kstrtabns_max8998_read_reg }, section "___ksymtab+max8998_read_reg", align 4
@__kstrtab_max8998_bulk_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_bulk_read = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_bulk_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_bulk_read to i32), ptr @__kstrtab_max8998_bulk_read, ptr @__kstrtabns_max8998_bulk_read }, section "___ksymtab+max8998_bulk_read", align 4
@__kstrtab_max8998_write_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_write_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_write_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_write_reg to i32), ptr @__kstrtab_max8998_write_reg, ptr @__kstrtabns_max8998_write_reg }, section "___ksymtab+max8998_write_reg", align 4
@__kstrtab_max8998_bulk_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_bulk_write = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_bulk_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_bulk_write to i32), ptr @__kstrtab_max8998_bulk_write, ptr @__kstrtabns_max8998_bulk_write }, section "___ksymtab+max8998_bulk_write", align 4
@__kstrtab_max8998_update_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_max8998_update_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_max8998_update_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max8998_update_reg to i32), ptr @__kstrtab_max8998_update_reg, ptr @__kstrtabns_max8998_update_reg }, section "___ksymtab+max8998_update_reg", align 4
@__initcall__kmod_max8998__248_360_max8998_i2c_init4 = internal global ptr @max8998_i2c_init, section ".initcall4.init", align 4
@max8998_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max8998_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @max8998_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_pm, ptr null, ptr null }, ptr @max8998_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"max8998\00", align 1
@max8998_dt_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8998\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lp3974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp3974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@max8998_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max8998_suspend, ptr @max8998_resume, ptr @max8998_freeze, ptr null, ptr null, ptr @max8998_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max8998_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8998\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lp3974\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@max8998_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&max8998->iolock\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", align 1
@lp3974_devs = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.3, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.4, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@max8998_devs = internal constant [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.5, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.6, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"lp3974-pmic\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lp3974-rtc\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"max8998-pmic\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"max8998-rtc\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"max8998-battery\00", align 1
@max8998_dump = internal unnamed_addr global [37 x %struct.max8998_reg_dump] [%struct.max8998_reg_dump { i8 4, i8 0 }, %struct.max8998_reg_dump { i8 5, i8 0 }, %struct.max8998_reg_dump { i8 6, i8 0 }, %struct.max8998_reg_dump { i8 7, i8 0 }, %struct.max8998_reg_dump { i8 10, i8 0 }, %struct.max8998_reg_dump { i8 11, i8 0 }, %struct.max8998_reg_dump { i8 12, i8 0 }, %struct.max8998_reg_dump { i8 13, i8 0 }, %struct.max8998_reg_dump { i8 14, i8 0 }, %struct.max8998_reg_dump { i8 14, i8 0 }, %struct.max8998_reg_dump { i8 16, i8 0 }, %struct.max8998_reg_dump { i8 17, i8 0 }, %struct.max8998_reg_dump { i8 18, i8 0 }, %struct.max8998_reg_dump { i8 19, i8 0 }, %struct.max8998_reg_dump { i8 20, i8 0 }, %struct.max8998_reg_dump { i8 21, i8 0 }, %struct.max8998_reg_dump { i8 22, i8 0 }, %struct.max8998_reg_dump { i8 23, i8 0 }, %struct.max8998_reg_dump { i8 24, i8 0 }, %struct.max8998_reg_dump { i8 25, i8 0 }, %struct.max8998_reg_dump { i8 26, i8 0 }, %struct.max8998_reg_dump { i8 29, i8 0 }, %struct.max8998_reg_dump { i8 30, i8 0 }, %struct.max8998_reg_dump { i8 31, i8 0 }, %struct.max8998_reg_dump { i8 32, i8 0 }, %struct.max8998_reg_dump { i8 33, i8 0 }, %struct.max8998_reg_dump { i8 34, i8 0 }, %struct.max8998_reg_dump { i8 35, i8 0 }, %struct.max8998_reg_dump { i8 36, i8 0 }, %struct.max8998_reg_dump { i8 37, i8 0 }, %struct.max8998_reg_dump { i8 38, i8 0 }, %struct.max8998_reg_dump { i8 39, i8 0 }, %struct.max8998_reg_dump { i8 40, i8 0 }, %struct.max8998_reg_dump { i8 41, i8 0 }, %struct.max8998_reg_dump { i8 42, i8 0 }, %struct.max8998_reg_dump { i8 43, i8 0 }, %struct.max8998_reg_dump { i8 44, i8 0 }], align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_max8998__248_360_max8998_i2c_init4, ptr @__ksymtab_max8998_bulk_read, ptr @__ksymtab_max8998_bulk_write, ptr @__ksymtab_max8998_read_reg, ptr @__ksymtab_max8998_update_reg, ptr @__ksymtab_max8998_write_reg], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8998_read_reg(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 4
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
define dso_local i32 @max8998_bulk_read(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 4
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
define dso_local i32 @max8998_write_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8998_bulk_write(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 4
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
define dso_local i32 @max8998_update_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 4
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
define internal i32 @max8998_i2c_init() #2 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8998_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 88, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 80, i32 noundef 3520) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8
  %17 = tail call i32 @irq_of_parse_and_map(ptr noundef %16, i32 noundef 1) #5
  %18 = getelementptr inbounds %struct.max8998_platform_data, ptr %13, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %12
  %21 = phi ptr [ %13, %15 ], [ inttoptr (i32 -12 to ptr), %12 ]
  %22 = ptrtoint ptr %21 to i32
  br label %101

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %26, align 8
  store ptr %3, ptr %6, align 4
  %27 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 2
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 8
  store i32 %29, ptr %30, align 4
  br i1 %25, label %31, label %35

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 12
  store i32 %33, ptr %34, align 4
  br label %50

35:                                               ; preds = %23
  %36 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 12
  store i32 %37, ptr %38, align 4
  br label %50

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %40, align 8
  store ptr %3, ptr %6, align 4
  %41 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 2
  store ptr %0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 8
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 12
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 1
  store ptr %5, ptr %48, align 4
  %49 = icmp eq ptr %5, null
  br i1 %49, label %65, label %53

50:                                               ; preds = %35, %31
  %51 = phi ptr [ %34, %31 ], [ %38, %35 ]
  %52 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 1
  store ptr %13, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %39
  %54 = phi ptr [ %47, %39 ], [ %51, %50 ]
  %55 = phi ptr [ %5, %39 ], [ %13, %50 ]
  %56 = getelementptr inbounds %struct.max8998_platform_data, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 9
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.max8998_platform_data, ptr %55, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 6
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.max8998_platform_data, ptr %55, i32 0, i32 12
  %63 = load i8, ptr %62, align 4, !range !8
  %64 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 13
  store i8 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %53, %39
  %66 = phi ptr [ %47, %39 ], [ %54, %53 ]
  %67 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %67, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8998_i2c_probe.__key) #5
  %68 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = tail call ptr @i2c_new_dummy_device(ptr noundef %69, i16 noundef zeroext 6) #5
  %71 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 3
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %74 = load ptr, ptr %71, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %101

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4, i32 8
  store ptr %6, ptr %77, align 8
  %78 = tail call i32 @max8998_irq_init(ptr noundef nonnull %6) #5
  %79 = load ptr, ptr %6, align 4
  %80 = tail call i32 @__pm_runtime_set_status(ptr noundef %79, i32 noundef 0) #5
  %81 = load i32, ptr %66, align 4
  switch i32 %81, label %97 [
    i32 1, label %82
    i32 0, label %85
  ]

82:                                               ; preds = %76
  %83 = load ptr, ptr %6, align 4
  %84 = tail call i32 @mfd_add_devices(ptr noundef %83, i32 noundef -1, ptr noundef nonnull @lp3974_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %88

85:                                               ; preds = %76
  %86 = load ptr, ptr %6, align 4
  %87 = tail call i32 @mfd_add_devices(ptr noundef %86, i32 noundef -1, ptr noundef nonnull @max8998_devs, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %87, %85 ], [ %84, %82 ]
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %6, align 4
  %93 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 13
  %94 = load i8, ptr %93, align 4, !range !8
  %95 = icmp ne i8 %94, 0
  %96 = tail call i32 @device_init_wakeup(ptr noundef %92, i1 noundef zeroext %95) #5
  br label %101

97:                                               ; preds = %88, %76
  %98 = phi i32 [ %89, %88 ], [ -22, %76 ]
  %99 = load ptr, ptr %6, align 4
  tail call void @mfd_remove_devices(ptr noundef %99) #5
  tail call void @max8998_irq_exit(ptr noundef nonnull %6) #5
  %100 = load ptr, ptr %71, align 4
  tail call void @i2c_unregister_device(ptr noundef %100) #5
  br label %101

101:                                              ; preds = %97, %91, %73, %20, %2
  %102 = phi i32 [ %22, %20 ], [ %75, %73 ], [ %98, %97 ], [ %89, %91 ], [ -12, %2 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @max8998_irq_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_suspend(ptr nocapture noundef readonly %0) #0 {
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
  %13 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #5
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  %16 = load ptr, ptr %2, align 8
  br label %17

17:                                               ; preds = %12, %8, %1
  %18 = phi ptr [ %3, %1 ], [ %16, %12 ], [ %3, %8 ]
  %19 = tail call i32 @max8998_irq_resume(ptr noundef %18) #5
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_freeze(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  br label %4

4:                                                ; preds = %15, %1
  %5 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %6 = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.max8998_dev, ptr %8, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %9) #5
  %10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext %7) #5
  tail call void @mutex_unlock(ptr noundef %9) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %5, i32 1
  %14 = trunc i32 %10 to i8
  store i8 %14, ptr %13, align 1
  br label %15

15:                                               ; preds = %12, %4
  %16 = add nuw nsw i32 %5, 1
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %4

18:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_restore(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ 0, %1 ], [ %13, %4 ]
  %6 = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr [37 x %struct.max8998_reg_dump], ptr @max8998_dump, i32 0, i32 %5, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.max8998_dev, ptr %10, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %11) #5
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext %7, i8 noundef zeroext %9) #5
  tail call void @mutex_unlock(ptr noundef %11) #5
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %4

15:                                               ; preds = %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_irq_resume(ptr noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
