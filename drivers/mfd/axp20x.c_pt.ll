; ModuleID = '/llk/IR/drivers/mfd/axp20x.c_pt.bc'
source_filename = "../drivers/mfd/axp20x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axp20x_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22axp20x_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_axp20x_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axp20x_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22axp20x_device_probe\22\09\09\09\09\09"
module asm "__kstrtabns_axp20x_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axp20x_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22axp20x_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_axp20x_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.65 }
%union.anon.65 = type { %union.anon.66 }
%union.anon.66 = type { [1 x i64] }
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
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"Unable to match OF ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to match ACPI ID and data\0A\00", align 1
@axp152_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp152_pek_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp152_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 157, ptr @axp152_writeable_table, ptr null, ptr @axp152_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@axp20x_cells = internal constant [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.15, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp20x_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.18, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.20, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.22, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.24, i64 0, i8 0, ptr null, i32 4, ptr @axp20x_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp20x_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 207, ptr @axp20x_writeable_table, ptr null, ptr @axp20x_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@axp221_cells = internal constant [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.37, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.39, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp22x_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 230, ptr @axp22x_writeable_table, ptr null, ptr @axp22x_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@axp223_cells = internal constant [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.37, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.42, i64 0, i8 0, ptr null, i32 2, ptr @axp22x_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp288_cells = internal constant [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @axp288_adc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 4, ptr @axp288_extcon_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 9, ptr @axp288_charger_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @axp288_fuel_gauge_sw_node, ptr null, i64 0, i8 0, ptr null, i32 6, ptr @axp288_fuel_gauge_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp288_power_button_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp288_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 237, ptr @axp288_writeable_table, ptr null, ptr @axp288_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@axp803_cells = internal constant [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp803_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.53, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.54, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.55, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.56, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.57, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.58, i64 0, i8 0, ptr null, i32 2, ptr @axp803_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"x-powers,self-working-mode\00", align 1
@axp806_self_working_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp806_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp806_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp806_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr @axp806_writeable_table, ptr null, ptr @axp806_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@axp809_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp809_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@axp813_cells = internal constant [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @axp803_pek_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.53, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.54, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.55, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.56, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.57, i64 0, i8 0, ptr null, i32 3, ptr @axp20x_ac_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.58, i64 0, i8 0, ptr null, i32 2, ptr @axp803_usb_power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"unsupported AXP20X ID %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"AXP20x variant %s found\0A\00", align 1
@axp20x_model_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 4
@__kstrtab_axp20x_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_axp20x_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_axp20x_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axp20x_match_device to i32), ptr @__kstrtab_axp20x_match_device, ptr @__kstrtabns_axp20x_match_device }, section "___ksymtab+axp20x_match_device", align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"x-powers,master-mode\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to add MFD devices: %d\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@axp20x_pm_power_off = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"AXP20X driver loaded\0A\00", align 1
@__kstrtab_axp20x_device_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_axp20x_device_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_axp20x_device_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axp20x_device_probe to i32), ptr @__kstrtab_axp20x_device_probe, ptr @__kstrtabns_axp20x_device_probe }, section "___ksymtab+axp20x_device_probe", align 4
@__kstrtab_axp20x_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_axp20x_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_axp20x_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axp20x_device_remove to i32), ptr @__kstrtab_axp20x_device_remove, ptr @__kstrtabns_axp20x_device_remove }, section "___ksymtab+axp20x_device_remove", align 4
@__UNIQUE_ID_description248 = internal constant [51 x i8] c"axp20x.description=PMIC MFD core driver for AXP20X\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [46 x i8] c"axp20x.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [31 x i8] c"axp20x.file=drivers/mfd/axp20x\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [19 x i8] c"axp20x.license=GPL\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"axp20x-pek\00", align 1
@axp152_pek_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 12, i32 12, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"PEK_DBR\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"PEK_DBF\00", align 1
@axp152_writeable_table = internal constant %struct.regmap_access_table { ptr @axp152_writeable_ranges, i32 2, ptr null, i32 0 }, align 4
@axp152_volatile_table = internal constant %struct.regmap_access_table { ptr @axp152_volatile_ranges, i32 3, ptr null, i32 0 }, align 4
@axp152_writeable_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 18, i32 74 }, %struct.regmap_range { i32 128, i32 157 }], align 4
@axp152_volatile_ranges = internal constant [3 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 1 }, %struct.regmap_range { i32 64, i32 74 }, %struct.regmap_range { i32 151, i32 151 }], align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"axp152_irq_chip\00", align 1
@axp152_regmap_irqs = internal constant [18 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }], align 4
@axp152_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.12, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 3, ptr @axp152_regmap_irqs, i32 18, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"axp20x-gpio\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"x-powers,axp209-gpio\00", align 1
@axp20x_pek_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 33, i32 33, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 34, i32 34, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"axp20x-regulator\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"axp20x-adc\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"x-powers,axp209-adc\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"axp20x-battery-power-supply\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"x-powers,axp209-battery-power-supply\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"axp20x-ac-power-supply\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"x-powers,axp202-ac-power-supply\00", align 1
@axp20x_ac_power_supply_resources = internal constant [3 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr @.str.25, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr @.str.26, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1, i32 1, ptr @.str.27, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"axp20x-usb-power-supply\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"x-powers,axp202-usb-power-supply\00", align 1
@axp20x_usb_power_supply_resources = internal constant [4 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.28, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.29, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 26, i32 26, ptr @.str.30, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.31, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"ACIN_PLUGIN\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"ACIN_REMOVAL\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ACIN_OVER_V\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"VBUS_PLUGIN\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"VBUS_REMOVAL\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"VBUS_VALID\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"VBUS_NOT_VALID\00", align 1
@axp20x_writeable_table = internal constant %struct.regmap_access_table { ptr @axp20x_writeable_ranges, i32 4, ptr null, i32 0 }, align 4
@axp20x_volatile_table = internal constant %struct.regmap_access_table { ptr @axp20x_volatile_ranges, i32 6, ptr null, i32 0 }, align 4
@axp20x_writeable_ranges = internal constant [4 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 76 }, %struct.regmap_range { i32 51, i32 52 }, %struct.regmap_range { i32 128, i32 185 }, %struct.regmap_range { i32 186, i32 207 }], align 4
@axp20x_volatile_ranges = internal constant [6 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 51, i32 52 }, %struct.regmap_range { i32 64, i32 76 }, %struct.regmap_range { i32 86, i32 127 }, %struct.regmap_range { i32 148, i32 149 }, %struct.regmap_range { i32 185, i32 187 }], align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"axp20x_irq_chip\00", align 1
@axp20x_regmap_irqs = internal constant [39 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }], align 4
@axp20x_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.32, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 5, ptr @axp20x_regmap_irqs, i32 39, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.34 = private unnamed_addr constant [11 x i8] c"axp221-pek\00", align 1
@axp22x_pek_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 22, i32 22, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 23, i32 23, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"axp22x-adc\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"x-powers,axp221-adc\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"x-powers,axp221-ac-power-supply\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"x-powers,axp221-battery-power-supply\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"x-powers,axp221-usb-power-supply\00", align 1
@axp22x_usb_power_supply_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.28, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.29, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@axp22x_writeable_table = internal constant %struct.regmap_access_table { ptr @axp22x_writeable_ranges, i32 3, ptr null, i32 0 }, align 4
@axp22x_volatile_table = internal constant %struct.regmap_access_table { ptr @axp22x_volatile_ranges, i32 5, ptr null, i32 0 }, align 4
@axp22x_writeable_ranges = internal constant [3 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 76 }, %struct.regmap_range { i32 51, i32 53 }, %struct.regmap_range { i32 128, i32 230 }], align 4
@axp22x_volatile_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 64, i32 76 }, %struct.regmap_range { i32 148, i32 148 }, %struct.regmap_range { i32 86, i32 127 }, %struct.regmap_range { i32 185, i32 185 }], align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"axp22x_irq_chip\00", align 1
@axp22x_regmap_irqs = internal constant [26 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }], align 4
@axp22x_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.40, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 5, ptr @axp22x_regmap_irqs, i32 26, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.42 = private unnamed_addr constant [33 x i8] c"x-powers,axp223-usb-power-supply\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"axp288_adc\00", align 1
@axp288_adc_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.48, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"axp288_extcon\00", align 1
@axp288_extcon_resources = internal constant [4 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 40, i32 40, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 41, i32 41, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.45 = private unnamed_addr constant [15 x i8] c"axp288_charger\00", align 1
@axp288_charger_resources = internal constant [9 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 11, i32 11, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 20, i32 20, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 21, i32 21, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 22, i32 22, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 23, i32 23, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.46 = private unnamed_addr constant [18 x i8] c"axp288_fuel_gauge\00", align 1
@axp288_fuel_gauge_sw_node = internal constant %struct.software_node { ptr @.str.46, ptr null, ptr @axp288_fuel_gauge_properties }, align 4
@axp288_fuel_gauge_resources = internal constant [6 x %struct.resource] [%struct.resource { i32 16, i32 16, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 17, i32 17, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 18, i32 18, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 19, i32 19, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 24, i32 24, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 25, i32 25, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@axp288_power_button_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 38, i32 38, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 37, i32 37, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.47 = private unnamed_addr constant [17 x i8] c"axp288_pmic_acpi\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"GPADC\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"supplied-from\00", align 1
@axp288_fuel_gauge_suppliers = internal constant [1 x ptr] [ptr @.str.45], align 4
@axp288_fuel_gauge_properties = internal constant <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.49, i32 4, i8 0, i32 4, { ptr, [4 x i8] } { ptr @axp288_fuel_gauge_suppliers, [4 x i8] undef } }, %struct.property_entry zeroinitializer }>, align 8
@axp288_writeable_table = internal constant %struct.regmap_access_table { ptr @axp288_writeable_ranges, i32 2, ptr null, i32 0 }, align 4
@axp288_volatile_table = internal constant %struct.regmap_access_table { ptr @axp288_volatile_ranges, i32 10, ptr null, i32 0 }, align 4
@axp288_writeable_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 77 }, %struct.regmap_range { i32 128, i32 237 }], align 4
@axp288_volatile_ranges = internal constant [10 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 16, i32 42 }, %struct.regmap_range { i32 44, i32 44 }, %struct.regmap_range { i32 47, i32 48 }, %struct.regmap_range { i32 53, i32 53 }, %struct.regmap_range { i32 64, i32 127 }, %struct.regmap_range { i32 138, i32 138 }, %struct.regmap_range { i32 146, i32 148 }, %struct.regmap_range { i32 160, i32 161 }, %struct.regmap_range { i32 185, i32 229 }], align 4
@.str.51 = private unnamed_addr constant [16 x i8] c"axp288_irq_chip\00", align 1
@axp288_regmap_irqs = internal constant [42 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 2, %struct.regmap_irq_type zeroinitializer }], align 4
@axp288_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.51, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 6, ptr @axp288_regmap_irqs, i32 42, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@axp803_pek_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.53 = private unnamed_addr constant [21 x i8] c"x-powers,axp813-gpio\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"axp813-adc\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"x-powers,axp813-adc\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"x-powers,axp813-battery-power-supply\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"x-powers,axp813-ac-power-supply\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"x-powers,axp813-usb-power-supply\00", align 1
@axp803_usb_power_supply_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.28, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.29, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"axp803\00", align 1
@axp803_regmap_irqs = internal constant [35 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }], align 4
@axp803_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.59, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 6, ptr @axp803_regmap_irqs, i32 35, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@axp806_pek_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 11, i32 11, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@axp806_writeable_table = internal constant %struct.regmap_access_table { ptr @axp806_writeable_ranges, i32 5, ptr null, i32 0 }, align 4
@axp806_volatile_table = internal constant %struct.regmap_access_table { ptr @axp806_volatile_ranges, i32 1, ptr null, i32 0 }, align 4
@axp806_writeable_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 7 }, %struct.regmap_range { i32 16, i32 38 }, %struct.regmap_range { i32 64, i32 65 }, %struct.regmap_range { i32 72, i32 73 }, %struct.regmap_range { i32 255, i32 255 }], align 4
@axp806_volatile_ranges = internal constant [1 x %struct.regmap_range] [%struct.regmap_range { i32 72, i32 73 }], align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"axp806\00", align 1
@axp806_regmap_irqs = internal constant [12 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }], align 4
@axp806_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.61, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 2, ptr @axp806_regmap_irqs, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@axp809_pek_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.10, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.11, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"axp809\00", align 1
@axp809_regmap_irqs = internal constant [33 x %struct.regmap_irq] [%struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }], align 4
@axp809_regmap_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.63, i32 0, i32 0, ptr null, i32 0, i32 72, i32 64, i32 0, i32 72, i32 0, i32 0, ptr null, i32 0, i8 6, i8 0, i32 5, ptr @axp809_regmap_irqs, i32 33, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"AXP152\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"AXP202\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"AXP209\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"AXP221\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"AXP223\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"AXP288\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"AXP803\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"AXP806\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"AXP809\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"AXP813\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_axp20x_device_probe, ptr @__ksymtab_axp20x_device_remove, ptr @__ksymtab_axp20x_match_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axp20x_match_device(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @of_match_device(ptr noundef %10, ptr noundef %2) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #4
  br label %85

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  switch i32 %17, label %80 [
    i32 0, label %20
    i32 1, label %25
    i32 2, label %25
    i32 3, label %30
    i32 4, label %35
    i32 5, label %40
    i32 6, label %46
    i32 7, label %51
    i32 8, label %70
    i32 9, label %75
  ]

19:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  br label %85

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp152_cells, ptr %22, align 4
  %23 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp152_regmap_config, ptr %23, align 4
  %24 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp152_regmap_irq_chip, ptr %24, align 4
  br label %81

25:                                               ; preds = %14, %14
  %26 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp20x_cells, ptr %27, align 4
  %28 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp20x_regmap_config, ptr %28, align 4
  %29 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp20x_regmap_irq_chip, ptr %29, align 4
  br label %81

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp221_cells, ptr %32, align 4
  %33 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp22x_regmap_config, ptr %33, align 4
  %34 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp22x_regmap_irq_chip, ptr %34, align 4
  br label %81

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 6, ptr %36, align 4
  %37 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp223_cells, ptr %37, align 4
  %38 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp22x_regmap_config, ptr %38, align 4
  %39 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp22x_regmap_irq_chip, ptr %39, align 4
  br label %81

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp288_cells, ptr %41, align 4
  %42 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 6, ptr %42, align 4
  %43 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp288_regmap_config, ptr %43, align 4
  %44 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp288_regmap_irq_chip, ptr %44, align 4
  %45 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 2
  store i32 8, ptr %45, align 4
  br label %81

46:                                               ; preds = %14
  %47 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 7, ptr %47, align 4
  %48 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp803_cells, ptr %48, align 4
  %49 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp288_regmap_config, ptr %49, align 4
  %50 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp803_regmap_irq_chip, ptr %50, align 4
  br label %81

51:                                               ; preds = %14
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = tail call ptr @of_find_property(ptr noundef %54, ptr noundef nonnull @.str.2, ptr noundef null) #3
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ 1, %61 ], [ 2, %57 ]
  %64 = phi ptr [ @axp806_cells, %61 ], [ @axp806_self_working_cells, %57 ]
  %65 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 %63, ptr %65, align 4
  %66 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp806_regmap_config, ptr %67, align 4
  %68 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp806_regmap_irq_chip, ptr %68, align 4
  %69 = load i32, ptr %18, align 4
  br label %81

