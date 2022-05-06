; ModuleID = '/llk/IR/drivers/video/backlight/backlight.c_pt.bc'
source_filename = "../drivers/video/backlight/backlight.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_device_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_device_set_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_device_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_force_update:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_force_update\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_force_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_device_get_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_device_get_by_type\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_device_get_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_device_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_device_get_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_device_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_backlight_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22backlight_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_backlight_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_backlight_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_backlight_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_backlight_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_backlight_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_backlight_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_backlight_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_backlight_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_backlight_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_backlight_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_find_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_find_backlight\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_find_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { ptr }
%struct.fb_event = type { ptr, ptr }

@__kstrtab_backlight_device_set_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_device_set_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_device_set_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_device_set_brightness to i32), ptr @__kstrtab_backlight_device_set_brightness, ptr @__kstrtabns_backlight_device_set_brightness }, section "___ksymtab+backlight_device_set_brightness", align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not update brightness from device: %pe\0A\00", align 1
@__kstrtab_backlight_force_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_force_update = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_force_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_force_update to i32), ptr @__kstrtab_backlight_force_update, ptr @__kstrtabns_backlight_force_update }, section "___ksymtab+backlight_force_update", align 4
@backlight_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"&new_bd->update_lock\00", align 1
@backlight_device_register.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"&new_bd->ops_lock\00", align 1
@backlight_class = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"drivers/video/backlight/backlight.c\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: invalid backlight type\00", align 1
@backlight_dev_list_mutex = internal global %struct.mutex zeroinitializer, align 4
@backlight_dev_list = internal global %struct.list_head zeroinitializer, align 4
@backlight_notifier = internal global %struct.blocking_notifier_head zeroinitializer, align 4
@__kstrtab_backlight_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_device_register to i32), ptr @__kstrtab_backlight_device_register, ptr @__kstrtabns_backlight_device_register }, section "___ksymtab+backlight_device_register", align 4
@__kstrtab_backlight_device_get_by_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_device_get_by_type = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_device_get_by_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_device_get_by_type to i32), ptr @__kstrtab_backlight_device_get_by_type, ptr @__kstrtabns_backlight_device_get_by_type }, section "___ksymtab+backlight_device_get_by_type", align 4
@__kstrtab_backlight_device_get_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_device_get_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_device_get_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_device_get_by_name to i32), ptr @__kstrtab_backlight_device_get_by_name, ptr @__kstrtabns_backlight_device_get_by_name }, section "___ksymtab+backlight_device_get_by_name", align 4
@__kstrtab_backlight_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_device_unregister to i32), ptr @__kstrtab_backlight_device_unregister, ptr @__kstrtabns_backlight_device_unregister }, section "___ksymtab+backlight_device_unregister", align 4
@__kstrtab_backlight_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_register_notifier to i32), ptr @__kstrtab_backlight_register_notifier, ptr @__kstrtabns_backlight_register_notifier }, section "___ksymtab+backlight_register_notifier", align 4
@__kstrtab_backlight_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_backlight_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_backlight_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @backlight_unregister_notifier to i32), ptr @__kstrtab_backlight_unregister_notifier, ptr @__kstrtabns_backlight_unregister_notifier }, section "___ksymtab+backlight_unregister_notifier", align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"devm_backlight_device_release\00", align 1
@__kstrtab_devm_backlight_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_backlight_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_backlight_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_backlight_device_register to i32), ptr @__kstrtab_devm_backlight_device_register, ptr @__kstrtabns_devm_backlight_device_register }, section "___ksymtab+devm_backlight_device_register", align 4
@__kstrtab_devm_backlight_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_backlight_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_backlight_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_backlight_device_unregister to i32), ptr @__kstrtab_devm_backlight_device_unregister, ptr @__kstrtabns_devm_backlight_device_unregister }, section "___ksymtab+devm_backlight_device_unregister", align 4
@__kstrtab_of_find_backlight_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_backlight_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_backlight_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_backlight_by_node to i32), ptr @__kstrtab_of_find_backlight_by_node, ptr @__kstrtabns_of_find_backlight_by_node }, section "___ksymtab+of_find_backlight_by_node", align 4
@__kstrtab_devm_of_find_backlight = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_find_backlight = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_find_backlight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_find_backlight to i32), ptr @__kstrtab_devm_of_find_backlight, ptr @__kstrtabns_devm_of_find_backlight }, section "___ksymtab+devm_of_find_backlight", align 4
@__initcall__kmod_backlight__259_776_backlight_class_init2 = internal global ptr @backlight_class_init, section ".initcall2.init", align 4
@__exitcall_backlight_class_exit = internal global ptr @backlight_class_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file260 = internal constant [49 x i8] c"backlight.file=drivers/video/backlight/backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [22 x i8] c"backlight.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [86 x i8] c"backlight.author=Jamey Hicks <jamey.hicks@hp.com>, Andrew Zabolotny <zap@homelink.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [61 x i8] c"backlight.description=Backlight Lowlevel Control Abstraction\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"SOURCE=sysfs\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"SOURCE=hotkey\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"SOURCE=unknown\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"actual_brightness\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@backlight_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"\014backlight: Unable to create backlight class; errno = %ld\0A\00", align 1
@bl_device_groups = internal global [2 x ptr] [ptr @bl_device_group, ptr null], align 4
@backlight_class_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @backlight_suspend, ptr @backlight_resume, ptr @backlight_suspend, ptr @backlight_resume, ptr @backlight_suspend, ptr @backlight_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@backlight_class_init.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"&backlight_dev_list_mutex\00", align 1
@backlight_class_init.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"&(&backlight_notifier)->rwsem\00", align 1
@bl_device_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bl_device_attrs, ptr null }, align 4
@bl_device_attrs = internal global [7 x ptr] [ptr @dev_attr_bl_power, ptr @dev_attr_brightness, ptr @dev_attr_actual_brightness, ptr @dev_attr_max_brightness, ptr @dev_attr_scale, ptr @dev_attr_type, ptr null], align 4
@dev_attr_bl_power = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @bl_power_show, ptr @bl_power_store }, align 4
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @brightness_show, ptr @brightness_store }, align 4
@dev_attr_actual_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @actual_brightness_show, ptr null }, align 4
@dev_attr_max_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @max_brightness_show, ptr null }, align 4
@dev_attr_scale = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @scale_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @type_show, ptr null }, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"bl_power\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"max_brightness\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@backlight_scale_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"non-linear\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@backlight_types = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__exitcall_backlight_class_exit, ptr @__initcall__kmod_backlight__259_776_backlight_class_init2, ptr @__ksymtab_backlight_device_get_by_name, ptr @__ksymtab_backlight_device_get_by_type, ptr @__ksymtab_backlight_device_register, ptr @__ksymtab_backlight_device_set_brightness, ptr @__ksymtab_backlight_device_unregister, ptr @__ksymtab_backlight_force_update, ptr @__ksymtab_backlight_register_notifier, ptr @__ksymtab_backlight_unregister_notifier, ptr @__ksymtab_devm_backlight_device_register, ptr @__ksymtab_devm_backlight_device_unregister, ptr @__ksymtab_devm_of_find_backlight, ptr @__ksymtab_of_find_backlight_by_node, ptr @backlight_class_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @backlight_device_set_brightness(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [2 x ptr], align 8
  %4 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  store i32 %1, ptr %0, align 8
  %13 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.backlight_ops, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0) #13
  br label %22

