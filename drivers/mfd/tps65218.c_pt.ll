; ModuleID = '/llk/IR/drivers/mfd/tps65218.c_pt.bc'
source_filename = "../drivers/mfd/tps65218.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65218_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65218_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_tps65218_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65218_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65218_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65218_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65218_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65218_clear_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps65218_clear_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tps65218 = type { ptr, i32, i8, %struct.mutex, i32, i32, ptr, [9 x %struct.regulator_desc], ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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

@__kstrtab_tps65218_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65218_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65218_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65218_reg_write to i32), ptr @__kstrtab_tps65218_reg_write, ptr @__kstrtabns_tps65218_reg_write }, section "___ksymtab_gpl+tps65218_reg_write", align 4
@__kstrtab_tps65218_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65218_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65218_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65218_set_bits to i32), ptr @__kstrtab_tps65218_set_bits, ptr @__kstrtabns_tps65218_set_bits }, section "___ksymtab_gpl+tps65218_set_bits", align 4
@__kstrtab_tps65218_clear_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65218_clear_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65218_clear_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65218_clear_bits to i32), ptr @__kstrtab_tps65218_clear_bits, ptr @__kstrtabns_tps65218_clear_bits }, section "___ksymtab_gpl+tps65218_clear_bits", align 4
@__initcall__kmod_tps65218__247_363_tps65218_driver_init6 = internal global ptr @tps65218_driver_init, section ".initcall6.init", align 4
@tps65218_driver = internal global %struct.i2c_driver { i32 0, ptr @tps65218_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_tps65218_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65218_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_tps65218_driver_exit = internal global ptr @tps65218_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [45 x i8] c"tps65218.author=J Keerthy <j-keerthy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"tps65218.description=TPS65218 chip family multi-function driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [35 x i8] c"tps65218.file=drivers/mfd/tps65218\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"tps65218.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [27 x i8] c"Read from reg 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Write for reg 0x%x failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tps65218\00", align 1
@of_tps65218_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tps65218_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65218\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.i2c_device_id zeroinitializer], align 4
@tps65218_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @tps65218_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@tps65218_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"&tps->tps_lock\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to read chipid: %d\0A\00", align 1
@tps65218_cells = internal constant [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.13, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.14, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.16, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@tps65218_volatile_table = internal constant %struct.regmap_access_table { ptr @tps65218_yes_ranges, i32 2, ptr null, i32 0 }, align 4
@tps65218_yes_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 2 }, %struct.regmap_range { i32 5, i32 5 }], align 4
@tps65218_irqs = internal constant [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer], align 4
@tps65218_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.2, i32 0, i32 0, ptr null, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 2, ptr @tps65218_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"ti,strict-supply-voltage-supervision\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Invalid ti,strict-supply-voltage-supervision value\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"ti,under-voltage-limit-microvolt\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Invalid ti,under-voltage-limit-microvolt value\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"ti,under-voltage-hyst-microvolt\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Invalid ti,under-voltage-hyst-microvolt value\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"tps65218-pwrbutton\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"ti,tps65218-pwrbutton\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"tps65218-gpio\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ti,tps65218-gpio\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"tps65218-regulator\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tps65218_driver_exit, ptr @__initcall__kmod_tps65218__247_363_tps65218_driver_init6, ptr @__ksymtab_tps65218_clear_bits, ptr @__ksymtab_tps65218_reg_write, ptr @__ksymtab_tps65218_set_bits, ptr @tps65218_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65218_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %3, label %17 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.tps65218, ptr %0, i32 0, i32 8
  br label %13

7:                                                ; preds = %4
  %8 = xor i32 %1, 125
  %9 = getelementptr inbounds %struct.tps65218, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 16, i32 noundef %8) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %1, i32 noundef %2) #5
  br label %17

17:                                               ; preds = %13, %7, %4
  %18 = phi i32 [ %11, %7 ], [ -22, %4 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65218_set_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc i32 @tps65218_update_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tps65218_update_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.tps65218, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef %1, ptr noundef nonnull %6) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %1) #6
  br label %35

13:                                               ; preds = %5
  %14 = xor i32 %2, -1
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %15, %14
  %17 = and i32 %3, %2
  %18 = or i32 %16, %17
  store i32 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.tps65218, ptr %0, i32 0, i32 3
  call void @mutex_lock(ptr noundef %19) #5
  %20 = load i32, ptr %6, align 4
  switch i32 %4, label %30 [
    i32 0, label %26
    i32 1, label %21
  ]

