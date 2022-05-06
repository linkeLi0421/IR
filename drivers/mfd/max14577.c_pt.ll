; ModuleID = '/llk/IR/drivers/mfd/max14577.c_pt.bc'
source_filename = "../drivers/mfd/max14577.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_maxim_charger_currents:\09\09\09\09\09"
module asm "\09.asciz \09\22maxim_charger_currents\22\09\09\09\09\09"
module asm "__kstrtabns_maxim_charger_currents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_maxim_charger_calc_reg_current:\09\09\09\09\09"
module asm "\09.asciz \09\22maxim_charger_calc_reg_current\22\09\09\09\09\09"
module asm "__kstrtabns_maxim_charger_calc_reg_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.maxim_charger_current = type { i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }

@maxim_charger_currents = dso_local constant [3 x %struct.maxim_charger_current] [%struct.maxim_charger_current zeroinitializer, %struct.maxim_charger_current { i32 90000, i32 200000, i32 50000, i32 950000 }, %struct.maxim_charger_current { i32 45000, i32 100000, i32 25000, i32 475000 }], align 4
@__kstrtab_maxim_charger_currents = external dso_local constant [0 x i8], align 1
@__kstrtabns_maxim_charger_currents = external dso_local constant [0 x i8], align 1
@__ksymtab_maxim_charger_currents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @maxim_charger_currents to i32), ptr @__kstrtab_maxim_charger_currents, ptr @__kstrtabns_maxim_charger_currents }, section "___ksymtab_gpl+maxim_charger_currents", align 4
@__kstrtab_maxim_charger_calc_reg_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_maxim_charger_calc_reg_current = external dso_local constant [0 x i8], align 1
@__ksymtab_maxim_charger_calc_reg_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @maxim_charger_calc_reg_current to i32), ptr @__kstrtab_maxim_charger_calc_reg_current, ptr @__kstrtabns_maxim_charger_calc_reg_current }, section "___ksymtab_gpl+maxim_charger_calc_reg_current", align 4
@__initcall__kmod_max14577__256_554_max14577_i2c_init6 = internal global ptr @max14577_i2c_init, section ".initcall6.init", align 4
@max14577_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max14577_i2c_probe, ptr @max14577_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max14577_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max14577_pm, ptr null, ptr null }, ptr @max14577_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_max14577_i2c_exit = internal global ptr @max14577_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author257 = internal constant [92 x i8] c"max14577.author=Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [66 x i8] c"max14577.description=Maxim 14577/77836 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [35 x i8] c"max14577.file=drivers/mfd/max14577\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [21 x i8] c"max14577.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"max14577\00", align 1
@max14577_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14577\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@max14577_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max14577_suspend, ptr @max14577_resume, ptr @max14577_suspend, ptr @max14577_resume, ptr @max14577_suspend, ptr @max14577_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max14577_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max14577\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max77836\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No platform data found.\0A\00", align 1
@max14577_muic_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @max14577_muic_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@max77836_devs = internal constant [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.6, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.8, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.10, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.11, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.12, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.13, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.14, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@max14577_devs = internal constant [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.17, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.19, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.21, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to read DEVICEID register: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Device type: %u (ID: 0x%x, vendor: 0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"max77836-muic\00", align 1
@max77836_muic_irqs = internal constant [14 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }], align 4
@max77836_muic_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.6, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 4, i8 0, i32 3, ptr @max77836_muic_irqs, i32 14, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"maxim,max77836-muic\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"max77836-regulator\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"maxim,max77836-regulator\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"max77836-charger\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"maxim,max77836-charger\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"max77836-battery\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"maxim,max77836-battery\00", align 1
@max14577_irqs = internal constant [12 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }], align 4
@max14577_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 4, i8 0, i32 3, ptr @max14577_irqs, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"max14577-muic\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"maxim,max14577-muic\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"max14577-regulator\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"maxim,max14577-regulator\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"max14577-charger\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"maxim,max14577-charger\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Failed to register PMIC I2C device\0A\00", align 1
@max77836_pmic_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @max77836_muic_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 97, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.23 = private unnamed_addr constant [42 x i8] c"Failed to allocate PMIC register map: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Failed to read PMIC register\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Failed to write PMIC register\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Failed to request PMIC IRQ %d: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"max77836-pmic\00", align 1
@max77836_pmic_irqs = internal constant [2 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }], align 4
@max77836_pmic_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.27, i32 0, i32 0, ptr null, i32 0, i32 36, i32 38, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77836_pmic_irqs, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_max14577_i2c_exit, ptr @__initcall__kmod_max14577__256_554_max14577_i2c_init6, ptr @__ksymtab_maxim_charger_calc_reg_current, ptr @__ksymtab_maxim_charger_currents, ptr @max14577_i2c_exit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @maxim_charger_calc_reg_current(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ugt i32 %1, %2
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.maxim_charger_current, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.maxim_charger_current, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @llvm.umin.i32(i32 %8, i32 %2)
  %19 = sub i32 %18, %15
  %20 = getelementptr inbounds %struct.maxim_charger_current, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %19, %21
  %23 = trunc i32 %22 to i8
  %24 = or i8 %23, 16
  br label %25

25:                                               ; preds = %17, %13
  %26 = phi i8 [ %24, %17 ], [ 0, %13 ]
  store i8 %26, ptr %3, align 1
  br label %27

27:                                               ; preds = %25, %10, %6, %4
  %28 = phi i32 [ -22, %4 ], [ -22, %10 ], [ -22, %6 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max14577_i2c_init() #2 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max14577_i2c_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max14577_i2c_exit() #2 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max14577_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 28, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %148, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  store ptr %10, ptr %13, align 4
  br label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %148

19:                                               ; preds = %14, %12
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 36, i32 noundef 3520) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %148, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %20, ptr %23, align 8
  store ptr %5, ptr %20, align 4
  %24 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 8
  store i32 %26, ptr %27, align 4
  %28 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max14577_muic_regmap_config, ptr noundef null, ptr noundef null) #8
  %29 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 4
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = ptrtoint ptr %28 to i32
  %33 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.2, i32 noundef %32) #9
  br label %148

