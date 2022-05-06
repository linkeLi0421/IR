; ModuleID = '/llk/IR/drivers/power/supply/power_supply_sysfs.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_charge_behaviour_show:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_charge_behaviour_show\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_charge_behaviour_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_charge_behaviour_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_charge_behaviour_parse\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_charge_behaviour_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.power_supply_attr = type { ptr, [31 x i8], %struct.device_attribute, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.power_supply_propval = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@power_supply_attr_groups = internal global [2 x ptr] [ptr @power_supply_attr_group, ptr null], align 4
@power_supply_attrs = internal global [76 x %struct.power_supply_attr] [%struct.power_supply_attr { ptr @.str.6, [31 x i8] c"STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_STATUS_TEXT, i32 5 }, %struct.power_supply_attr { ptr @.str.7, [31 x i8] c"CHARGE_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 8 }, %struct.power_supply_attr { ptr @.str.8, [31 x i8] c"HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_HEALTH_TEXT, i32 15 }, %struct.power_supply_attr { ptr @.str.9, [31 x i8] c"PRESENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.10, [31 x i8] c"ONLINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.11, [31 x i8] c"AUTHENTIC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.12, [31 x i8] c"TECHNOLOGY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TECHNOLOGY_TEXT, i32 7 }, %struct.power_supply_attr { ptr @.str.13, [31 x i8] c"CYCLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.14, [31 x i8] c"VOLTAGE_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.15, [31 x i8] c"VOLTAGE_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.16, [31 x i8] c"VOLTAGE_MAX_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.17, [31 x i8] c"VOLTAGE_MIN_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.18, [31 x i8] c"VOLTAGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.19, [31 x i8] c"VOLTAGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.20, [31 x i8] c"VOLTAGE_OCV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.21, [31 x i8] c"VOLTAGE_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.22, [31 x i8] c"CURRENT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.23, [31 x i8] c"CURRENT_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.24, [31 x i8] c"CURRENT_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.25, [31 x i8] c"CURRENT_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.26, [31 x i8] c"POWER_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.27, [31 x i8] c"POWER_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.28, [31 x i8] c"CHARGE_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.29, [31 x i8] c"CHARGE_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.30, [31 x i8] c"CHARGE_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.31, [31 x i8] c"CHARGE_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.32, [31 x i8] c"CHARGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.33, [31 x i8] c"CHARGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.34, [31 x i8] c"CHARGE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.35, [31 x i8] c"CONSTANT_CHARGE_CURRENT\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.36, [31 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.37, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.38, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.39, [31 x i8] c"CHARGE_CONTROL_LIMIT\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.40, [31 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.41, [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.42, [31 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.43, [31 x i8] c"CHARGE_BEHAVIOUR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 3 }, %struct.power_supply_attr { ptr @.str.44, [31 x i8] c"INPUT_CURRENT_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.45, [31 x i8] c"INPUT_VOLTAGE_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.46, [31 x i8] c"INPUT_POWER_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.47, [31 x i8] c"ENERGY_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.48, [31 x i8] c"ENERGY_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.49, [31 x i8] c"ENERGY_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.50, [31 x i8] c"ENERGY_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.51, [31 x i8] c"ENERGY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.52, [31 x i8] c"ENERGY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.53, [31 x i8] c"CAPACITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.54, [31 x i8] c"CAPACITY_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.55, [31 x i8] c"CAPACITY_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.56, [31 x i8] c"CAPACITY_ERROR_MARGIN\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.57, [31 x i8] c"CAPACITY_LEVEL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, i32 6 }, %struct.power_supply_attr { ptr @.str.58, [31 x i8] c"TEMP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.59, [31 x i8] c"TEMP_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.60, [31 x i8] c"TEMP_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.61, [31 x i8] c"TEMP_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.62, [31 x i8] c"TEMP_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.63, [31 x i8] c"TEMP_AMBIENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.64, [31 x i8] c"TEMP_AMBIENT_ALERT_MIN\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.65, [31 x i8] c"TEMP_AMBIENT_ALERT_MAX\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.66, [31 x i8] c"TIME_TO_EMPTY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.67, [31 x i8] c"TIME_TO_EMPTY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.68, [31 x i8] c"TIME_TO_FULL_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.69, [31 x i8] c"TIME_TO_FULL_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.70, [31 x i8] c"TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TYPE_TEXT, i32 13 }, %struct.power_supply_attr { ptr @.str.71, [31 x i8] c"USB_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.72, [31 x i8] c"SCOPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_SCOPE_TEXT, i32 3 }, %struct.power_supply_attr { ptr @.str.73, [31 x i8] c"PRECHARGE_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.74, [31 x i8] c"CHARGE_TERM_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.75, [31 x i8] c"CALIBRATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.76, [31 x i8] c"MANUFACTURE_YEAR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.77, [31 x i8] c"MANUFACTURE_MONTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.78, [31 x i8] c"MANUFACTURE_DAY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.79, [31 x i8] c"MODEL_NAME\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.80, [31 x i8] c"MANUFACTURER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.81, [31 x i8] c"SERIAL_NUMBER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }], align 4
@.str = private unnamed_addr constant [73 x i8] c"\014%s: Property %d skipped because it is missing from power_supply_attrs\0A\00", align 1
@__func__.power_supply_init_attrs = private unnamed_addr constant [24 x i8] c"power_supply_init_attrs\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_err_%d\00", align 1
@__power_supply_attrs = internal global [77 x ptr] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"POWER_SUPPLY_NAME=%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT = internal constant [3 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"driver reporting unsupported charge behaviour\0A\00", align 1
@__kstrtab_power_supply_charge_behaviour_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_charge_behaviour_show = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_charge_behaviour_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_charge_behaviour_show to i32), ptr @__kstrtab_power_supply_charge_behaviour_show, ptr @__kstrtabns_power_supply_charge_behaviour_show }, section "___ksymtab_gpl+power_supply_charge_behaviour_show", align 4
@__kstrtab_power_supply_charge_behaviour_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_charge_behaviour_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_charge_behaviour_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_charge_behaviour_parse to i32), ptr @__kstrtab_power_supply_charge_behaviour_parse, ptr @__kstrtabns_power_supply_charge_behaviour_parse }, section "___ksymtab_gpl+power_supply_charge_behaviour_parse", align 4
@power_supply_attr_group = internal constant %struct.attribute_group { ptr null, ptr @power_supply_attr_is_visible, ptr null, ptr @__power_supply_attrs, ptr null }, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@POWER_SUPPLY_STATUS_TEXT = internal constant [5 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"CHARGE_TYPE\00", align 1
@POWER_SUPPLY_CHARGE_TYPE_TEXT = internal constant [8 x ptr] [ptr @.str.82, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"HEALTH\00", align 1
@POWER_SUPPLY_HEALTH_TEXT = internal constant [15 x ptr] [ptr @.str.82, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"PRESENT\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"AUTHENTIC\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"TECHNOLOGY\00", align 1
@POWER_SUPPLY_TECHNOLOGY_TEXT = internal constant [7 x ptr] [ptr @.str.82, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"CYCLE_COUNT\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MAX\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MIN\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MAX_DESIGN\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MIN_DESIGN\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"VOLTAGE_NOW\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"VOLTAGE_AVG\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"VOLTAGE_OCV\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"VOLTAGE_BOOT\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"CURRENT_MAX\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CURRENT_NOW\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"CURRENT_AVG\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"CURRENT_BOOT\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"POWER_NOW\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"POWER_AVG\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"CHARGE_FULL_DESIGN\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"CHARGE_EMPTY_DESIGN\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"CHARGE_FULL\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"CHARGE_EMPTY\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"CHARGE_NOW\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"CHARGE_AVG\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"CHARGE_COUNTER\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_CURRENT\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_VOLTAGE\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"CHARGE_CONTROL_LIMIT\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"CHARGE_BEHAVIOUR\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"INPUT_CURRENT_LIMIT\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"INPUT_VOLTAGE_LIMIT\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"INPUT_POWER_LIMIT\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"ENERGY_FULL_DESIGN\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"ENERGY_EMPTY_DESIGN\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"ENERGY_FULL\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"ENERGY_EMPTY\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"ENERGY_NOW\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"ENERGY_AVG\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"CAPACITY\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MIN\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MAX\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"CAPACITY_ERROR_MARGIN\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"CAPACITY_LEVEL\00", align 1
@POWER_SUPPLY_CAPACITY_LEVEL_TEXT = internal constant [6 x ptr] [ptr @.str.82, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.86], align 4
@.str.58 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"TEMP_MAX\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"TEMP_MIN\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MIN\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MAX\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"TEMP_AMBIENT\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MIN\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MAX\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_NOW\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_AVG\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_NOW\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_AVG\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@POWER_SUPPLY_TYPE_TEXT = internal constant [13 x ptr] [ptr @.str.82, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], align 4
@.str.71 = private unnamed_addr constant [9 x i8] c"USB_TYPE\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"SCOPE\00", align 1
@POWER_SUPPLY_SCOPE_TEXT = internal constant [3 x ptr] [ptr @.str.82, ptr @.str.130, ptr @.str.131], align 4
@.str.73 = private unnamed_addr constant [18 x i8] c"PRECHARGE_CURRENT\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"CHARGE_TERM_CURRENT\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"CALIBRATE\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"MANUFACTURE_YEAR\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"MANUFACTURE_MONTH\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"MANUFACTURE_DAY\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"MODEL_NAME\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"SERIAL_NUMBER\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"Not charging\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"Trickle\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Adaptive\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"Long Life\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"Good\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"Overheat\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"Dead\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"Over voltage\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"Unspecified failure\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"Cold\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"Watchdog timer expire\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"Safety timer expire\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"Over current\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"Calibration required\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"Warm\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"Cool\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"No battery\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"Li-ion\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Li-poly\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"LiFe\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"LiMn\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"UPS\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"Mains\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"USB_DCP\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"USB_CDP\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"USB_ACA\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"USB_C\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"USB_PD\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"USB_PD_DRP\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"BrickID\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"Wireless\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@power_supply_show_property._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.power_supply_show_property = private unnamed_addr constant [27 x i8] c"power_supply_show_property\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c"driver failed to report `%s' property: %zd\0A\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@POWER_SUPPLY_USB_TYPE_TEXT = internal unnamed_addr constant [10 x ptr] [ptr @.str.82, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.128], align 4
@.str.135 = private unnamed_addr constant [45 x i8] c"driver reporting unsupported connected type\0A\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"ACA\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"PD_DRP\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"PD_PPS\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"inhibit-charge\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"force-discharge\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_power_supply_charge_behaviour_parse, ptr @__ksymtab_power_supply_charge_behaviour_show], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_init_attrs(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_type, ptr %0, i32 0, i32 1
  store ptr @power_supply_attr_groups, ptr %2, align 4
  br label %3

3:                                                ; preds = %29, %1
  %4 = phi i32 [ 0, %1 ], [ %35, %29 ]
  %5 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_supply_init_attrs, i32 noundef %4) #6
  %10 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4, i32 1
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %4)
  br label %29

12:                                               ; preds = %3
  %13 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %16, %12
  %17 = phi i8 [ %27, %16 ], [ %14, %12 ]
  %18 = phi ptr [ %26, %16 ], [ %13, %12 ]
  %19 = zext i8 %17 to i32
  %20 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = add i8 %17, 32
  %25 = select i1 %23, i8 %17, i8 %24
  store i8 %25, ptr %18, align 1
  %26 = getelementptr i8, ptr %18, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %16

29:                                               ; preds = %16, %12, %8
  %30 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4, i32 2
  %31 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4, i32 1
  store ptr %31, ptr %30, align 4
  %32 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4, i32 2, i32 1
  store ptr @power_supply_show_property, ptr %32, align 4
  %33 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %4, i32 2, i32 2
  store ptr @power_supply_store_property, ptr %33, align 4
  %34 = getelementptr [77 x ptr], ptr @__power_supply_attrs, i32 0, i32 %4
  store ptr %30, ptr %34, align 4
  %35 = add nuw nsw i32 %4, 1
  %36 = icmp eq i32 %35, 76
  br i1 %36, label %37, label %3

37:                                               ; preds = %29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_supply_show_property(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %union.power_supply_propval, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -36
  %8 = ptrtoint ptr %7 to i32
  %9 = sub i32 %8, ptrtoint (ptr @power_supply_attrs to i32)
  %10 = sdiv exact i32 %9, 60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %11 = icmp eq i32 %9, 3840
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.power_supply_desc, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %4, align 4
  br label %25

16:                                               ; preds = %3
  %17 = call i32 @power_supply_get_property(ptr noundef %6, i32 noundef %10, ptr noundef nonnull %4) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  switch i32 %17, label %20 [
    i32 -61, label %80
    i32 -11, label %80
    i32 -19, label %80
  ]

20:                                               ; preds = %19
  %21 = call i32 @___ratelimit(ptr noundef nonnull @power_supply_show_property._rs, ptr noundef nonnull @__func__.power_supply_show_property) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.132, ptr noundef %24, i32 noundef %17) #6
  br label %80

25:                                               ; preds = %16, %12
  %26 = getelementptr i8, ptr %1, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %30, %27
  %32 = icmp sgt i32 %30, -1
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %1, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr ptr, ptr %36, i32 %30
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.133, ptr noundef %38)
  br label %80

40:                                               ; preds = %29, %25
  switch i32 %10, label %77 [
    i32 65, label %41
    i32 73, label %74
    i32 74, label %74
    i32 75, label %74
  ]

41:                                               ; preds = %40
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.power_supply_desc, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.power_supply_desc, ptr %42, i32 0, i32 2
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ 0, %46 ], [ %64, %48 ]
  %50 = phi i1 [ false, %46 ], [ %61, %48 ]
  %51 = phi i32 [ 0, %46 ], [ %63, %48 ]
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr i32, ptr %52, i32 %49
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %55, %54
  %57 = getelementptr i8, ptr %2, i32 %51
  %58 = getelementptr [10 x ptr], ptr @POWER_SUPPLY_USB_TYPE_TEXT, i32 0, i32 %54
  %59 = load ptr, ptr %58, align 4
  %60 = select i1 %56, ptr @.str.3, ptr @.str.4
  %61 = select i1 %56, i1 true, i1 %50
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %57, ptr noundef nonnull %60, ptr noundef %59) #7
  %63 = add i32 %62, %51
  %64 = add nuw i32 %49, 1
  %65 = load i32, ptr %43, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %48, label %67

