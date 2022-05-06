; ModuleID = '/llk/IR/drivers/input/serio/serio.c_pt.bc'
source_filename = "../drivers/input/serio/serio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_rescan\22\09\09\09\09\09"
module asm "__kstrtabns_serio_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_reconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_reconnect\22\09\09\09\09\09"
module asm "__kstrtabns_serio_reconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serio_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22__serio_register_port\22\09\09\09\09\09"
module asm "__kstrtabns___serio_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_serio_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_unregister_child_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_unregister_child_port\22\09\09\09\09\09"
module asm "__kstrtabns_serio_unregister_child_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__serio_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___serio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_serio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_open:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_open\22\09\09\09\09\09"
module asm "__kstrtabns_serio_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_close:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_close\22\09\09\09\09\09"
module asm "__kstrtabns_serio_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_serio_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_bus\22\09\09\09\09\09"
module asm "__kstrtabns_serio_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.serio_event = type { i32, ptr, ptr, %struct.list_head }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author170 = internal constant [45 x i8] c"serio.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [41 x i8] c"serio.description=Serio abstraction core\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [37 x i8] c"serio.file=drivers/input/serio/serio\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [18 x i8] c"serio.license=GPL\00", section ".modinfo", align 1
@__kstrtab_serio_rescan = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_rescan = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_rescan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_rescan to i32), ptr @__kstrtab_serio_rescan, ptr @__kstrtabns_serio_rescan }, section "___ksymtab+serio_rescan", align 4
@__kstrtab_serio_reconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_reconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_reconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_reconnect to i32), ptr @__kstrtab_serio_reconnect, ptr @__kstrtabns_serio_reconnect }, section "___ksymtab+serio_reconnect", align 4
@__kstrtab___serio_register_port = external dso_local constant [0 x i8], align 1
@__kstrtabns___serio_register_port = external dso_local constant [0 x i8], align 1
@__ksymtab___serio_register_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serio_register_port to i32), ptr @__kstrtab___serio_register_port, ptr @__kstrtabns___serio_register_port }, section "___ksymtab+__serio_register_port", align 4
@serio_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @serio_mutex, i64 12), ptr getelementptr (i8, ptr @serio_mutex, i64 12) } }, align 4
@__kstrtab_serio_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_unregister_port to i32), ptr @__kstrtab_serio_unregister_port, ptr @__kstrtabns_serio_unregister_port }, section "___ksymtab+serio_unregister_port", align 4
@__kstrtab_serio_unregister_child_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_unregister_child_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_unregister_child_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_unregister_child_port to i32), ptr @__kstrtab_serio_unregister_child_port, ptr @__kstrtabns_serio_unregister_child_port }, section "___ksymtab+serio_unregister_child_port", align 4
@serio_bus = dso_local global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @serio_driver_groups, ptr @serio_bus_match, ptr @serio_uevent, ptr @serio_driver_probe, ptr null, ptr @serio_driver_remove, ptr @serio_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serio_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str = private unnamed_addr constant [53 x i8] c"\013serio: driver_register() failed for %s, error: %d\0A\00", align 1
@__kstrtab___serio_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___serio_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___serio_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serio_register_driver to i32), ptr @__kstrtab___serio_register_driver, ptr @__kstrtabns___serio_register_driver }, section "___ksymtab+__serio_register_driver", align 4
@serio_list = internal global %struct.list_head { ptr @serio_list, ptr @serio_list }, align 4
@__kstrtab_serio_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_unregister_driver to i32), ptr @__kstrtab_serio_unregister_driver, ptr @__kstrtabns_serio_unregister_driver }, section "___ksymtab+serio_unregister_driver", align 4
@__kstrtab_serio_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_open = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_open to i32), ptr @__kstrtab_serio_open, ptr @__kstrtabns_serio_open }, section "___ksymtab+serio_open", align 4
@__kstrtab_serio_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_close = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_close to i32), ptr @__kstrtab_serio_close, ptr @__kstrtabns_serio_close }, section "___ksymtab+serio_close", align 4
@__kstrtab_serio_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_interrupt to i32), ptr @__kstrtab_serio_interrupt, ptr @__kstrtabns_serio_interrupt }, section "___ksymtab+serio_interrupt", align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"serio\00", align 1
@serio_driver_groups = internal global [2 x ptr] [ptr @serio_driver_group, ptr null], align 4
@serio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @serio_suspend, ptr @serio_resume, ptr null, ptr null, ptr @serio_suspend, ptr @serio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_serio_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_bus to i32), ptr @__kstrtab_serio_bus, ptr @__kstrtabns_serio_bus }, section "___ksymtab+serio_bus", align 4
@serio_event_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @serio_event_work, i64 4), ptr getelementptr (i8, ptr @serio_event_work, i64 4) }, ptr @serio_handle_event }, align 4
@__initcall__kmod_serio__174_1051_serio_init4 = internal global ptr @serio_init, section ".initcall4.init", align 4
@__exitcall_serio_exit = internal global ptr @serio_exit, section ".exitcall.exit", align 4
@serio_event_lock = internal global %struct.spinlock zeroinitializer, align 4
@serio_event_list = internal global %struct.list_head { ptr @serio_event_list, ptr @serio_event_list }, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\013serio: Not enough memory to queue event %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"\014serio: Can't get module reference, dropping event %d\0A\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@serio_init_port.serio_no = internal global %struct.atomic_t { i32 -1 }, align 4
@serio_init_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"&serio->drv_mutex\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"serio%lu\00", align 1
@serio_device_attr_groups = internal global [3 x ptr] [ptr @serio_id_attr_group, ptr @serio_device_attr_group, ptr null], align 4
@serio_id_attr_group = internal constant %struct.attribute_group { ptr @.str.6, ptr null, ptr null, ptr @serio_device_id_attrs, ptr null }, align 4
@serio_device_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serio_device_attrs, ptr null }, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@serio_device_id_attrs = internal global [5 x ptr] [ptr @dev_attr_type, ptr @dev_attr_proto, ptr @dev_attr_id, ptr @dev_attr_extra, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_proto = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @proto_show, ptr null }, align 4
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @id_show, ptr null }, align 4
@dev_attr_extra = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @extra_show, ptr null }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@serio_device_attrs = internal global [6 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_description, ptr @dev_attr_drvctl, ptr @dev_attr_bind_mode, ptr @dev_attr_firmware_id, ptr null], align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @serio_show_description, ptr null }, align 4
@dev_attr_drvctl = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 128 }, ptr null, ptr @drvctl_store }, align 4
@dev_attr_bind_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @serio_show_bind_mode, ptr @serio_set_bind_mode }, align 4
@dev_attr_firmware_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @firmware_id_show, ptr null }, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"serio:ty%02Xpr%02Xid%02Xex%02X\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"drvctl\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"bind_mode\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"firmware_id\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"device_attach() failed for %s (%s), error: %d\0A\00", align 1
@serio_driver_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serio_driver_attrs, ptr null }, align 4
@serio_driver_attrs = internal global [3 x ptr] [ptr @driver_attr_description, ptr @driver_attr_bind_mode, ptr null], align 4
@driver_attr_description = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @description_show, ptr null }, align 4
@driver_attr_bind_mode = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @bind_mode_show, ptr @bind_mode_store }, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"SERIO_TYPE=%02x\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"SERIO_PROTO=%02x\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"SERIO_ID=%02x\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"SERIO_EXTRA=%02x\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"SERIO_FIRMWARE_ID=%s\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"fast reconnect failed with error %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"\014serio: driver_attach() failed for %s with error %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"\013serio: Failed to register serio bus, error: %d\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_serio_exit, ptr @__initcall__kmod_serio__174_1051_serio_init4, ptr @__ksymtab___serio_register_driver, ptr @__ksymtab___serio_register_port, ptr @__ksymtab_serio_bus, ptr @__ksymtab_serio_close, ptr @__ksymtab_serio_interrupt, ptr @__ksymtab_serio_open, ptr @__ksymtab_serio_reconnect, ptr @__ksymtab_serio_rescan, ptr @__ksymtab_serio_unregister_child_port, ptr @__ksymtab_serio_unregister_driver, ptr @__ksymtab_serio_unregister_port, ptr @serio_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serio_rescan(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @serio_queue_event(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @serio_queue_event(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, @serio_event_list
  br i1 %6, label %20, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %18, %16 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %38, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @serio_event_list
  br i1 %19, label %20, label %7

20:                                               ; preds = %16, %12, %3
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2592, i32 noundef 20) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %2) #12
  br label %38

26:                                               ; preds = %20
  %27 = tail call zeroext i1 @try_module_get(ptr noundef %1) #10
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %2) #12
  tail call void @kfree(ptr noundef nonnull %22) #10
  br label %38

