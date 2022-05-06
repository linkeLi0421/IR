; ModuleID = '/llk/IR/drivers/mfd/tps65217.c_pt.bc'
source_filename = "../drivers/mfd/tps65217.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65217_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65217_clear_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65217_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tps65217 = type { ptr, ptr, [7 x %struct.regulator_desc], ptr, ptr, ptr, %struct.mutex, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_tps65217_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_reg_read to i32), ptr @__kstrtab_tps65217_reg_read, ptr @__kstrtabns_tps65217_reg_read }, section "___ksymtab_gpl+tps65217_reg_read", align 4
@__kstrtab_tps65217_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_reg_write to i32), ptr @__kstrtab_tps65217_reg_write, ptr @__kstrtabns_tps65217_reg_write }, section "___ksymtab_gpl+tps65217_reg_write", align 4
@__kstrtab_tps65217_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_set_bits to i32), ptr @__kstrtab_tps65217_set_bits, ptr @__kstrtabns_tps65217_set_bits }, section "___ksymtab_gpl+tps65217_set_bits", align 4
@__kstrtab_tps65217_clear_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65217_clear_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65217_clear_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65217_clear_bits to i32), ptr @__kstrtab_tps65217_clear_bits, ptr @__kstrtabns_tps65217_clear_bits }, section "___ksymtab_gpl+tps65217_clear_bits", align 4
@__initcall__kmod_tps65217__247_423_tps65217_init4 = internal global ptr @tps65217_init, section ".initcall4.init", align 4
@tps65217_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr @tps65217_remove, ptr @tps65217_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps65217_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65217_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_tps65217_exit = internal global ptr @tps65217_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [48 x i8] c"tps65217.author=AnilKumar Ch <anilkumar@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"tps65217.description=TPS65217 chip family multi-function driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [35 x i8] c"tps65217.file=drivers/mfd/tps65217\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"tps65217.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [27 x i8] c"Read from reg 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Write for reg 0x%x failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tps65217\00", align 1
@tps65217_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65217\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tps65217_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65217\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ti,pmic-shutdown-controller\00", align 1
@tps65217_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @tps65217_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@tps65217s = internal global [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.16, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.18, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.20, i64 0, i8 0, ptr null, i32 2, ptr @charger_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.22, i64 0, i8 0, ptr null, i32 1, ptr @pb_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to read revision register: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"unable to set the status OFF\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"TPS65217 ID %#x version 1.%d\0A\00", align 1
@tps65217_irq_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"&tps->irq_lock\00", align 1
@tps65217_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @tps65217_irq_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Could not create IRQ domain\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"tps65217-irq\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@tps65217_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr @tps65217_irq_enable, ptr @tps65217_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65217_irq_lock, ptr @tps65217_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to sync IRQ masks\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to read IRQ status: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"tps65217-pmic\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ti,tps65217-pmic\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"tps65217-bl\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ti,tps65217-bl\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"tps65217-charger\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"ti,tps65217-charger\00", align 1
@charger_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr @.str.23, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.24, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"tps65217-pwrbutton\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"ti,tps65217-pwrbutton\00", align 1
@pb_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr @.str.25, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tps65217_exit, ptr @__initcall__kmod_tps65217__247_423_tps65217_init4, ptr @__ksymtab_tps65217_clear_bits, ptr @__ksymtab_tps65217_reg_read, ptr @__ksymtab_tps65217_reg_write, ptr @__ksymtab_tps65217_set_bits, ptr @tps65217_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65217_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef %1, ptr noundef %2) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65217_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %3, label %31 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %13
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  br label %27

7:                                                ; preds = %4
  %8 = xor i32 %1, 125
  %9 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 11, i32 noundef %8) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %31, label %27

13:                                               ; preds = %4
  %14 = xor i32 %1, 125
  %15 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 11, i32 noundef %14) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %1, i32 noundef %2) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 11, i32 noundef %14) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %7, %5
  %28 = phi ptr [ %6, %5 ], [ %9, %7 ], [ %15, %23 ]
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %1, i32 noundef %2) #7
  br label %31