67:                                               ; preds = %48
  br i1 %61, label %69, label %68

68:                                               ; preds = %67, %41
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.135) #6
  br label %80

69:                                               ; preds = %67
  %70 = icmp eq i32 %63, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %69
  %72 = add i32 %63, -1
  %73 = getelementptr i8, ptr %2, i32 %72
  store i8 10, ptr %73, align 1
  br label %80

74:                                               ; preds = %40, %40, %40
  %75 = load ptr, ptr %4, align 4
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.133, ptr noundef %75)
  br label %80

77:                                               ; preds = %40
  %78 = load i32, ptr %4, align 4
  %79 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.134, i32 noundef %78)
  br label %80

80:                                               ; preds = %77, %74, %71, %69, %68, %34, %23, %20, %19, %19, %19
  %81 = phi i32 [ %39, %34 ], [ %17, %23 ], [ %17, %20 ], [ %17, %19 ], [ %79, %77 ], [ %76, %74 ], [ %17, %19 ], [ %17, %19 ], [ -22, %68 ], [ %63, %71 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_supply_store_property(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %union.power_supply_propval, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %1, i32 -36
  %10 = ptrtoint ptr %9 to i32
  %11 = sub i32 %10, ptrtoint (ptr @power_supply_attrs to i32)
  %12 = sdiv exact i32 %11, 60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %13 = getelementptr i8, ptr %1, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = getelementptr i8, ptr %1, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__sysfs_match_string(ptr noundef %18, i32 noundef %14, ptr noundef %2) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %22 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %6) #7
  %23 = icmp slt i32 %22, 0
  %24 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br i1 %23, label %30, label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ %19, %16 ]
  store i32 %26, ptr %5, align 4
  %27 = call i32 @power_supply_set_property(ptr noundef %8, i32 noundef %12, ptr noundef nonnull %5) #7
  %28 = icmp slt i32 %27, 0
  %29 = select i1 %28, i32 %27, i32 %3
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %22, %21 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_uevent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %80, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %9
  %14 = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %15 = inttoptr i32 %14 to ptr
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %80, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.power_supply_desc, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr getelementptr inbounds ([76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 64, i32 4), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = icmp slt i32 %21, %22
  %26 = icmp sgt i32 %21, -1
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds ([76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 64, i32 3), align 4
  %30 = getelementptr ptr, ptr %29, i32 %21
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.133, ptr noundef %31) #7
  br label %35

33:                                               ; preds = %24, %17
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.134, i32 noundef %21) #7
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i32 [ %32, %28 ], [ %34, %33 ]
  switch i32 %36, label %37 [
    i32 -19, label %47
    i32 -61, label %47
  ]

