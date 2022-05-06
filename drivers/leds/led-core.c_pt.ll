; ModuleID = '/llk/IR/drivers/leds/led-core.c_pt.bc'
source_filename = "../drivers/leds/led-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_leds_list_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22leds_list_lock\22\09\09\09\09\09"
module asm "__kstrtabns_leds_list_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_leds_list:\09\09\09\09\09"
module asm "\09.asciz \09\22leds_list\22\09\09\09\09\09"
module asm "__kstrtabns_leds_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_colors:\09\09\09\09\09"
module asm "\09.asciz \09\22led_colors\22\09\09\09\09\09"
module asm "__kstrtabns_led_colors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_init_core:\09\09\09\09\09"
module asm "\09.asciz \09\22led_init_core\22\09\09\09\09\09"
module asm "__kstrtabns_led_init_core:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_blink_set:\09\09\09\09\09"
module asm "\09.asciz \09\22led_blink_set\22\09\09\09\09\09"
module asm "__kstrtabns_led_blink_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_blink_set_oneshot:\09\09\09\09\09"
module asm "\09.asciz \09\22led_blink_set_oneshot\22\09\09\09\09\09"
module asm "__kstrtabns_led_blink_set_oneshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_stop_software_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22led_stop_software_blink\22\09\09\09\09\09"
module asm "__kstrtabns_led_stop_software_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness_nopm\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness_nosleep:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness_nosleep\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness_nosleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness_sync\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_update_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22led_update_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_led_update_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_get_default_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22led_get_default_pattern\22\09\09\09\09\09"
module asm "__kstrtabns_led_get_default_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_sysfs_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22led_sysfs_disable\22\09\09\09\09\09"
module asm "__kstrtabns_led_sysfs_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_sysfs_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22led_sysfs_enable\22\09\09\09\09\09"
module asm "__kstrtabns_led_sysfs_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_compose_name:\09\09\09\09\09"
module asm "\09.asciz \09\22led_compose_name\22\09\09\09\09\09"
module asm "__kstrtabns_led_compose_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_init_default_state_get:\09\09\09\09\09"
module asm "\09.asciz \09\22led_init_default_state_get\22\09\09\09\09\09"
module asm "__kstrtabns_led_init_default_state_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_properties = type { i32, i8, ptr, i32, i8, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@leds_list_lock = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @leds_list_lock, i64 16), ptr getelementptr (i8, ptr @leds_list_lock, i64 16) } }, align 4
@__kstrtab_leds_list_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_leds_list_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_leds_list_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @leds_list_lock to i32), ptr @__kstrtab_leds_list_lock, ptr @__kstrtabns_leds_list_lock }, section "___ksymtab_gpl+leds_list_lock", align 4
@leds_list = dso_local global %struct.list_head { ptr @leds_list, ptr @leds_list }, align 4
@__kstrtab_leds_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_leds_list = external dso_local constant [0 x i8], align 1
@__ksymtab_leds_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @leds_list to i32), ptr @__kstrtab_leds_list, ptr @__kstrtabns_leds_list }, section "___ksymtab_gpl+leds_list", align 4
@.str = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"amber\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"violet\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"multicolor\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@led_colors = dso_local constant [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@__kstrtab_led_colors = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_colors = external dso_local constant [0 x i8], align 1
@__ksymtab_led_colors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_colors to i32), ptr @__kstrtab_led_colors, ptr @__kstrtabns_led_colors }, section "___ksymtab_gpl+led_colors", align 4
@__kstrtab_led_init_core = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_init_core = external dso_local constant [0 x i8], align 1
@__ksymtab_led_init_core = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_init_core to i32), ptr @__kstrtab_led_init_core, ptr @__kstrtabns_led_init_core }, section "___ksymtab_gpl+led_init_core", align 4
@__kstrtab_led_blink_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_blink_set = external dso_local constant [0 x i8], align 1
@__ksymtab_led_blink_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_blink_set to i32), ptr @__kstrtab_led_blink_set, ptr @__kstrtabns_led_blink_set }, section "___ksymtab_gpl+led_blink_set", align 4
@__kstrtab_led_blink_set_oneshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_blink_set_oneshot = external dso_local constant [0 x i8], align 1
@__ksymtab_led_blink_set_oneshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_blink_set_oneshot to i32), ptr @__kstrtab_led_blink_set_oneshot, ptr @__kstrtabns_led_blink_set_oneshot }, section "___ksymtab_gpl+led_blink_set_oneshot", align 4
@__kstrtab_led_stop_software_blink = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_stop_software_blink = external dso_local constant [0 x i8], align 1
@__ksymtab_led_stop_software_blink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_stop_software_blink to i32), ptr @__kstrtab_led_stop_software_blink, ptr @__kstrtabns_led_stop_software_blink }, section "___ksymtab_gpl+led_stop_software_blink", align 4
@__kstrtab_led_set_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness to i32), ptr @__kstrtab_led_set_brightness, ptr @__kstrtabns_led_set_brightness }, section "___ksymtab_gpl+led_set_brightness", align 4
@__kstrtab_led_set_brightness_nopm = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness_nopm = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness_nopm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness_nopm to i32), ptr @__kstrtab_led_set_brightness_nopm, ptr @__kstrtabns_led_set_brightness_nopm }, section "___ksymtab_gpl+led_set_brightness_nopm", align 4
@__kstrtab_led_set_brightness_nosleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness_nosleep = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness_nosleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness_nosleep to i32), ptr @__kstrtab_led_set_brightness_nosleep, ptr @__kstrtabns_led_set_brightness_nosleep }, section "___ksymtab_gpl+led_set_brightness_nosleep", align 4
@__kstrtab_led_set_brightness_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness_sync to i32), ptr @__kstrtab_led_set_brightness_sync, ptr @__kstrtabns_led_set_brightness_sync }, section "___ksymtab_gpl+led_set_brightness_sync", align 4
@__kstrtab_led_update_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_update_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_led_update_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_update_brightness to i32), ptr @__kstrtab_led_update_brightness, ptr @__kstrtabns_led_update_brightness }, section "___ksymtab_gpl+led_update_brightness", align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"led-pattern\00", align 1
@__kstrtab_led_get_default_pattern = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_get_default_pattern = external dso_local constant [0 x i8], align 1
@__ksymtab_led_get_default_pattern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_get_default_pattern to i32), ptr @__kstrtab_led_get_default_pattern, ptr @__kstrtabns_led_get_default_pattern }, section "___ksymtab_gpl+led_get_default_pattern", align 4
@__kstrtab_led_sysfs_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_sysfs_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_led_sysfs_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_sysfs_disable to i32), ptr @__kstrtab_led_sysfs_disable, ptr @__kstrtabns_led_sysfs_disable }, section "___ksymtab_gpl+led_sysfs_disable", align 4
@__kstrtab_led_sysfs_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_sysfs_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_led_sysfs_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_sysfs_enable to i32), ptr @__kstrtab_led_sysfs_enable, ptr @__kstrtabns_led_sysfs_enable }, section "___ksymtab_gpl+led_sysfs_enable", align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s:%s-%d\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Legacy LED naming requires devicename segment\00", align 1
@__kstrtab_led_compose_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_compose_name = external dso_local constant [0 x i8], align 1
@__ksymtab_led_compose_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_compose_name to i32), ptr @__kstrtab_led_compose_name, ptr @__kstrtabns_led_compose_name }, section "___ksymtab_gpl+led_compose_name", align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"default-state\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@__kstrtab_led_init_default_state_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_init_default_state_get = external dso_local constant [0 x i8], align 1
@__ksymtab_led_init_default_state_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_init_default_state_get to i32), ptr @__kstrtab_led_init_default_state_get, ptr @__kstrtabns_led_init_default_state_get }, section "___ksymtab_gpl+led_init_default_state_get", align 4
@.str.18 = private unnamed_addr constant [41 x i8] c"Setting an LED's brightness failed (%d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Error parsing 'label' property (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Error parsing 'color' property (%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"LED color identifier out of range\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Error parsing 'function' property (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"function-enumerator\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Error parsing 'function-enumerator' property (%d)\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_led_blink_set, ptr @__ksymtab_led_blink_set_oneshot, ptr @__ksymtab_led_colors, ptr @__ksymtab_led_compose_name, ptr @__ksymtab_led_get_default_pattern, ptr @__ksymtab_led_init_core, ptr @__ksymtab_led_init_default_state_get, ptr @__ksymtab_led_set_brightness, ptr @__ksymtab_led_set_brightness_nopm, ptr @__ksymtab_led_set_brightness_nosleep, ptr @__ksymtab_led_set_brightness_sync, ptr @__ksymtab_led_stop_software_blink, ptr @__ksymtab_led_sysfs_disable, ptr @__ksymtab_led_sysfs_enable, ptr @__ksymtab_led_update_brightness, ptr @__ksymtab_leds_list, ptr @__ksymtab_leds_list_lock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_init_core(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21, i32 2
  store ptr @set_brightness_delayed, ptr %5, align 4
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %6, ptr noundef nonnull @led_timer_function, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_brightness_delayed(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = getelementptr i8, ptr %0, i32 -88
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 16
  store i32 0, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #10
  %10 = getelementptr i8, ptr %0, i32 -40
  store i32 0, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 -36
  store i32 0, ptr %11, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #10
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr i8, ptr %0, i32 16
  %14 = getelementptr i8, ptr %0, i32 -84
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %13, align 4
  tail call void %15(ptr noundef %2, i32 noundef %18) #10
  br label %38

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %0, i32 -80
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %13, align 4
  %25 = tail call i32 %21(ptr noundef %2, i32 noundef %24) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = icmp eq i32 %25, -19
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %0, i32 -92
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 524290
  %33 = icmp eq i32 %32, 524290
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %27, %19
  %35 = phi i32 [ %25, %27 ], [ -19, %29 ], [ -524, %19 ]
  %36 = getelementptr i8, ptr %0, i32 -60
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %35) #11
  br label %38

38:                                               ; preds = %34, %29, %23, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @led_timer_function(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6, %1
  %11 = getelementptr i8, ptr %0, i32 -68
  store i32 0, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 -52
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %2, i32 noundef 0) #10
  br label %26

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 48
  store i32 0, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 32
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %23) #10
  br label %26