70:                                               ; preds = %14
  %71 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp809_cells, ptr %72, align 4
  %73 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp22x_regmap_config, ptr %73, align 4
  %74 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp809_regmap_irq_chip, ptr %74, align 4
  br label %81

75:                                               ; preds = %14
  %76 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  store i32 7, ptr %76, align 4
  %77 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  store ptr @axp813_cells, ptr %77, align 4
  %78 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 8
  store ptr @axp288_regmap_config, ptr %78, align 4
  %79 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  store ptr @axp803_regmap_irq_chip, ptr %79, align 4
  br label %81

80:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %17) #4
  br label %85

81:                                               ; preds = %75, %70, %62, %46, %40, %35, %30, %25, %20
  %82 = phi i32 [ 0, %20 ], [ %17, %25 ], [ 3, %30 ], [ 4, %35 ], [ 5, %40 ], [ 6, %46 ], [ %69, %62 ], [ 8, %70 ], [ 9, %75 ]
  %83 = getelementptr [10 x ptr], ptr @axp20x_model_names, i32 0, i32 %82
  %84 = load ptr, ptr %83, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %84) #4
  br label %85

85:                                               ; preds = %81, %80, %19, %13
  %86 = phi i32 [ -22, %80 ], [ 0, %81 ], [ -19, %13 ], [ -19, %19 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axp20x_device_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef null) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef null) #3
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i32 16, i32 0
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi i32 [ 0, %5 ], [ %17, %11 ]
  %20 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 255, i32 noundef %19) #3
  br label %23