34:                                               ; preds = %22
  br i1 %8, label %42, label %35

35:                                               ; preds = %34
  %36 = tail call ptr @of_match_device(ptr noundef nonnull @max14577_dt_match, ptr noundef %5) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.of_device_id, ptr %36, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %45

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %41, %38 ], [ %44, %42 ]
  %47 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 0, ptr noundef nonnull %4) #8
  %51 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.4, i32 noundef %50) #9
  br label %62

55:                                               ; preds = %48
  %56 = and i32 %51, 7
  %57 = lshr i32 %51, 3
  %58 = load ptr, ptr %20, align 4
  %59 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %57, 31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.5, i32 noundef %60, i32 noundef %61, i32 noundef %56) #9
  br label %62

62:                                               ; preds = %55, %53
  %63 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 2
  %66 = select i1 %65, ptr @max77836_muic_irq_chip, ptr @max14577_irq_chip
  %67 = select i1 %65, ptr @max77836_devs, ptr @max14577_devs
  %68 = select i1 %65, i32 4, i32 3
  %69 = select i1 %65, i32 8320, i32 8192
  %70 = load ptr, ptr %29, align 4
  %71 = load i32, ptr %27, align 4
  %72 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 6
  %73 = call i32 @regmap_add_irq_chip(ptr noundef %70, i32 noundef %71, i32 noundef %69, i32 noundef 0, ptr noundef nonnull %66, ptr noundef %72) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %62
  %76 = load i32, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %76, i32 noundef %73) #9
  br label %148

77:                                               ; preds = %62
  %78 = load i32, ptr %63, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %128

80:                                               ; preds = %77
  %81 = load ptr, ptr %24, align 4
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = call ptr @i2c_new_dummy_device(ptr noundef %83, i16 noundef zeroext 35) #8
  %85 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 2
  store ptr %84, ptr %85, align 4
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.22) #9
  %89 = load ptr, ptr %85, align 4
  %90 = ptrtoint ptr %89 to i32
  br label %125

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4, i32 8
  store ptr %20, ptr %92, align 8
  %93 = load ptr, ptr %85, align 4
  %94 = call ptr @__devm_regmap_init_i2c(ptr noundef %93, ptr noundef nonnull @max77836_pmic_regmap_config, ptr noundef null, ptr noundef null) #8
  %95 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 5
  store ptr %94, ptr %95, align 4
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = ptrtoint ptr %94 to i32
  %99 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.23, i32 noundef %98) #9
  br label %122

100:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %101 = call i32 @regmap_read(ptr noundef %94, i32 noundef 35, ptr noundef nonnull %3) #8
  %102 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %103 = icmp slt i32 %101, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.24) #9
  br label %122

106:                                              ; preds = %100
  %107 = and i32 %102, 245
  %108 = load ptr, ptr %95, align 4
  %109 = call i32 @regmap_write(ptr noundef %108, i32 noundef 35, i32 noundef %107) #8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.25) #9
  br label %122

113:                                              ; preds = %106
  %114 = load ptr, ptr %95, align 4
  %115 = load i32, ptr %27, align 4
  %116 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 7
  %117 = call i32 @regmap_add_irq_chip(ptr noundef %114, i32 noundef %115, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77836_pmic_irq_chip, ptr noundef %116) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %20, align 4
  %121 = load i32, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.26, i32 noundef %121, i32 noundef %117) #9
  br label %122

122:                                              ; preds = %119, %111, %104, %97
  %123 = phi i32 [ %98, %97 ], [ %101, %104 ], [ %109, %111 ], [ %117, %119 ]
  %124 = load ptr, ptr %85, align 4
  call void @i2c_unregister_device(ptr noundef %124) #8
  br label %125

125:                                              ; preds = %122, %87
  %126 = phi i32 [ %90, %87 ], [ %123, %122 ]
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %125, %113, %77
  %129 = load ptr, ptr %20, align 4
  %130 = call i32 @mfd_add_devices(ptr noundef %129, i32 noundef -1, ptr noundef nonnull %67, i32 noundef %68, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %20, align 4
  %134 = call i32 @device_init_wakeup(ptr noundef %133, i1 noundef zeroext true) #8
  br label %148

135:                                              ; preds = %128
  %136 = load i32, ptr %63, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, ptr %27, align 4
  %140 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 7
  %141 = load ptr, ptr %140, align 4
  call void @regmap_del_irq_chip(i32 noundef %139, ptr noundef %141) #8
  %142 = getelementptr inbounds %struct.max14577, ptr %20, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  call void @i2c_unregister_device(ptr noundef %143) #8
  br label %144

144:                                              ; preds = %138, %135, %125
  %145 = phi i32 [ %126, %125 ], [ %130, %138 ], [ %130, %135 ]
  %146 = load i32, ptr %27, align 4
  %147 = load ptr, ptr %72, align 4
  call void @regmap_del_irq_chip(i32 noundef %146, ptr noundef %147) #8
  br label %148

148:                                              ; preds = %144, %132, %75, %31, %19, %18, %9
  %149 = phi i32 [ %32, %31 ], [ %73, %75 ], [ %145, %144 ], [ 0, %132 ], [ -22, %18 ], [ -12, %9 ], [ -12, %19 ]
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_i2c_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @mfd_remove_devices(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %6, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %13, ptr noundef %15) #8
  %16 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @i2c_unregister_device(ptr noundef %17) #8
  br label %18

18:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max14577_muic_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 6
  ret i1 %4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max77836_muic_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 6
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = add i32 %1, -22
  %7 = icmp ult i32 %6, 19
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = trunc i32 %6 to i19
  %10 = lshr i19 -241613, %9
  %11 = and i19 %10, 1
  %12 = icmp ne i19 %11, 0
  br label %13

13:                                               ; preds = %8, %5, %2
  %14 = phi i1 [ true, %2 ], [ %12, %8 ], [ false, %5 ]
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_suspend(ptr nocapture noundef readonly %0) #4 {
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
  %13 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #8
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  tail call void @disable_irq(i32 noundef %18) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_resume(ptr nocapture noundef readonly %0) #4 {
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
  %13 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #8
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  tail call void @enable_irq(i32 noundef %18) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