30:                                               ; preds = %26
  store i32 %2, ptr %22, align 8
  %31 = getelementptr inbounds %struct.serio_event, ptr %22, i32 0, i32 1
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.serio_event, ptr %22, i32 0, i32 2
  store ptr %1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.serio_event, ptr %22, i32 0, i32 3
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 4
  store ptr %33, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 4
  store ptr @serio_event_list, ptr %33, align 4
  %35 = getelementptr inbounds %struct.serio_event, ptr %22, i32 0, i32 3, i32 1
  store ptr %34, ptr %35, align 8
  store volatile ptr %33, ptr %34, align 4
  %36 = load ptr, ptr @system_long_wq, align 4
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef nonnull @serio_event_work) #10
  br label %38

38:                                               ; preds = %30, %28, %24, %12
  %39 = phi i32 [ 0, %12 ], [ 0, %30 ], [ -22, %28 ], [ -12, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %4) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serio_reconnect(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @serio_queue_event(ptr noundef %0, ptr noundef null, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__serio_register_port(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @__module_get(ptr noundef null) #10
  %3 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 19
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 19, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 13
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 13, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 14
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 14, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @serio_init_port.__key) #10
  %11 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @device_initialize(ptr noundef %11) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @serio_init_port.serio_no) #10, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @serio_init_port.serio_no, ptr nonnull @serio_init_port.serio_no, i32 1, ptr nonnull elementtype(i32) @serio_init_port.serio_no) #10, !srcloc !10
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %13) #10
  %15 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 5
  store ptr @serio_bus, ptr %15, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 33
  store ptr @serio_release_port, ptr %16, align 4
  %17 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 32
  store ptr @serio_device_attr_groups, ptr %17, align 8
  %18 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 18
  %23 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 15
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 1
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i32 [ %26, %21 ], [ 0, %2 ]
  %29 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 15
  store i32 %28, ptr %29, align 8
  %30 = tail call fastcc i32 @serio_queue_event(ptr noundef %0, ptr noundef %1, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serio_unregister_port(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @serio_mutex) #10
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 14
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %23, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 14
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = getelementptr i8, ptr %8, i32 -232
  br i1 %9, label %13, label %11

11:                                               ; preds = %19, %5
  %12 = phi ptr [ %10, %5 ], [ %20, %19 ]
  br label %5

13:                                               ; preds = %5
  %14 = icmp eq ptr %6, %0
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %18) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %6) #10
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi ptr [ %17, %15 ], [ %0, %13 ]
  %21 = load volatile ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %11