26:                                               ; preds = %21, %20, %10
  %27 = getelementptr i8, ptr %0, i32 -56
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %27) #10
  br label %83

28:                                               ; preds = %6
  %29 = getelementptr i8, ptr %0, i32 -56
  %30 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %29) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %29) #10
  br label %83

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %0, i32 -68
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %29) #10
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 20, i32 24
  %41 = getelementptr i8, ptr %0, i32 %40
  %42 = load i32, ptr %41, align 4
  br label %45

43:                                               ; preds = %33
  %44 = getelementptr i8, ptr %0, i32 20
  store i32 %35, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i32 [ 0, %43 ], [ %42, %37 ]
  %47 = phi ptr [ %7, %43 ], [ %3, %37 ]
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %0, i32 -64
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %46) #10
  store i32 %51, ptr %34, align 4
  %52 = getelementptr i8, ptr %0, i32 -60
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = getelementptr i8, ptr %0, i32 -52
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void %58(ptr noundef %2, i32 noundef %51) #10
  br label %66

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %0, i32 48
  store i32 %51, ptr %62, align 4
  %63 = getelementptr i8, ptr %0, i32 32
  %64 = load ptr, ptr @system_wq, align 4
  %65 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %64, ptr noundef %63) #10
  br label %66

66:                                               ; preds = %61, %60, %45
  %67 = load volatile i32, ptr %29, align 4
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load volatile i32, ptr %29, align 4
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  %74 = icmp eq i32 %46, 0
  br i1 %73, label %76, label %75