31:                                               ; preds = %27, %23, %19, %13, %7, %4
  %32 = phi i32 [ %11, %7 ], [ %17, %13 ], [ %21, %19 ], [ %25, %23 ], [ -22, %4 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65217_set_bits(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef %1, ptr noundef nonnull %6) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = xor i32 %2, -1
  %13 = load i32, ptr %6, align 4
  %14 = and i32 %13, %12
  %15 = and i32 %3, %2
  %16 = or i32 %14, %15
  store i32 %16, ptr %6, align 4
  %17 = call i32 @tps65217_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %16, i32 noundef %4) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11, %5
  %20 = phi ptr [ @.str, %5 ], [ @.str.1, %11 ]
  %21 = phi i32 [ %9, %5 ], [ %17, %11 ]
  %22 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull %20, i32 noundef %1) #8
  br label %23

23:                                               ; preds = %19, %11
  %24 = phi i32 [ 0, %11 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65217_clear_bits(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef %1, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = xor i32 %2, -1
  %12 = load i32, ptr %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, ptr %5, align 4
  %14 = call i32 @tps65217_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %13, i32 noundef %3) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10, %4
  %17 = phi ptr [ @.str, %4 ], [ @.str.1, %10 ]
  %18 = phi i32 [ %8, %4 ], [ %14, %10 ]
  %19 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull %17, i32 noundef %1) #8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ 0, %10 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65217_init() #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps65217_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65217_exit() #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tps65217_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tps65217, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #7
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  call void @irq_dispose_mapping(i32 noundef %9) #7
  br label %13

13:                                               ; preds = %12, %1
  %14 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %15 = call ptr @__irq_resolve_mapping(ptr noundef %14, i32 noundef 1, ptr noundef nonnull %2) #7
  %16 = icmp eq ptr %15, null
  %17 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  call void @irq_dispose_mapping(i32 noundef %17) #7
  br label %21

21:                                               ; preds = %20, %13
  %22 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %23 = call ptr @__irq_resolve_mapping(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %2) #7
  %24 = icmp eq ptr %23, null
  %25 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void @irq_dispose_mapping(i32 noundef %25) #7
  br label %29

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr %5, align 4
  call void @irq_domain_remove(ptr noundef %30) #7
  store ptr null, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %7 = icmp eq ptr %6, null
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1756, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %11, align 8
  store ptr %3, ptr %8, align 4
  %12 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tps65217_regmap_config, ptr noundef null, ptr noundef null) #7
  %13 = getelementptr inbounds %struct.tps65217, ptr %8, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i32
  %17 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %16) #8
  br label %50

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 0, i32 14), align 8
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 1, i32 14), align 8
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 2, i32 14), align 8
  store i32 0, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @tps65217s, i32 0, i32 3, i32 14), align 8
  br label %24

23:                                               ; preds = %18
  tail call fastcc void @tps65217_irq_init(ptr noundef nonnull %8, i32 noundef %20)
  br label %24

24:                                               ; preds = %23, %22
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.tps65217, ptr %8, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @devm_mfd_add_devices(ptr noundef %25, i32 noundef -1, ptr noundef nonnull @tps65217s, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %27) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.5, i32 noundef %28) #8
  br label %50

32:                                               ; preds = %24
  %33 = load ptr, ptr %13, align 4
  %34 = call i32 @regmap_read(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %2) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6, i32 noundef %34) #8
  br label %50

38:                                               ; preds = %32
  br i1 %7, label %44, label %39

39:                                               ; preds = %38
  %40 = call i32 @tps65217_set_bits(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 128, i32 noundef 128, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.7) #8
  br label %44

44:                                               ; preds = %42, %39, %38
  %45 = load ptr, ptr %8, align 4
  %46 = load i32, ptr %2, align 4
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 15
  %49 = and i32 %46, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.8, i32 noundef %48, i32 noundef %49) #8
  br label %50