23:                                               ; preds = %19, %1
  %24 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %24) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @serio_destroy_port(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %3 = load ptr, ptr @serio_event_list, align 4
  %4 = icmp eq ptr %3, @serio_event_list
  br i1 %4, label %22, label %5

5:                                                ; preds = %45, %1
  %6 = phi ptr [ %48, %45 ], [ %3, %1 ]
  %7 = phi i32 [ %47, %45 ], [ %2, %1 ]
  br label %8

8:                                                ; preds = %19, %5
  %9 = phi ptr [ %20, %19 ], [ %6, %5 ]
  %10 = getelementptr i8, ptr %9, i32 -12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 -8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13, %8
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, @serio_event_list
  br i1 %21, label %22, label %8

22:                                               ; preds = %45, %19, %1
  %23 = phi i32 [ %2, %1 ], [ %7, %19 ], [ %47, %45 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %23) #10
  br label %50

24:                                               ; preds = %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %7) #10
  %25 = icmp eq ptr %15, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %28 = load ptr, ptr @serio_event_list, align 4
  %29 = icmp eq ptr %28, @serio_event_list
  br i1 %29, label %45, label %30

30:                                               ; preds = %43, %26
  %31 = phi ptr [ %32, %43 ], [ %28, %26 ]
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %31, i32 -8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %15
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %31, i32 -12
  %38 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %32, ptr %39, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %38, align 4
  %41 = getelementptr i8, ptr %31, i32 -4
  %42 = load ptr, ptr %41, align 4
  tail call void @module_put(ptr noundef %42) #10
  tail call void @kfree(ptr noundef %37) #10
  br label %43

43:                                               ; preds = %36, %30
  %44 = icmp eq ptr %32, @serio_event_list
  br i1 %44, label %45, label %30

45:                                               ; preds = %43, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %27) #10
  %46 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void @put_device(ptr noundef %46) #10
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %48 = load ptr, ptr @serio_event_list, align 4
  %49 = icmp eq ptr %48, @serio_event_list
  br i1 %49, label %22, label %5

50:                                               ; preds = %24, %22
  %51 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 11
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void %52(ptr noundef %0) #10
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.serio, ptr %57, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %60) #10
  %61 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 13
  %62 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 13, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store volatile ptr %61, ptr %61, align 4
  store ptr %61, ptr %62, align 4
  %66 = load ptr, ptr %56, align 4
  %67 = getelementptr inbounds %struct.serio, ptr %66, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %68 = load i16, ptr %67, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  store ptr null, ptr %56, align 4
  br label %70

70:                                               ; preds = %59, %55
  %71 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  %72 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 0, i32 7
  %73 = load i8, ptr %72, align 8
  %74 = and i8 %73, 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  tail call void @device_del(ptr noundef %71) #10
  br label %77

77:                                               ; preds = %76, %70
  %78 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 19
  %79 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 19, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store volatile ptr %78, ptr %78, align 4
  store ptr %78, ptr %79, align 4
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %84 = load ptr, ptr @serio_event_list, align 4
  %85 = icmp eq ptr %84, @serio_event_list
  br i1 %85, label %101, label %86

86:                                               ; preds = %99, %77
  %87 = phi ptr [ %88, %99 ], [ %84, %77 ]
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %87, i32 -8
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %87, i32 -12
  %94 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %95, ptr %96, align 4
  store volatile ptr %88, ptr %95, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %94, align 4
  %97 = getelementptr i8, ptr %87, i32 -4
  %98 = load ptr, ptr %97, align 4
  tail call void @module_put(ptr noundef %98) #10
  tail call void @kfree(ptr noundef %93) #10
  br label %99

99:                                               ; preds = %92, %86
  %100 = icmp eq ptr %88, @serio_event_list
  br i1 %100, label %101, label %86

101:                                              ; preds = %99, %77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %83) #10
  tail call void @put_device(ptr noundef %71) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serio_unregister_child_port(ptr noundef readonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @serio_mutex) #10
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %33, label %5

5:                                                ; preds = %30, %1
  %6 = phi ptr [ %8, %30 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -232
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr i8, ptr %6, i32 8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %30, label %12

12:                                               ; preds = %18, %5
  %13 = phi ptr [ %19, %18 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 14
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  %17 = getelementptr i8, ptr %15, i32 -232
  br i1 %16, label %20, label %18

18:                                               ; preds = %26, %12
  %19 = phi ptr [ %17, %12 ], [ %27, %26 ]
  br label %12

20:                                               ; preds = %12
  %21 = icmp eq ptr %13, %7
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %25) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %13) #10
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %24, %22 ], [ %7, %20 ]
  %28 = load volatile ptr, ptr %9, align 4
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %30, label %18

30:                                               ; preds = %26, %5
  %31 = getelementptr i8, ptr %6, i32 48
  tail call void @device_release_driver(ptr noundef %31) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %7)
  %32 = icmp eq ptr %8, %2
  br i1 %32, label %33, label %5