75:                                               ; preds = %70
  br i1 %74, label %78, label %77

76:                                               ; preds = %70
  br i1 %74, label %77, label %78

77:                                               ; preds = %76, %75
  tail call void @_set_bit(i32 noundef 2, ptr noundef %29) #10
  br label %78

78:                                               ; preds = %77, %76, %75, %66
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = tail call i32 @__msecs_to_jiffies(i32 noundef %48) #10
  %81 = add i32 %80, %79
  %82 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %81) #10
  br label %83

83:                                               ; preds = %78, %32, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_blink_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 17
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %6) #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %6) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %6) #10
  tail call fastcc void @led_blink_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @led_blink_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %85, label %15

15:                                               ; preds = %12, %8, %3
  %16 = load i32, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  store i32 500, ptr %2, align 4
  store i32 500, ptr %1, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %16, %15 ], [ 500, %21 ]
  %24 = load i32, ptr %2, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %24, %22 ], [ %19, %18 ]
  %27 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %28 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 18
  br i1 %30, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, ptr %31, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i32 [ %37, %35 ], [ %29, %25 ]
  store i32 %39, ptr %31, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %33, %32 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 15
  store i32 %27, ptr %42, align 4
  %43 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 16
  store i32 %26, ptr %43, align 4
  %44 = icmp eq i32 %27, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  store i32 0, ptr %28, align 4
  %46 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void %52(ptr noundef %0, i32 noundef 0) #10
  br label %85

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 22
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %58 = load ptr, ptr @system_wq, align 4
  %59 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %58, ptr noundef %57) #10
  br label %85