50:                                               ; preds = %44, %36, %30, %15, %1
  %51 = phi i32 [ %16, %15 ], [ %28, %30 ], [ %34, %36 ], [ 0, %44 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tps65217_irq_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @tps65217_irq_init.__key) #7
  %5 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 8
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 7
  store i8 112, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = or i32 %12, 112
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = call i32 @regmap_write(ptr noundef %14, i32 noundef 2, i32 noundef %13) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %2
  %18 = phi ptr [ @.str, %2 ], [ @.str.1, %11 ]
  %19 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull %18, i32 noundef 2) #8
  br label %20

20:                                               ; preds = %17, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.device_node, ptr %23, i32 0, i32 3
  %26 = select i1 %24, ptr null, ptr %25
  %27 = call ptr @__irq_domain_add(ptr noundef %26, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @tps65217_irq_domain_ops, ptr noundef %0) #7
  %28 = getelementptr inbounds %struct.tps65217, ptr %0, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  %30 = load ptr, ptr %0, align 4
  br i1 %29, label %31, label %32

31:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.10) #8
  br label %39

32:                                               ; preds = %20
  %33 = call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %1, ptr noundef null, ptr noundef nonnull @tps65217_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.11, ptr noundef %0) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %33) #8
  br label %39

37:                                               ; preds = %32
  %38 = call i32 @irq_set_irq_wake(i32 noundef %1, i32 noundef 1) #7
  br label %39

39:                                               ; preds = %37, %35, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tps65217_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 2
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tps65217, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef %7) #8
  br label %49

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %18 = call ptr @__irq_resolve_mapping(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #7
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr %3, align 4
  %21 = select i1 %19, i32 0, i32 %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @handle_nested_irq(i32 noundef %21) #7
  %22 = load i32, ptr %4, align 4
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i32 [ %22, %16 ], [ %11, %9 ]
  %25 = xor i1 %13, true
  %26 = and i32 %24, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %30 = call ptr @__irq_resolve_mapping(ptr noundef %29, i32 noundef 1, ptr noundef nonnull %3) #7
  %31 = icmp eq ptr %30, null
  %32 = load i32, ptr %3, align 4
  %33 = select i1 %31, i32 0, i32 %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @handle_nested_irq(i32 noundef %33) #7
  %34 = load i32, ptr %4, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = phi i32 [ %34, %28 ], [ %24, %23 ]
  %37 = phi i1 [ true, %28 ], [ %25, %23 ]
  %38 = and i32 %36, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %42 = call ptr @__irq_resolve_mapping(ptr noundef %41, i32 noundef 2, ptr noundef nonnull %3) #7
  %43 = icmp eq ptr %42, null
  %44 = load i32, ptr %3, align 4
  %45 = select i1 %43, i32 0, i32 %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @handle_nested_irq(i32 noundef %45) #7
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ true, %40 ], [ %37, %35 ]
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %46, %14
  %50 = phi i32 [ 0, %14 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @tps65217_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #7
  %7 = getelementptr inbounds %struct.tps65217, ptr %5, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @irq_set_parent(i32 noundef %1, i32 noundef %8) #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tps65217_irq_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 16, %5
  %7 = getelementptr inbounds %struct.tps65217, ptr %3, i32 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = trunc i32 %6 to i8
  %10 = xor i8 %9, -1
  %11 = and i8 %8, %10
  store i8 %11, ptr %7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tps65217_irq_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 16, %5
  %7 = getelementptr inbounds %struct.tps65217, ptr %3, i32 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = trunc i32 %6 to i8
  %10 = or i8 %8, %9
  store i8 %10, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps65217_irq_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tps65217, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps65217_irq_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tps65217, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.tps65217, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %2) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -113
  %14 = and i8 %6, 112
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  store i32 %16, ptr %2, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @regmap_write(ptr noundef %17, i32 noundef 2, i32 noundef %16) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %25

21:                                               ; preds = %11, %1
  %22 = phi ptr [ @.str, %1 ], [ @.str.1, %11 ]
  %23 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %22, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %24 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13) #8
  br label %25

25:                                               ; preds = %21, %20
  %26 = getelementptr inbounds %struct.tps65217, ptr %4, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %26) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