33:                                               ; preds = %30, %1
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__serio_register_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !17
  %6 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 10
  %7 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 10, i32 1
  store ptr @serio_bus, ptr %7, align 4
  %8 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 10, i32 2
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 10, i32 3
  store ptr %2, ptr %9, align 4
  store i8 1, ptr %4, align 4
  %10 = tail call i32 @driver_register(ptr noundef %6) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %10) #12
  br label %21

15:                                               ; preds = %3
  %16 = icmp eq i8 %5, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  store i8 0, ptr %4, align 4
  %18 = tail call fastcc i32 @serio_queue_event(ptr noundef %0, ptr noundef null, i32 noundef 4)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @driver_unregister(ptr noundef %6) #10
  br label %21

21:                                               ; preds = %20, %17, %15, %12
  %22 = phi i32 [ %10, %12 ], [ %18, %20 ], [ 0, %17 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serio_unregister_driver(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @serio_mutex) #10
  %2 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 2
  store i8 1, ptr %2, align 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %4 = load ptr, ptr @serio_event_list, align 4
  %5 = icmp eq ptr %4, @serio_event_list
  br i1 %5, label %21, label %6

6:                                                ; preds = %19, %1
  %7 = phi ptr [ %8, %19 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %7, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 -12
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %8, ptr %15, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %14, align 4
  %17 = getelementptr i8, ptr %7, i32 -4
  %18 = load ptr, ptr %17, align 4
  tail call void @module_put(ptr noundef %18) #10
  tail call void @kfree(ptr noundef %13) #10
  br label %19

19:                                               ; preds = %12, %6
  %20 = icmp eq ptr %8, @serio_event_list
  br i1 %20, label %21, label %6

21:                                               ; preds = %19, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %3) #10
  br label %22

22:                                               ; preds = %30, %21
  %23 = phi ptr [ @serio_list, %21 ], [ %31, %30 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @serio_list
  br i1 %25, label %64, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 -500
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %32, label %30

30:                                               ; preds = %61, %55, %26
  %31 = phi ptr [ %24, %26 ], [ @serio_list, %55 ], [ @serio_list, %61 ]
  br label %22

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %24, i32 -752
  %34 = getelementptr i8, ptr %24, i32 -512
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %55, label %37

37:                                               ; preds = %43, %32
  %38 = phi ptr [ %44, %43 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 14
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  %42 = getelementptr i8, ptr %40, i32 -232
  br i1 %41, label %45, label %43

43:                                               ; preds = %51, %37
  %44 = phi ptr [ %42, %37 ], [ %52, %51 ]
  br label %37

45:                                               ; preds = %37
  %46 = icmp eq ptr %38, %33
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %50) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %38) #10
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi ptr [ %49, %47 ], [ %33, %45 ]
  %53 = load volatile ptr, ptr %34, align 4
  %54 = icmp eq ptr %53, %34
  br i1 %54, label %55, label %43

55:                                               ; preds = %51, %32
  %56 = getelementptr i8, ptr %24, i32 -472
  tail call void @device_release_driver(ptr noundef %56) #10
  %57 = tail call i32 @device_attach(ptr noundef %56) #10
  %58 = icmp slt i32 %57, 0
  %59 = icmp ne i32 %57, -517
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %30

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %24, i32 -716
  %63 = getelementptr i8, ptr %24, i32 -748
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.24, ptr noundef %62, ptr noundef %63, i32 noundef %57) #12
  br label %30

64:                                               ; preds = %22
  %65 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 10
  tail call void @driver_unregister(ptr noundef %65) #10
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serio_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16
  store ptr %1, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %7 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
  store ptr null, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %14 = load i16, ptr %3, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %16