60:                                               ; preds = %40
  %61 = icmp eq i32 %26, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %41) #10
  store i32 %65, ptr %28, align 4
  %66 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void %72(ptr noundef %0, i32 noundef %65) #10
  br label %85

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 22
  store i32 %65, ptr %76, align 4
  %77 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %78 = load ptr, ptr @system_wq, align 4
  %79 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %77) #10
  br label %85

80:                                               ; preds = %60
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #10
  %81 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 17
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = add i32 %82, 1
  %84 = tail call i32 @mod_timer(ptr noundef %81, i32 noundef %83) #10
  br label %85

85:                                               ; preds = %80, %75, %74, %62, %55, %54, %45, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_blink_set_oneshot(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 17, i32 0, i32 1
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %5) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #10
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %5) #10
  br label %17

16:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %5) #10
  br label %17

17:                                               ; preds = %16, %15
  tail call fastcc void @led_blink_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %18

18:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_stop_software_blink(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 17
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 15
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 16
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_set_brightness(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10) #10
  br label %34

13:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %3) #10
  %14 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 19
  store i32 %1, ptr %14, align 4
  br label %34

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %1) #10
  %19 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0, i32 noundef %18) #10
  br label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 22
  store i32 %18, ptr %30, align 4
  %31 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %32 = load ptr, ptr @system_wq, align 4
  %33 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %32, ptr noundef %31) #10
  br label %34

34:                                               ; preds = %29, %28, %15, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_set_brightness_nosleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 %1)
  %6 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0, i32 noundef %5) #10
  br label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 22
  store i32 %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18) #10
  br label %21

21:                                               ; preds = %16, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @led_set_brightness_nopm(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, i32 noundef %1) #10
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 22
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %9) #10
  br label %12

12:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_set_brightness_sync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %1)
  %14 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0, i32 noundef %13) #10
  br label %25