23:                                               ; preds = %18, %1
  %24 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 8320
  %33 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 4
  %36 = tail call i32 @regmap_add_irq_chip(ptr noundef %29, i32 noundef %25, i32 noundef %32, i32 noundef -1, ptr noundef %34, ptr noundef %35) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.6, i32 noundef %36) #4
  br label %59

40:                                               ; preds = %27, %23
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @mfd_add_devices(ptr noundef %41, i32 noundef -1, ptr noundef %43, i32 noundef %45, ptr noundef null, i32 noundef 0, ptr noundef null) #3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.7, i32 noundef %46) #4
  %50 = load i32, ptr %24, align 4
  %51 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %50, ptr noundef %52) #3
  br label %59

53:                                               ; preds = %40
  %54 = load ptr, ptr @pm_power_off, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store ptr %0, ptr @axp20x_pm_power_off, align 4
  store ptr @axp20x_power_off, ptr @pm_power_off, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.8) #4
  br label %59

59:                                               ; preds = %57, %48, %38
  %60 = phi i32 [ %36, %38 ], [ %46, %48 ], [ 0, %57 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @axp20x_power_off() #0 {
  %1 = load ptr, ptr @axp20x_pm_power_off, align 4
  %2 = getelementptr inbounds %struct.axp20x_dev, ptr %1, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.axp20x_dev, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 50, i32 noundef 128) #3
  tail call void @msleep(i32 noundef 500) #3
  br label %9

9:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @axp20x_device_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @axp20x_pm_power_off, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @axp20x_pm_power_off, align 4
  store ptr null, ptr @pm_power_off, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr %0, align 4
  tail call void @mfd_remove_devices(ptr noundef %6) #3
  %7 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.axp20x_dev, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %8, ptr noundef %10) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