16:                                               ; preds = %13, %10, %2
  %17 = phi i32 [ -1, %13 ], [ 0, %10 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serio_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(ptr noundef %0) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16
  store ptr null, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %9 = load i16, ptr %7, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serio_interrupt(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.serio_driver, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #10
  br label %22

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 0, i32 7
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @serio_queue_event(ptr noundef %0, ptr noundef null, i32 noundef 0) #10
  br label %22

22:                                               ; preds = %20, %15, %13, %9
  %23 = phi i32 [ %12, %9 ], [ 0, %13 ], [ 1, %20 ], [ 0, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @serio_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -84
  %4 = load i8, ptr %3, align 4, !range !17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 -32
  %8 = load i8, ptr %7, align 4, !range !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %1, i32 -36
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -81
  %14 = getelementptr i8, ptr %0, i32 -83
  %15 = getelementptr i8, ptr %0, i32 -80
  %16 = getelementptr i8, ptr %0, i32 -82
  br label %17

17:                                               ; preds = %48, %10
  %18 = phi ptr [ %12, %10 ], [ %49, %48 ]
  %19 = load i8, ptr %18, align 1
  switch i8 %19, label %24 [
    i8 0, label %20
    i8 -1, label %27
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.serio_device_id, ptr %18, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %20, %17
  %25 = load i8, ptr %14, align 1
  %26 = icmp eq i8 %19, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %24, %17
  %28 = getelementptr inbounds %struct.serio_device_id, ptr %18, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %15, align 1
  %33 = icmp eq i8 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.serio_device_id, ptr %18, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, -1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %16, align 1
  %40 = icmp eq i8 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.serio_device_id, ptr %18, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %13, align 1
  %47 = icmp eq i8 %43, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %38, %31, %24
  %49 = getelementptr %struct.serio_device_id, ptr %18, i32 1
  br label %17

50:                                               ; preds = %45, %41, %20, %6, %2
  %51 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 0, %20 ], [ 1, %41 ], [ 1, %45 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serio_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -83
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %7) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 -80
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 -81
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 -82
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i8, ptr %5, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, ptr %11, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, ptr %17, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr %23, align 1
  %36 = zext i8 %35 to i32
  %37 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = getelementptr i8, ptr %0, i32 -212
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef %40) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %43, %28, %22, %16, %10, %4, %2
  %48 = phi i32 [ 0, %46 ], [ %44, %43 ], [ %37, %28 ], [ %26, %22 ], [ %20, %16 ], [ %14, %10 ], [ %8, %4 ], [ -19, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serio_driver_probe(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -280
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr i8, ptr %4, i32 -20
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %2, ptr noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serio_driver_remove(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -280
  %8 = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %7) #10
  br label %10

10:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serio_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -280
  %3 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.serio_driver, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %2) #10
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @serio_exit() #4 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @serio_bus) #10
  %1 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @serio_event_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @serio_init() #4 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @serio_bus) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %1) #12
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serio_release_port(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -280
  tail call void @kfree(ptr noundef %2) #10
  tail call void @module_put(ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -83
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proto_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -80
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -81
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @extra_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -82
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -83
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 -80
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 -81
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 -82
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15)
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serio_show_description(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -276
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drvctl_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -280
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @serio_mutex) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %226

8:                                                ; preds = %4
  %9 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 -40
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %33, label %15

15:                                               ; preds = %21, %11
  %16 = phi ptr [ %22, %21 ], [ %5, %11 ]
  %17 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 14
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  %20 = getelementptr i8, ptr %18, i32 -232
  br i1 %19, label %23, label %21

21:                                               ; preds = %29, %15
  %22 = phi ptr [ %20, %15 ], [ %30, %29 ]
  br label %15

23:                                               ; preds = %15
  %24 = icmp eq ptr %16, %5
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %28) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %16) #10
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi ptr [ %27, %25 ], [ %5, %23 ]
  %31 = load volatile ptr, ptr %12, align 4
  %32 = icmp eq ptr %31, %12
  br i1 %32, label %33, label %21

33:                                               ; preds = %29, %11
  tail call void @device_release_driver(ptr noundef %0) #10
  br label %222

34:                                               ; preds = %8
  %35 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %3)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %56, %34
  %38 = phi ptr [ %58, %56 ], [ %5, %34 ]
  %39 = tail call fastcc i32 @serio_reconnect_port(ptr noundef %38) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 14
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %45, label %56

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi ptr [ %51, %49 ], [ %38, %45 ]
  %48 = icmp eq ptr %47, %5
  br i1 %48, label %222, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 13
  %53 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 14
  %54 = load ptr, ptr %52, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %46, label %56

56:                                               ; preds = %49, %41
  %57 = phi ptr [ %43, %41 ], [ %54, %49 ]
  %58 = getelementptr i8, ptr %57, i32 -232
  %59 = icmp eq ptr %58, %5
  br i1 %59, label %222, label %37

60:                                               ; preds = %34
  %61 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %3)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %116

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %0, i32 -40
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %85, label %67

67:                                               ; preds = %73, %63
  %68 = phi ptr [ %74, %73 ], [ %5, %63 ]
  %69 = getelementptr inbounds %struct.serio, ptr %68, i32 0, i32 14
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  %72 = getelementptr i8, ptr %70, i32 -232
  br i1 %71, label %75, label %73

73:                                               ; preds = %81, %67
  %74 = phi ptr [ %72, %67 ], [ %82, %81 ]
  br label %67

75:                                               ; preds = %67
  %76 = icmp eq ptr %68, %5
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.serio, ptr %68, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.serio, ptr %68, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %80) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %68) #10
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi ptr [ %79, %77 ], [ %5, %75 ]
  %83 = load volatile ptr, ptr %64, align 4
  %84 = icmp eq ptr %83, %64
  br i1 %84, label %85, label %73

85:                                               ; preds = %81, %63
  tail call void @device_release_driver(ptr noundef %0) #10
  %86 = tail call i32 @device_attach(ptr noundef %0) #10
  %87 = icmp slt i32 %86, 0
  %88 = icmp ne i32 %86, -517
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %0, i32 -244
  %92 = getelementptr i8, ptr %0, i32 -276
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %91, ptr noundef %92, i32 noundef %86) #12
  br label %93

93:                                               ; preds = %90, %85
  %94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %95 = load ptr, ptr @serio_event_list, align 4
  %96 = icmp eq ptr %95, @serio_event_list
  br i1 %96, label %115, label %97

97:                                               ; preds = %113, %93
  %98 = phi ptr [ %100, %113 ], [ %95, %93 ]
  %99 = getelementptr i8, ptr %98, i32 -12
  %100 = load ptr, ptr %98, align 4
  %101 = getelementptr i8, ptr %98, i32 -8
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %5
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, ptr %99, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %100, ptr %109, align 4
  store volatile ptr %98, ptr %98, align 4
  store ptr %98, ptr %108, align 4
  %111 = getelementptr i8, ptr %98, i32 -4
  %112 = load ptr, ptr %111, align 4
  tail call void @module_put(ptr noundef %112) #10
  tail call void @kfree(ptr noundef %99) #10
  br label %113