22:                                               ; preds = %20, %16, %12
  %23 = phi i32 [ %21, %20 ], [ -2, %16 ], [ -2, %12 ]
  tail call void @mutex_unlock(ptr noundef %13) #13
  br label %24

24:                                               ; preds = %22, %8, %2
  %25 = phi i32 [ %23, %22 ], [ -6, %2 ], [ -22, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr @.str.8, ptr %3, align 8
  %26 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6
  %28 = call i32 @kobject_uevent_env(ptr noundef %27, i32 noundef 2, ptr noundef nonnull %3) #13
  call void @sysfs_notify(ptr noundef %27, ptr noundef null, ptr noundef nonnull @.str.11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @backlight_update_status(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.backlight_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0) #13
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ %11, %10 ], [ -2, %6 ], [ -2, %1 ]
  tail call void @mutex_unlock(ptr noundef %2) #13
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @backlight_force_update(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [2 x ptr], align 8
  %4 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.backlight_ops, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0) #13
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 %13, ptr %0, align 8
  br label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6
  %18 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull %18) #14
  br label %19

19:                                               ; preds = %16, %15, %8, %2
  tail call void @mutex_unlock(ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  switch i32 %1, label %22 [
    i32 1, label %20
    i32 0, label %21
  ]

20:                                               ; preds = %19
  store ptr @.str.8, ptr %3, align 8
  br label %23

21:                                               ; preds = %19
  store ptr @.str.9, ptr %3, align 8
  br label %23

22:                                               ; preds = %19
  store ptr @.str.10, ptr %3, align 8
  br label %23

23:                                               ; preds = %22, %21, %20
  %24 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6
  %26 = call i32 @kobject_uevent_env(ptr noundef %25, i32 noundef 2, ptr noundef nonnull %3) #13
  call void @sysfs_notify(ptr noundef %25, ptr noundef null, ptr noundef nonnull @.str.11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @backlight_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 608) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @backlight_device_register.__key) #13
  %11 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @backlight_device_register.__key.2) #13
  %12 = load ptr, ptr @backlight_class, align 4
  %13 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6
  %14 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, i32 31
  store ptr %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, i32 1
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, i32 33
  store ptr @bl_device_release, ptr %16, align 4
  %17 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef %0) #13
  %18 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, i32 8
  store ptr %2, ptr %18, align 8
  %19 = icmp eq ptr %4, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 28, i1 false)
  %21 = getelementptr inbounds %struct.backlight_properties, ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -4
  %24 = icmp ult i32 %23, -3
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 432, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %0) #13
  br label %26