21:                                               ; preds = %13
  %22 = xor i32 %1, 125
  %23 = load ptr, ptr %7, align 4
  %24 = call i32 @regmap_write(ptr noundef %23, i32 noundef 16, i32 noundef %22) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %13
  %27 = load ptr, ptr %7, align 4
  %28 = call i32 @regmap_write(ptr noundef %27, i32 noundef %1, i32 noundef %20) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21, %13
  %31 = phi i32 [ %28, %26 ], [ -22, %13 ], [ %24, %21 ]
  %32 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.1, i32 noundef %1) #6
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %31, %30 ], [ 0, %26 ]
  call void @mutex_unlock(ptr noundef %19) #5
  br label %35

35:                                               ; preds = %33, %11
  %36 = phi i32 [ %9, %11 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps65218_clear_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @tps65218_update_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65218_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps65218_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65218_driver_exit() #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tps65218_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 2248, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %88, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %11, align 8
  store ptr %7, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tps65218_regmap_config, ptr noundef null, ptr noundef null) #5
  %16 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 8
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = ptrtoint ptr %15 to i32
  %20 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %19) #6
  br label %88

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @tps65218_probe.__key) #5
  %23 = load ptr, ptr %16, align 4
  %24 = load i32, ptr %14, align 4
  %25 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 6
  %26 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %7, ptr noundef %23, i32 noundef %24, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull @tps65218_irq_chip, ptr noundef %25) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %16, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %6) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.5, i32 noundef %30) #6
  br label %88

34:                                               ; preds = %28
  %35 = load i32, ptr %6, align 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 7
  %38 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 2
  store i8 %37, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #5
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i32, ptr %5, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = icmp eq i32 %45, 0
  %49 = select i1 %48, i32 0, i32 4
  %50 = call fastcc i32 @tps65218_update_bits(ptr noundef nonnull %8, i32 noundef 19, i32 noundef 4, i32 noundef %49, i32 noundef 1) #5
  br label %53

51:                                               ; preds = %44
  %52 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  br label %88

53:                                               ; preds = %47, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  %56 = load ptr, ptr %55, align 8
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef %56, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #5
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32, ptr %4, align 4
  switch i32 %60, label %67 [
    i32 2750000, label %64
    i32 2950000, label %61
    i32 3250000, label %62
    i32 3350000, label %63
  ]

61:                                               ; preds = %59
  br label %64

62:                                               ; preds = %59
  br label %64

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %62, %61, %59
  %65 = phi i32 [ 3, %63 ], [ 2, %62 ], [ 1, %61 ], [ 0, %59 ]
  %66 = call fastcc i32 @tps65218_update_bits(ptr noundef nonnull %8, i32 noundef 19, i32 noundef 3, i32 noundef %65, i32 noundef 1) #5
  br label %69

67:                                               ; preds = %59
  %68 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %88

69:                                               ; preds = %64, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 25
  %72 = load ptr, ptr %71, align 8
  %73 = call i32 @of_property_read_variable_u32_array(ptr noundef %72, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i32, ptr %3, align 4
  switch i32 %76, label %81 [
    i32 400000, label %77
    i32 200000, label %77
  ]

77:                                               ; preds = %75, %75
  %78 = icmp eq i32 %76, 400000
  %79 = select i1 %78, i32 64, i32 0
  %80 = call fastcc i32 @tps65218_update_bits(ptr noundef nonnull %8, i32 noundef 20, i32 noundef 64, i32 noundef %79, i32 noundef 1) #5
  br label %83

81:                                               ; preds = %75
  %82 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %88

83:                                               ; preds = %77, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %84 = load ptr, ptr %8, align 4
  %85 = load ptr, ptr %25, align 4
  %86 = call ptr @regmap_irq_get_domain(ptr noundef %85) #5
  %87 = call i32 @mfd_add_devices(ptr noundef %84, i32 noundef -2, ptr noundef nonnull @tps65218_cells, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef %86) #5
  br label %88

88:                                               ; preds = %83, %81, %67, %51, %32, %21, %18, %2
  %89 = phi i32 [ %19, %18 ], [ %30, %32 ], [ %87, %83 ], [ -12, %2 ], [ %26, %21 ], [ -22, %51 ], [ -22, %67 ], [ -22, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