113:                                              ; preds = %107, %97
  %114 = icmp eq ptr %100, @serio_event_list
  br i1 %114, label %115, label %97

115:                                              ; preds = %113, %104, %93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %94) #10
  br label %222

116:                                              ; preds = %60
  %117 = tail call ptr @driver_find(ptr noundef %2, ptr noundef nonnull @serio_bus) #10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  br label %226

120:                                              ; preds = %116
  %121 = getelementptr i8, ptr %0, i32 -40
  %122 = load volatile ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %142, label %124

124:                                              ; preds = %130, %120
  %125 = phi ptr [ %131, %130 ], [ %5, %120 ]
  %126 = getelementptr inbounds %struct.serio, ptr %125, i32 0, i32 14
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  %129 = getelementptr i8, ptr %127, i32 -232
  br i1 %128, label %132, label %130

130:                                              ; preds = %138, %124
  %131 = phi ptr [ %129, %124 ], [ %139, %138 ]
  br label %124

132:                                              ; preds = %124
  %133 = icmp eq ptr %125, %5
  br i1 %133, label %138, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.serio, ptr %125, i32 0, i32 12
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.serio, ptr %125, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %137) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %125) #10
  br label %138

138:                                              ; preds = %134, %132
  %139 = phi ptr [ %136, %134 ], [ %5, %132 ]
  %140 = load volatile ptr, ptr %121, align 4
  %141 = icmp eq ptr %140, %121
  br i1 %141, label %142, label %130

142:                                              ; preds = %138, %120
  tail call void @device_release_driver(ptr noundef %0) #10
  %143 = getelementptr i8, ptr %117, i32 -40
  %144 = getelementptr i8, ptr %117, i32 -36
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %0, i32 -81
  %147 = getelementptr i8, ptr %0, i32 -83
  %148 = getelementptr i8, ptr %0, i32 -80
  %149 = getelementptr i8, ptr %0, i32 -82
  br label %150

150:                                              ; preds = %181, %142
  %151 = phi ptr [ %145, %142 ], [ %182, %181 ]
  %152 = load i8, ptr %151, align 1
  switch i8 %152, label %157 [
    i8 0, label %153
    i8 -1, label %160
  ]

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.serio_device_id, ptr %151, i32 0, i32 3
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %199, label %157

157:                                              ; preds = %153, %150
  %158 = load i8, ptr %147, align 1
  %159 = icmp eq i8 %152, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %157, %150
  %161 = getelementptr inbounds %struct.serio_device_id, ptr %151, i32 0, i32 3
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, -1
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = load i8, ptr %148, align 1
  %166 = icmp eq i8 %162, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %164, %160
  %168 = getelementptr inbounds %struct.serio_device_id, ptr %151, i32 0, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, -1
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i8, ptr %149, align 1
  %173 = icmp eq i8 %169, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %171, %167
  %175 = getelementptr inbounds %struct.serio_device_id, ptr %151, i32 0, i32 2
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, -1
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load i8, ptr %146, align 1
  %180 = icmp eq i8 %176, %179
  br i1 %180, label %183, label %181

181:                                              ; preds = %178, %171, %164, %157
  %182 = getelementptr %struct.serio_device_id, ptr %151, i32 1
  br label %150

183:                                              ; preds = %178, %174
  %184 = getelementptr i8, ptr %0, i32 56
  store ptr %117, ptr %184, align 8
  %185 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %185) #10
  %186 = getelementptr i8, ptr %117, i32 -20
  %187 = load ptr, ptr %186, align 4
  %188 = tail call i32 %187(ptr noundef %5, ptr noundef %143) #10
  tail call void @mutex_unlock(ptr noundef %185) #10
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = tail call i32 @device_bind_driver(ptr noundef %0) #10
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = getelementptr i8, ptr %0, i32 -244
  %195 = getelementptr i8, ptr %0, i32 -276
  %196 = load ptr, ptr %143, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %194, ptr noundef %195, ptr noundef %196, i32 noundef %191) #12
  tail call fastcc void @serio_disconnect_driver(ptr noundef %5) #10
  br label %197

197:                                              ; preds = %193, %183
  %198 = phi i32 [ %191, %193 ], [ -19, %183 ]
  store ptr null, ptr %184, align 8
  br label %199

199:                                              ; preds = %197, %190, %153
  %200 = phi i32 [ 0, %190 ], [ %198, %197 ], [ 0, %153 ]
  %201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %202 = load ptr, ptr @serio_event_list, align 4
  %203 = icmp eq ptr %202, @serio_event_list
  br i1 %203, label %223, label %204

204:                                              ; preds = %220, %199
  %205 = phi ptr [ %207, %220 ], [ %202, %199 ]
  %206 = getelementptr i8, ptr %205, i32 -12
  %207 = load ptr, ptr %205, align 4
  %208 = getelementptr i8, ptr %205, i32 -8
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %5
  br i1 %210, label %211, label %220

211:                                              ; preds = %204
  %212 = load i32, ptr %206, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  store ptr %216, ptr %217, align 4
  store volatile ptr %207, ptr %216, align 4
  store volatile ptr %205, ptr %205, align 4
  store ptr %205, ptr %215, align 4
  %218 = getelementptr i8, ptr %205, i32 -4
  %219 = load ptr, ptr %218, align 4
  tail call void @module_put(ptr noundef %219) #10
  tail call void @kfree(ptr noundef %206) #10
  br label %220