26:                                               ; preds = %25, %9
  %27 = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 4
  store i32 1, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = tail call i32 @device_register(ptr noundef %13) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  tail call void @put_device(ptr noundef %13) #13
  %32 = inttoptr i32 %29 to ptr
  br label %46

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(12) %34, i8 0, i32 12, i1 false) #13
  store ptr @fb_notifier_callback, ptr %34, align 8
  %35 = tail call i32 @fb_register_client(ptr noundef %34) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  tail call void @device_unregister(ptr noundef %13) #13
  %38 = inttoptr i32 %35 to ptr
  br label %46

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  tail call void @mutex_lock(ptr noundef nonnull @backlight_dev_list_mutex) #13
  %41 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 5
  %42 = load ptr, ptr @backlight_dev_list, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store ptr %42, ptr %41, align 4
  %44 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 5, i32 1
  store ptr @backlight_dev_list, ptr %44, align 8
  store volatile ptr %41, ptr @backlight_dev_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @backlight_dev_list_mutex) #13
  %45 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @backlight_notifier, i32 noundef 0, ptr noundef nonnull %7) #13
  br label %46

46:                                               ; preds = %39, %37, %31, %5
  %47 = phi ptr [ %32, %31 ], [ %38, %37 ], [ %7, %39 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bl_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -96
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @backlight_device_get_by_type(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @backlight_dev_list_mutex) #13
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @backlight_dev_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @backlight_dev_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -68
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -84
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @backlight_dev_list_mutex) #13
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @backlight_device_get_by_name(ptr noundef %0) #0 {
  %2 = load ptr, ptr @backlight_class, align 4
  %3 = tail call ptr @class_find_device(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_name) #13
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -96
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @backlight_device_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @backlight_dev_list_mutex) #13
  %4 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @backlight_dev_list_mutex) #13
  %9 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @backlight_notifier, i32 noundef 1, ptr noundef nonnull %0) #13
  %10 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 3
  store ptr null, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 4
  %13 = tail call i32 @fb_unregister_client(ptr noundef %12) #13
  %14 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6
  tail call void @device_unregister(ptr noundef %14) #13
  br label %15

15:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @backlight_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @backlight_notifier, ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @backlight_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @backlight_notifier, ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_backlight_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_backlight_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @backlight_device_register(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store ptr %10, ptr %7, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #13
  br label %14

13:                                               ; preds = %9
  tail call void @devres_free(ptr noundef nonnull %7) #13
  br label %14

14:                                               ; preds = %13, %12, %6
  %15 = phi ptr [ %10, %13 ], [ %10, %12 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_backlight_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @backlight_device_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_backlight_device_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_backlight_device_release, ptr noundef nonnull @devm_backlight_device_match, ptr noundef %1) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 655, i32 noundef 9, ptr noundef null) #13
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_backlight_device_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #6 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_backlight_by_node(ptr noundef %0) #0 {
  %2 = load ptr, ptr @backlight_class, align 4
  %3 = tail call ptr @class_find_device(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef nonnull @of_parent_match) #13
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -96
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @of_parent_match(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_find_backlight(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #13, !annotation !8
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #13
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @backlight_class, align 4
  %16 = call ptr @class_find_device(ptr noundef %15, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull @of_parent_match) #13
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -96
  call void @of_node_put(ptr noundef nonnull %11) #13
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  %21 = select i1 %20, ptr inttoptr (i32 -517 to ptr), ptr %18
  %22 = icmp eq ptr %21, null
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %24 = or i1 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = call i32 @devm_add_action(ptr noundef nonnull %0, ptr noundef nonnull @devm_backlight_release, ptr noundef nonnull %21) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.backlight_device, ptr %21, i32 0, i32 6
  call void @put_device(ptr noundef %29) #13
  %30 = inttoptr i32 %26 to ptr
  br label %31

31:                                               ; preds = %28, %25, %14, %8, %4, %1
  %32 = phi ptr [ %30, %28 ], [ %21, %14 ], [ %21, %25 ], [ null, %1 ], [ null, %8 ], [ null, %4 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_backlight_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6
  tail call void @put_device(ptr noundef %4) #13
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @backlight_class_exit() #8 section ".exit.text" {
  %1 = load ptr, ptr @backlight_class, align 4
  tail call void @class_destroy(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @backlight_class_init() #8 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @backlight_class_init.__key) #13
  store ptr %1, ptr @backlight_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %4) #14
  %6 = load ptr, ptr @backlight_class, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %11

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 3
  store ptr @bl_device_groups, ptr %9, align 4
  %10 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 13
  store ptr @backlight_class_dev_pm_ops, ptr %10, align 4
  store volatile ptr @backlight_dev_list, ptr @backlight_dev_list, align 4
  store ptr @backlight_dev_list, ptr getelementptr inbounds (%struct.list_head, ptr @backlight_dev_list, i32 0, i32 1), align 4
  tail call void @__mutex_init(ptr noundef nonnull @backlight_dev_list_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @backlight_class_init.__key.14) #13
  tail call void @__init_rwsem(ptr noundef nonnull @backlight_notifier, ptr noundef nonnull @.str.17, ptr noundef nonnull @backlight_class_init.__key.16) #13
  store ptr null, ptr getelementptr inbounds (%struct.blocking_notifier_head, ptr @backlight_notifier, i32 0, i32 1), align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %7, %3 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_notifier_callback(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %1, 9
  br i1 %7, label %8, label %65

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -72
  %10 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %64, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.backlight_ops, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 %16(ptr noundef %9, ptr noundef %19) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.fb_event, ptr %2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr i8, ptr %0, i32 496
  %28 = getelementptr [32 x i8], ptr %27, i32 0, i32 %6
  %29 = load i8, ptr %28, align 1, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %26, label %31, label %43

31:                                               ; preds = %22
  br i1 %30, label %32, label %64

32:                                               ; preds = %31
  store i8 1, ptr %28, align 1
  %33 = getelementptr i8, ptr %0, i32 528
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %0, i32 -52
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -3
  store i32 %40, ptr %38, align 4
  %41 = getelementptr i8, ptr %0, i32 -60
  store i32 0, ptr %41, align 4
  %42 = tail call fastcc i32 @backlight_update_status(ptr noundef %9)
  br label %64

43:                                               ; preds = %22
  br i1 %30, label %64, label %44

44:                                               ; preds = %43
  store i8 0, ptr %28, align 1
  %45 = getelementptr i8, ptr %0, i32 528
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, -1
  store i32 %47, ptr %45, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %0, i32 -52
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 2
  store i32 %52, ptr %50, align 4
  %53 = getelementptr i8, ptr %0, i32 -60
  store i32 %25, ptr %53, align 4
  %54 = getelementptr i8, ptr %0, i32 -44
  tail call void @mutex_lock(ptr noundef %54) #13
  %55 = load ptr, ptr %11, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.backlight_ops, ptr %55, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 %59(ptr noundef %9) #13
  br label %63

63:                                               ; preds = %61, %57, %49
  tail call void @mutex_unlock(ptr noundef %54) #13
  br label %64

64:                                               ; preds = %63, %44, %43, %37, %32, %31, %18, %8
  tail call void @mutex_unlock(ptr noundef %10) #13
  br label %65

65:                                               ; preds = %64, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bl_power_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -88
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bl_power_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -48
  call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr i8, ptr %0, i32 -28
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 -88
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  store i32 %17, ptr %15, align 8
  %20 = getelementptr i8, ptr %0, i32 -68
  call void @mutex_lock(ptr noundef %20) #13
  %21 = load ptr, ptr %11, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.backlight_ops, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  call void @mutex_unlock(ptr noundef %20) #13
  br label %31

28:                                               ; preds = %23
  %29 = call i32 %25(ptr noundef %6) #13
  call void @mutex_unlock(ptr noundef %20) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ -2, %27 ], [ %29, %28 ]
  store i32 %16, ptr %15, align 8
  br label %33

33:                                               ; preds = %31, %28, %14, %9
  %34 = phi i32 [ %32, %31 ], [ -6, %9 ], [ %3, %28 ], [ %3, %14 ]
  call void @mutex_unlock(ptr noundef %10) #13
  br label %35

35:                                               ; preds = %33, %4
  %36 = phi i32 [ %34, %33 ], [ %7, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -96
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brightness_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -96
  %10 = load i32, ptr %5, align 4
  %11 = call i32 @backlight_device_set_brightness(ptr noundef %9, i32 noundef %10)
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %3, i32 %11
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @actual_brightness_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -96
  %5 = getelementptr i8, ptr %0, i32 -48
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr i8, ptr %0, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %4) #13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %21

16:                                               ; preds = %9, %3
  %17 = load i32, ptr %4, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %14, %13 ]
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %14, %13 ], [ %20, %18 ]
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -92
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scale_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 2
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 313, i32 noundef 9, ptr noundef null) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.23, i32 9, i1 false)
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr [3 x ptr], ptr @backlight_scale_types, i32 0, i32 %5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %10)
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi i32 [ 8, %7 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -80
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [4 x ptr], ptr @backlight_types, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @backlight_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -96
  %3 = getelementptr i8, ptr %0, i32 -48
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -76
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr i8, ptr %0, i32 -68
  tail call void @mutex_lock(ptr noundef %15) #13
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.backlight_ops, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %2) #13
  br label %24

24:                                               ; preds = %22, %18, %11
  tail call void @mutex_unlock(ptr noundef %15) #13
  br label %25

25:                                               ; preds = %24, %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @backlight_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -96
  %3 = getelementptr i8, ptr %0, i32 -48
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -76
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 4
  %15 = getelementptr i8, ptr %0, i32 -68
  tail call void @mutex_lock(ptr noundef %15) #13
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.backlight_ops, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %2) #13
  br label %24

24:                                               ; preds = %22, %18, %11
  tail call void @mutex_unlock(ptr noundef %15) #13
  br label %25

25:                                               ; preds = %24, %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