37:                                               ; preds = %35
  %38 = icmp slt i32 %36, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @strchr(ptr noundef nonnull %15, i32 noundef 10) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i8 0, ptr %40, align 1
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr getelementptr inbounds ([76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 64), align 4
  %45 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.144, ptr noundef %44, ptr noundef nonnull %15) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %43, %35, %35
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.power_supply_desc, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %72, %47
  %53 = phi ptr [ %74, %72 ], [ %48, %47 ]
  %54 = phi i32 [ %73, %72 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.power_supply_desc, ptr %53, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i32, ptr %56, i32 %54
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %58
  %60 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %58, i32 2
  %61 = tail call i32 @power_supply_show_property(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %15) #7
  switch i32 %61, label %62 [
    i32 -19, label %72
    i32 -61, label %72
  ]

62:                                               ; preds = %52
  %63 = icmp slt i32 %61, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %62
  %65 = tail call ptr @strchr(ptr noundef nonnull %15, i32 noundef 10) #7
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i8 0, ptr %65, align 1
  br label %68

68:                                               ; preds = %67, %64
  %69 = load ptr, ptr %59, align 4
  %70 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.144, ptr noundef %69, ptr noundef nonnull %15) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68, %52, %52
  %73 = add nuw i32 %54, 1
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.power_supply_desc, ptr %74, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %52, label %78