220:                                              ; preds = %214, %204
  %221 = icmp eq ptr %207, @serio_event_list
  br i1 %221, label %223, label %204

222:                                              ; preds = %115, %56, %46, %33
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  br label %225

223:                                              ; preds = %220, %211, %199
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %201) #10
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  %224 = icmp eq i32 %200, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %223, %222
  br label %226

226:                                              ; preds = %225, %223, %119, %4
  %227 = phi i32 [ %6, %4 ], [ %3, %225 ], [ %200, %223 ], [ -22, %119 ]
  ret i32 %227
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @serio_reconnect_port(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #10
  br label %14

11:                                               ; preds = %6
  %12 = tail call i32 %8(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %2) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ -1, %10 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 14
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %37, label %19

19:                                               ; preds = %25, %14
  %20 = phi ptr [ %26, %25 ], [ %0, %14 ]
  %21 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 14
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  %24 = getelementptr i8, ptr %22, i32 -232
  br i1 %23, label %27, label %25

25:                                               ; preds = %33, %19
  %26 = phi ptr [ %24, %19 ], [ %34, %33 ]
  br label %19

27:                                               ; preds = %19
  %28 = icmp eq ptr %20, %0
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %32) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %20) #10
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi ptr [ %31, %29 ], [ %0, %27 ]
  %35 = load volatile ptr, ptr %16, align 4
  %36 = icmp eq ptr %35, %16
  br i1 %36, label %37, label %25

37:                                               ; preds = %33, %14
  %38 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %38) #10
  %39 = tail call i32 @device_attach(ptr noundef %38) #10
  %40 = icmp slt i32 %39, 0
  %41 = icmp ne i32 %39, -517
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 2
  %45 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.24, ptr noundef %44, ptr noundef %45, i32 noundef %39) #12
  br label %46

46:                                               ; preds = %43, %37, %11
  %47 = phi i32 [ 0, %11 ], [ %15, %37 ], [ %15, %43 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_bind_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @serio_disconnect_driver(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serio_show_bind_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = load i8, ptr %4, align 4, !range !17
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr @.str.22, ptr @.str.21
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @serio_set_bind_mode(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #9 {
  %5 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %4
  %11 = phi i8 [ 1, %4 ], [ 0, %7 ]
  %12 = getelementptr i8, ptr %0, i32 -84
  store i8 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ -22, %7 ], [ %3, %10 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @firmware_id_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -212
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @description_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.25, ptr %4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bind_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load i8, ptr %3, align 4, !range !17
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str.22, ptr @.str.21
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %6)
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bind_mode_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 {
  %4 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %3
  %10 = phi i8 [ 1, %3 ], [ 0, %6 ]
  %11 = getelementptr i8, ptr %0, i32 -32
  store i8 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ -22, %6 ], [ %2, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serio_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -280
  %3 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.serio_driver, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %2) #10
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serio_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -280
  %3 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.serio_driver, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef %2) #10
  switch i32 %12, label %13 [
    i32 -2, label %15
    i32 0, label %15
  ]

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %12) #12
  br label %14

14:                                               ; preds = %13, %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %17

15:                                               ; preds = %11, %11
  tail call void @mutex_unlock(ptr noundef %3) #10
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15, %14
  %18 = tail call fastcc i32 @serio_queue_event(ptr noundef %2, ptr noundef null, i32 noundef 1)
  br label %19

19:                                               ; preds = %17, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serio_handle_event(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @serio_mutex) #10
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %3 = load volatile ptr, ptr @serio_event_list, align 4
  %4 = icmp eq ptr %3, @serio_event_list
  br i1 %4, label %5, label %7

5:                                                ; preds = %148, %1
  %6 = phi i32 [ %2, %1 ], [ %151, %148 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %6) #10
  br label %154

7:                                                ; preds = %148, %1
  %8 = phi ptr [ %152, %148 ], [ %3, %1 ]
  %9 = phi i32 [ %151, %148 ], [ %2, %1 ]
  %10 = getelementptr i8, ptr %8, i32 -12
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %9) #10
  %15 = icmp eq ptr %10, null
  br i1 %15, label %154, label %16

16:                                               ; preds = %7
  %17 = load i32, ptr %10, align 4
  switch i32 %17, label %123 [
    i32 3, label %18
    i32 1, label %49
    i32 0, label %53
    i32 2, label %88
    i32 4, label %114
  ]

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %8, i32 -8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 13
  %27 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 14
  %28 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 14, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %26, ptr %28, align 4
  store ptr %27, ptr %26, align 4
  %30 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 13, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %26, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %31 = load i16, ptr %25, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %33

33:                                               ; preds = %24, %18
  %34 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 19
  %35 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_list, i32 0, i32 1), align 4
  store ptr %34, ptr getelementptr inbounds (%struct.list_head, ptr @serio_list, i32 0, i32 1), align 4
  store ptr @serio_list, ptr %34, align 4
  %36 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 19, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %34, ptr %35, align 4
  %37 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = tail call i32 %38(ptr noundef %20) #10
  br label %42

42:                                               ; preds = %40, %33
  %43 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  %44 = tail call i32 @device_add(ptr noundef %43) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %123, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 2
  %48 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.33, ptr noundef %47, ptr noundef %48, i32 noundef %44) #12
  br label %123

49:                                               ; preds = %16
  %50 = getelementptr i8, ptr %8, i32 -8
  %51 = load ptr, ptr %50, align 4
  %52 = tail call fastcc i32 @serio_reconnect_port(ptr noundef %51)
  br label %123