25:                                               ; preds = %23, %19, %10, %6, %2
  %26 = phi i32 [ -16, %6 ], [ -16, %2 ], [ 0, %10 ], [ %24, %23 ], [ -524, %19 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_update_brightness(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #10
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1
  store i32 %6, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ 0, %8 ], [ %6, %5 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @led_get_default_pattern(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %21, label %12, !prof !8

12:                                               ; preds = %9
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %14, i32 noundef %7) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #10
  br label %21

20:                                               ; preds = %16
  store i32 %7, ptr %1, align 4
  br label %21

21:                                               ; preds = %20, %19, %12, %9, %2
  %22 = phi ptr [ null, %19 ], [ %14, %20 ], [ null, %2 ], [ null, %12 ], [ null, %9 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @led_sysfs_disable(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 131072
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @led_sysfs_enable(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -131073
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_compose_name(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.led_properties, align 4
  %5 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.led_init_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %118, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %6, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %6, ptr noundef nonnull @.str.19) #10
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 5
  %16 = call i32 @fwnode_property_read_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.19, ptr noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %16) #11
  br label %47

19:                                               ; preds = %12
  %20 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %6, ptr noundef nonnull @.str.21) #10
  br i1 %20, label %21, label %31

21:                                               ; preds = %19
  %22 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.21, ptr noundef nonnull %4, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %22) #11
  br label %31

25:                                               ; preds = %21
  %26 = load i32, ptr %4, align 4
  %27 = icmp ugt i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 1
  store i8 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %28, %24, %19
  %32 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %6, ptr noundef nonnull @.str.24) #10
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 2
  %35 = call i32 @fwnode_property_read_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.24, ptr noundef %34) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %35) #11
  br label %38

38:                                               ; preds = %37, %33
  %39 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %6, ptr noundef nonnull @.str.26) #10
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 3
  %42 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.26, ptr noundef %41, i32 noundef 1) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %42) #11
  br label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 4
  store i8 1, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %44, %38, %31, %18, %14, %10
  %48 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = icmp eq ptr %8, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = call i32 @strscpy(ptr noundef nonnull %2, ptr noundef nonnull %49, i32 noundef 64) #10
  br label %118

55:                                               ; preds = %51
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.11, ptr noundef nonnull %8, ptr noundef nonnull %49)
  br label %118

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 1
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %98, label %65

65:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !9
  %66 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 4
  %67 = load i8, ptr %66, align 4, !range !10
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  br i1 %63, label %74, label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %4, align 4
  %72 = getelementptr [10 x ptr], ptr @led_colors, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi ptr [ %73, %70 ], [ @.str.13, %69 ]
  %76 = select i1 %60, ptr @.str.13, ptr %59
  %77 = getelementptr inbounds %struct.led_properties, ptr %4, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %75, ptr noundef %76, i32 noundef %78)
  br label %89

80:                                               ; preds = %65
  br i1 %63, label %85, label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %4, align 4
  %83 = getelementptr [10 x ptr], ptr @led_colors, i32 0, i32 %82
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = phi ptr [ %84, %81 ], [ @.str.13, %80 ]
  %87 = select i1 %60, ptr @.str.13, ptr %59
  %88 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.11, ptr noundef %86, ptr noundef %87)
  br label %89

89:                                               ; preds = %85, %74
  %90 = getelementptr inbounds %struct.led_init_data, ptr %1, i32 0, i32 3
  %91 = load i8, ptr %90, align 4, !range !10
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.11, ptr noundef %8, ptr noundef nonnull %5)
  br label %97

95:                                               ; preds = %89
  %96 = call i32 @strscpy(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 64) #10
  br label %97

97:                                               ; preds = %95, %93
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  br label %118

98:                                               ; preds = %57
  %99 = getelementptr inbounds %struct.led_init_data, ptr %1, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = icmp eq ptr %8, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  br label %118

105:                                              ; preds = %102
  %106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.11, ptr noundef nonnull %8, ptr noundef nonnull %100)
  br label %118

107:                                              ; preds = %98
  %108 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %109 = or i1 %11, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, @of_fwnode_ops
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %6, i32 -12
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 @strscpy(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 64) #10
  br label %118

118:                                              ; preds = %114, %110, %107, %105, %104, %97, %55, %53, %3
  %119 = phi i32 [ -22, %104 ], [ -22, %3 ], [ -22, %110 ], [ 0, %97 ], [ 0, %114 ], [ 0, %105 ], [ 0, %53 ], [ 0, %55 ], [ -22, %107 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %119
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @led_init_default_state_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4
  %3 = call i32 @fwnode_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(5) @.str.16)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(3) @.str.17)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  br label %13

13:                                               ; preds = %12, %9, %5
  %14 = phi i32 [ 0, %12 ], [ 2, %5 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