78:                                               ; preds = %72, %68, %62, %47, %43, %37
  %79 = phi i32 [ %45, %43 ], [ %36, %37 ], [ 0, %47 ], [ %70, %68 ], [ 0, %72 ], [ %61, %62 ]
  tail call void @free_pages(i32 noundef %14, i32 noundef 0) #7
  br label %80

80:                                               ; preds = %78, %13, %9, %6, %2
  %81 = phi i32 [ %79, %78 ], [ 0, %6 ], [ 0, %2 ], [ %11, %9 ], [ -12, %13 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_charge_behaviour_show(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.145) #7
  %11 = xor i1 %8, true
  %12 = and i32 %1, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %25

14:                                               ; preds = %4
  br i1 %6, label %17, label %15

15:                                               ; preds = %14
  %16 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.145) #7
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ %16, %15 ], [ 0, %14 ]
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  %21 = icmp ne i32 %2, 1
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = xor i1 %8, true
  br i1 %20, label %38, label %25

25:                                               ; preds = %23, %9
  %26 = phi i32 [ %10, %9 ], [ %18, %23 ]
  %27 = phi i1 [ %11, %9 ], [ %24, %23 ]
  %28 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.146) #7
  %29 = add i32 %28, %26
  br label %38

30:                                               ; preds = %17
  %31 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.146) #7
  %32 = add i32 %31, %18
  br label %33