53:                                               ; preds = %16
  %54 = getelementptr i8, ptr %8, i32 -8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.serio, ptr %55, i32 0, i32 14
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %77, label %59

59:                                               ; preds = %65, %53
  %60 = phi ptr [ %66, %65 ], [ %55, %53 ]
  %61 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 14
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  %64 = getelementptr i8, ptr %62, i32 -232
  br i1 %63, label %67, label %65

65:                                               ; preds = %73, %59
  %66 = phi ptr [ %64, %59 ], [ %74, %73 ]
  br label %59

67:                                               ; preds = %59
  %68 = icmp eq ptr %60, %55
  br i1 %68, label %73, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 12
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %72) #10
  tail call fastcc void @serio_destroy_port(ptr noundef %60) #10
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi ptr [ %71, %69 ], [ %55, %67 ]
  %75 = load volatile ptr, ptr %56, align 4
  %76 = icmp eq ptr %75, %56
  br i1 %76, label %77, label %65

77:                                               ; preds = %73, %53
  %78 = getelementptr inbounds %struct.serio, ptr %55, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %78) #10
  %79 = load ptr, ptr %54, align 4
  %80 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 18
  %81 = tail call i32 @device_attach(ptr noundef %80) #10
  %82 = icmp slt i32 %81, 0
  %83 = icmp ne i32 %81, -517
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 2
  %87 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.24, ptr noundef %86, ptr noundef %87, i32 noundef %81) #12
  br label %123

88:                                               ; preds = %16
  %89 = getelementptr i8, ptr %8, i32 -8
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %110, %88
  %92 = phi ptr [ %90, %88 ], [ %112, %110 ]
  %93 = tail call fastcc i32 @serio_reconnect_port(ptr noundef %92) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.serio, ptr %92, i32 0, i32 14
  %97 = load volatile ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %96
  br i1 %98, label %99, label %110

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi ptr [ %105, %103 ], [ %92, %99 ]
  %102 = icmp eq ptr %101, %90
  br i1 %102, label %123, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.serio, ptr %101, i32 0, i32 12
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.serio, ptr %101, i32 0, i32 13
  %107 = getelementptr inbounds %struct.serio, ptr %105, i32 0, i32 14
  %108 = load ptr, ptr %106, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %100, label %110

110:                                              ; preds = %103, %95
  %111 = phi ptr [ %97, %95 ], [ %108, %103 ]
  %112 = getelementptr i8, ptr %111, i32 -232
  %113 = icmp eq ptr %112, %90
  br i1 %113, label %123, label %91

114:                                              ; preds = %16
  %115 = getelementptr i8, ptr %8, i32 -8
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.serio_driver, ptr %116, i32 0, i32 10
  %118 = tail call i32 @driver_attach(ptr noundef %117) #10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %117, align 4
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %121, i32 noundef %118) #12
  br label %123

123:                                              ; preds = %120, %114, %110, %100, %85, %77, %49, %46, %42, %16
  %124 = getelementptr i8, ptr %8, i32 -8
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %10, align 4
  %127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %128 = load ptr, ptr @serio_event_list, align 4
  %129 = icmp eq ptr %128, @serio_event_list
  br i1 %129, label %148, label %130

130:                                              ; preds = %146, %123
  %131 = phi ptr [ %133, %146 ], [ %128, %123 ]
  %132 = getelementptr i8, ptr %131, i32 -12
  %133 = load ptr, ptr %131, align 4
  %134 = getelementptr i8, ptr %131, i32 -8
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %125
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load i32, ptr %132, align 4
  %139 = icmp eq i32 %138, %126
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %142, ptr %143, align 4
  store volatile ptr %133, ptr %142, align 4
  store volatile ptr %131, ptr %131, align 4
  store ptr %131, ptr %141, align 4
  %144 = getelementptr i8, ptr %131, i32 -4
  %145 = load ptr, ptr %144, align 4
  tail call void @module_put(ptr noundef %145) #10
  tail call void @kfree(ptr noundef %132) #10
  br label %146

146:                                              ; preds = %140, %130
  %147 = icmp eq ptr %133, @serio_event_list
  br i1 %147, label %148, label %130

148:                                              ; preds = %146, %137, %123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %127) #10
  %149 = getelementptr i8, ptr %8, i32 -4
  %150 = load ptr, ptr %149, align 4
  tail call void @module_put(ptr noundef %150) #10
  tail call void @kfree(ptr noundef nonnull %10) #10
  %151 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #10
  %152 = load volatile ptr, ptr @serio_event_list, align 4
  %153 = icmp eq ptr %152, @serio_event_list
  br i1 %153, label %5, label %7

154:                                              ; preds = %7, %5
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2148163568}
!9 = !{i64 564336, i64 2148054307, i64 2148054333, i64 2148054380, i64 2148054402, i64 2148054430, i64 2148054450}
!10 = !{i64 2148066406, i64 2148066438, i64 2148066467, i64 2148066501, i64 2148066532, i64 2148066555}
!11 = !{i64 2148163771}
!12 = !{i64 2148948861}
!13 = !{i64 2148944685}
!14 = !{i64 2148944760, i64 2148944787, i64 2148944834, i64 2148944856, i64 2148944884, i64 2148944904}
!15 = !{i64 470259}
!16 = !{i64 2148973005}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