33:                                               ; preds = %30, %9
  %34 = phi i1 [ %11, %9 ], [ true, %30 ]
  %35 = phi i32 [ %10, %9 ], [ %32, %30 ]
  %36 = and i32 %1, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %46

38:                                               ; preds = %25, %23
  %39 = phi i1 [ %27, %25 ], [ %24, %23 ]
  %40 = phi i32 [ %29, %25 ], [ %18, %23 ]
  %41 = and i32 %1, 4
  %42 = icmp eq i32 %41, 0
  %43 = icmp ne i32 %2, 2
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  br i1 %42, label %54, label %46

46:                                               ; preds = %45, %33
  %47 = phi i1 [ %34, %33 ], [ %39, %45 ]
  %48 = phi i32 [ %35, %33 ], [ %40, %45 ]
  %49 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef %48, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.147) #7
  %50 = add i32 %49, %48
  br i1 %47, label %58, label %57

51:                                               ; preds = %38
  %52 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.147) #7
  %53 = add i32 %52, %40
  br label %58

54:                                               ; preds = %45, %33
  %55 = phi i1 [ %39, %45 ], [ %34, %33 ]
  %56 = phi i32 [ %40, %45 ], [ %35, %33 ]
  br i1 %55, label %58, label %57

57:                                               ; preds = %54, %46
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  br label %64

58:                                               ; preds = %54, %51, %46
  %59 = phi i32 [ %53, %51 ], [ %56, %54 ], [ %50, %46 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = add i32 %59, -1
  %63 = getelementptr i8, ptr %3, i32 %62
  store i8 10, ptr %63, align 1
  br label %64

64:                                               ; preds = %61, %58, %57
  %65 = phi i32 [ -22, %57 ], [ %59, %61 ], [ 0, %58 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_charge_behaviour_parse(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 noundef 3, ptr noundef %1) #7
  %4 = icmp slt i32 %3, 0
  %5 = shl nuw i32 1, %3
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 -22, i32 %3
  %9 = select i1 %4, i32 %3, i32 %8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @power_supply_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 64
  br i1 %10, label %35, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.power_supply_desc, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.power_supply_desc, ptr %12, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  br label %22

19:                                               ; preds = %22
  %20 = add nuw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %35, label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %24 = getelementptr i32, ptr %18, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %19

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.power_supply_desc, ptr %12, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef %5, i32 noundef %2) #7
  %33 = icmp sgt i32 %32, 0
  %34 = select i1 %33, i16 420, i16 292
  br label %35

35:                                               ; preds = %31, %27, %19, %11, %9, %3
  %36 = phi i16 [ 0, %3 ], [ 292, %9 ], [ %34, %31 ], [ 292, %27 ], [ 0, %11 ], [ 0, %19 ]
  ret i16 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
