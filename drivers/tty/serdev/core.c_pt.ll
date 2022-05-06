; ModuleID = '/llk/IR/drivers/tty/serdev/core.c_pt.bc'
source_filename = "../drivers/tty/serdev/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_open:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_open\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_close:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_close\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_serdev_device_open:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_serdev_device_open\22\09\09\09\09\09"
module asm "__kstrtabns_devm_serdev_device_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_write_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_write_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_write_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_write_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_write_buf\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_write_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_write\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_write_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_write_flush\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_write_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_write_room:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_write_room\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_write_room:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_set_baudrate:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_set_baudrate\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_set_baudrate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_set_flow_control:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_set_flow_control\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_set_flow_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_set_parity:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_set_parity\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_set_parity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_wait_until_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_wait_until_sent\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_wait_until_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_get_tiocm:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_get_tiocm\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_get_tiocm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_set_tiocm:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_set_tiocm\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_set_tiocm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_controller_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_controller_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_controller_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_controller_add:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_controller_add\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_controller_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serdev_controller_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22serdev_controller_remove\22\09\09\09\09\09"
module asm "__kstrtabns_serdev_controller_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serdev_device_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__serdev_device_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___serdev_device_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.serdev_controller = type { %struct.device, i32, ptr, ptr }
%struct.serdev_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"controller busy\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't add %s, status %pe\0A\00", align 1
@__kstrtab_serdev_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_add to i32), ptr @__kstrtab_serdev_device_add, ptr @__kstrtabns_serdev_device_add }, section "___ksymtab_gpl+serdev_device_add", align 4
@__kstrtab_serdev_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_remove to i32), ptr @__kstrtab_serdev_device_remove, ptr @__kstrtabns_serdev_device_remove }, section "___ksymtab_gpl+serdev_device_remove", align 4
@__kstrtab_serdev_device_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_open = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_open to i32), ptr @__kstrtab_serdev_device_open, ptr @__kstrtabns_serdev_device_open }, section "___ksymtab_gpl+serdev_device_open", align 4
@__kstrtab_serdev_device_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_close = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_close to i32), ptr @__kstrtab_serdev_device_close, ptr @__kstrtabns_serdev_device_close }, section "___ksymtab_gpl+serdev_device_close", align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"devm_serdev_device_release\00", align 1
@__kstrtab_devm_serdev_device_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_serdev_device_open = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_serdev_device_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_serdev_device_open to i32), ptr @__kstrtab_devm_serdev_device_open, ptr @__kstrtabns_devm_serdev_device_open }, section "___ksymtab_gpl+devm_serdev_device_open", align 4
@__kstrtab_serdev_device_write_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_write_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_write_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_write_wakeup to i32), ptr @__kstrtab_serdev_device_write_wakeup, ptr @__kstrtabns_serdev_device_write_wakeup }, section "___ksymtab_gpl+serdev_device_write_wakeup", align 4
@__kstrtab_serdev_device_write_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_write_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_write_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_write_buf to i32), ptr @__kstrtab_serdev_device_write_buf, ptr @__kstrtabns_serdev_device_write_buf }, section "___ksymtab_gpl+serdev_device_write_buf", align 4
@__kstrtab_serdev_device_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_write = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_write to i32), ptr @__kstrtab_serdev_device_write, ptr @__kstrtabns_serdev_device_write }, section "___ksymtab_gpl+serdev_device_write", align 4
@__kstrtab_serdev_device_write_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_write_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_write_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_write_flush to i32), ptr @__kstrtab_serdev_device_write_flush, ptr @__kstrtabns_serdev_device_write_flush }, section "___ksymtab_gpl+serdev_device_write_flush", align 4
@__kstrtab_serdev_device_write_room = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_write_room = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_write_room = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_write_room to i32), ptr @__kstrtab_serdev_device_write_room, ptr @__kstrtabns_serdev_device_write_room }, section "___ksymtab_gpl+serdev_device_write_room", align 4
@__kstrtab_serdev_device_set_baudrate = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_set_baudrate = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_set_baudrate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_set_baudrate to i32), ptr @__kstrtab_serdev_device_set_baudrate, ptr @__kstrtabns_serdev_device_set_baudrate }, section "___ksymtab_gpl+serdev_device_set_baudrate", align 4
@__kstrtab_serdev_device_set_flow_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_set_flow_control = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_set_flow_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_set_flow_control to i32), ptr @__kstrtab_serdev_device_set_flow_control, ptr @__kstrtabns_serdev_device_set_flow_control }, section "___ksymtab_gpl+serdev_device_set_flow_control", align 4
@__kstrtab_serdev_device_set_parity = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_set_parity = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_set_parity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_set_parity to i32), ptr @__kstrtab_serdev_device_set_parity, ptr @__kstrtabns_serdev_device_set_parity }, section "___ksymtab_gpl+serdev_device_set_parity", align 4
@__kstrtab_serdev_device_wait_until_sent = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_wait_until_sent = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_wait_until_sent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_wait_until_sent to i32), ptr @__kstrtab_serdev_device_wait_until_sent, ptr @__kstrtabns_serdev_device_wait_until_sent }, section "___ksymtab_gpl+serdev_device_wait_until_sent", align 4
@__kstrtab_serdev_device_get_tiocm = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_get_tiocm = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_get_tiocm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_get_tiocm to i32), ptr @__kstrtab_serdev_device_get_tiocm, ptr @__kstrtabns_serdev_device_get_tiocm }, section "___ksymtab_gpl+serdev_device_get_tiocm", align 4
@__kstrtab_serdev_device_set_tiocm = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_set_tiocm = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_set_tiocm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_set_tiocm to i32), ptr @__kstrtab_serdev_device_set_tiocm, ptr @__kstrtabns_serdev_device_set_tiocm }, section "___ksymtab_gpl+serdev_device_set_tiocm", align 4
@serdev_bus_type = internal global %struct.bus_type { ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serdev_device_match, ptr null, ptr @serdev_drv_probe, ptr null, ptr @serdev_drv_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@serdev_device_type = internal constant %struct.device_type { ptr null, ptr @serdev_device_groups, ptr @serdev_device_uevent, ptr null, ptr @serdev_device_release, ptr null }, align 4
@serdev_device_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"&serdev->write_lock\00", align 1
@__kstrtab_serdev_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_device_alloc to i32), ptr @__kstrtab_serdev_device_alloc, ptr @__kstrtabns_serdev_device_alloc }, section "___ksymtab_gpl+serdev_device_alloc", align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"drivers/tty/serdev/core.c\00", align 1
@ctrl_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"unable to allocate serdev controller identifier.\0A\00", align 1
@serdev_ctrl_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @serdev_ctrl_release, ptr null }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"serial%d\00", align 1
@__kstrtab_serdev_controller_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_controller_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_controller_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_controller_alloc to i32), ptr @__kstrtab_serdev_controller_alloc, ptr @__kstrtabns_serdev_controller_alloc }, section "___ksymtab_gpl+serdev_controller_alloc", align 4
@is_registered = internal unnamed_addr global i1 false, align 1
@__kstrtab_serdev_controller_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_controller_add = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_controller_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_controller_add to i32), ptr @__kstrtab_serdev_controller_add, ptr @__kstrtabns_serdev_controller_add }, section "___ksymtab_gpl+serdev_controller_add", align 4
@__kstrtab_serdev_controller_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_serdev_controller_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_serdev_controller_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serdev_controller_remove to i32), ptr @__kstrtab_serdev_controller_remove, ptr @__kstrtabns_serdev_controller_remove }, section "___ksymtab_gpl+serdev_controller_remove", align 4
@__kstrtab___serdev_device_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___serdev_device_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___serdev_device_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serdev_device_driver_register to i32), ptr @__kstrtab___serdev_device_driver_register, ptr @__kstrtabns___serdev_device_driver_register }, section "___ksymtab_gpl+__serdev_device_driver_register", align 4
@__exitcall_serdev_exit = internal global ptr @serdev_exit, section ".exitcall.exit", align 4
@__initcall__kmod_serdev__171_873_serdev_init2 = internal global ptr @serdev_init, section ".initcall2.init", align 4
@__UNIQUE_ID_author172 = internal constant [44 x i8] c"serdev.author=Rob Herring <robh@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [38 x i8] c"serdev.file=drivers/tty/serdev/serdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"serdev.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [46 x i8] c"serdev.description=Serial attached device bus\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@serdev_device_groups = internal global [2 x ptr] [ptr @serdev_device_group, ptr null], align 4
@serdev_device_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serdev_device_attrs, ptr null }, align 4
@serdev_device_attrs = internal global [2 x ptr] [ptr @dev_attr_modalias, ptr null], align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"failure adding device. status %pe\0A\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_serdev_exit, ptr @__initcall__kmod_serdev__171_873_serdev_init2, ptr @__ksymtab___serdev_device_driver_register, ptr @__ksymtab_devm_serdev_device_open, ptr @__ksymtab_serdev_controller_add, ptr @__ksymtab_serdev_controller_alloc, ptr @__ksymtab_serdev_controller_remove, ptr @__ksymtab_serdev_device_add, ptr @__ksymtab_serdev_device_alloc, ptr @__ksymtab_serdev_device_close, ptr @__ksymtab_serdev_device_get_tiocm, ptr @__ksymtab_serdev_device_open, ptr @__ksymtab_serdev_device_remove, ptr @__ksymtab_serdev_device_set_baudrate, ptr @__ksymtab_serdev_device_set_flow_control, ptr @__ksymtab_serdev_device_set_parity, ptr @__ksymtab_serdev_device_set_tiocm, ptr @__ksymtab_serdev_device_wait_until_sent, ptr @__ksymtab_serdev_device_write, ptr @__ksymtab_serdev_device_write_buf, ptr @__ksymtab_serdev_device_write_flush, ptr @__ksymtab_serdev_device_write_room, ptr @__ksymtab_serdev_device_write_wakeup, ptr @serdev_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %14) #6
  %16 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  br label %32

20:                                               ; preds = %11
  store ptr %0, ptr %16, align 4
  %21 = tail call i32 @device_add(ptr noundef %0) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %25, %23 ]
  %31 = inttoptr i32 %21 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %30, ptr noundef nonnull %31) #7
  store ptr null, ptr %16, align 4
  br label %32

32:                                               ; preds = %29, %20, %19
  %33 = phi i32 [ -16, %19 ], [ %21, %29 ], [ 0, %20 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_device_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @device_unregister(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 2
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.serdev_controller_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef nonnull %3) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %3, i32 noundef 4) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #6, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #6, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.serdev_controller_ops, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef nonnull %3) #6
  br label %29

29:                                               ; preds = %28, %23, %14, %11, %5, %1
  %30 = phi i32 [ -22, %5 ], [ -22, %1 ], [ %12, %11 ], [ 0, %14 ], [ %15, %28 ], [ %15, %23 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_device_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.serdev_controller_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %3, i32 noundef 5) #6
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.serdev_controller_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %3) #6
  br label %16

16:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_serdev_device_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_serdev_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.serdev_device, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.serdev_controller, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.serdev_controller_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef nonnull %7) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %7, i32 noundef 4) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 -1, ptr elementtype(i32) %22) #6, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %27

27:                                               ; preds = %26, %21
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds %struct.serdev_controller_ops, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef nonnull %7) #6
  br label %33

33:                                               ; preds = %32, %27, %15, %9, %5
  %34 = phi i32 [ %19, %27 ], [ %19, %32 ], [ %16, %15 ], [ -22, %5 ], [ -22, %9 ]
  tail call void @devres_free(ptr noundef nonnull %3) #6
  br label %36

35:                                               ; preds = %18
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #6
  br label %36

36:                                               ; preds = %35, %33, %2
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ], [ -12, %2 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_serdev_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.serdev_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.serdev_controller, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.serdev_controller_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 5) #6
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr inbounds %struct.serdev_controller_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef nonnull %5) #6
  br label %18

18:                                               ; preds = %13, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_device_write_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 4
  tail call void @complete(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_write_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.serdev_controller, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #6
  br label %14

14:                                               ; preds = %12, %7, %3
  %15 = phi i32 [ %13, %12 ], [ -22, %7 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.serdev_controller, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.serdev_device_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %13
  %20 = icmp eq i32 %3, 0
  %21 = select i1 %20, i32 2147483647, i32 %3
  %22 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 4
  br label %24

24:                                               ; preds = %37, %19
  %25 = phi ptr [ %1, %19 ], [ %38, %37 ]
  %26 = phi i32 [ %2, %19 ], [ %35, %37 ]
  %27 = phi i32 [ %21, %19 ], [ %39, %37 ]
  %28 = phi i32 [ 0, %19 ], [ %34, %37 ]
  store i32 0, ptr %23, align 4
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef nonnull %6, ptr noundef %25, i32 noundef %26) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = add i32 %31, %28
  %35 = sub i32 %26, %31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %25, i32 %31
  %39 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %23, i32 noundef %27) #6
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %24, label %42

41:                                               ; preds = %24
  tail call void @mutex_unlock(ptr noundef %22) #6
  br label %50

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %39, %37 ], [ %27, %33 ]
  tail call void @mutex_unlock(ptr noundef %22) #6
  %44 = icmp slt i32 %43, 1
  %45 = icmp eq i32 %34, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = icmp eq i32 %43, -512
  %49 = select i1 %48, i32 -512, i32 -110
  br label %50

50:                                               ; preds = %47, %42, %41, %13, %8, %4
  %51 = phi i32 [ -22, %13 ], [ -22, %8 ], [ -22, %4 ], [ %31, %41 ], [ %49, %47 ], [ %34, %42 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_device_write_flush(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.serdev_controller_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void %9(ptr noundef nonnull %3) #6
  br label %12

12:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_write_room(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.serdev_controller_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef nonnull %3) #6
  br label %13

13:                                               ; preds = %11, %5, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_set_baudrate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.serdev_controller, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.serdev_controller_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %4, i32 noundef %1) #6
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi i32 [ %13, %12 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_device_set_flow_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.serdev_controller, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.serdev_controller_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %4, i1 noundef zeroext %1) #6
  br label %13

13:                                               ; preds = %12, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_set_parity(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.serdev_controller, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.serdev_controller_ops, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %4, i32 noundef %1) #6
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi i32 [ %13, %12 ], [ -524, %6 ], [ -524, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_device_wait_until_sent(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.serdev_controller, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.serdev_controller_ops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %4, i32 noundef %1) #6
  br label %13

13:                                               ; preds = %12, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_get_tiocm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serdev_controller, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.serdev_controller_ops, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef nonnull %3) #6
  br label %13

13:                                               ; preds = %11, %5, %1
  %14 = phi i32 [ %12, %11 ], [ -524, %5 ], [ -524, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_device_set_tiocm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.serdev_controller, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.serdev_controller_ops, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #6
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ -524, %7 ], [ -524, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @serdev_device_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serdev_device, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 4
  tail call void @device_initialize(ptr noundef nonnull %3) #6
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  store ptr @serdev_bus_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  store ptr @serdev_device_type, ptr %9, align 8
  %10 = getelementptr inbounds %struct.serdev_device, ptr %3, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.serdev_device, ptr %3, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %12 = getelementptr inbounds %struct.serdev_device, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @serdev_device_alloc.__key) #6
  br label %13

13:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @serdev_controller_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !12

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 482, i32 noundef 9, ptr noundef null) #6
  br label %27

5:                                                ; preds = %2
  %6 = add i32 %1, 488
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ctrl_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #7
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %27

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.serdev_controller, ptr %7, i32 0, i32 1
  store i32 %10, ptr %14, align 8
  tail call void @device_initialize(ptr noundef nonnull %7) #6
  %15 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4
  store ptr @serdev_ctrl_type, ptr %15, align 16
  %16 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 5
  store ptr @serdev_bus_type, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  store ptr %19, ptr %20, align 32
  %21 = getelementptr %struct.serdev_controller, ptr %7, i32 1
  %22 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  store ptr %21, ptr %22, align 64
  %23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, i32 noundef %10) #6
  tail call void @pm_runtime_no_callbacks(ptr noundef nonnull %7) #6
  %24 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 15
  %25 = load i16, ptr %24, align 8
  %26 = or i16 %25, 256
  store i16 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %13, %12, %5, %4
  %28 = phi ptr [ null, %4 ], [ null, %12 ], [ %7, %13 ], [ null, %5 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serdev_controller_add(ptr noundef %0) #0 {
  %2 = load i1, ptr @is_registered, align 1
  br i1 %2, label %4, label %3, !prof !13

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 778, i32 noundef 9, ptr noundef null) #6
  br label %46

4:                                                ; preds = %1
  %5 = tail call i32 @device_add(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %4
  tail call void @pm_runtime_enable(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_get_next_available_child(ptr noundef %9, ptr noundef null) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %40, %7
  %13 = phi i1 [ true, %40 ], [ false, %7 ]
  %14 = phi ptr [ %42, %40 ], [ %10, %7 ]
  br label %15

15:                                               ; preds = %36, %12
  %16 = phi ptr [ %38, %36 ], [ %14, %12 ]
  %17 = tail call ptr @of_get_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 520) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.serdev_device, ptr %21, i32 0, i32 2
  store ptr %0, ptr %24, align 4
  tail call void @device_initialize(ptr noundef nonnull %21) #6
  %25 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 5
  store ptr @serdev_bus_type, ptr %26, align 4
  %27 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 4
  store ptr @serdev_device_type, ptr %27, align 8
  %28 = getelementptr inbounds %struct.serdev_device, ptr %21, i32 0, i32 4
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.serdev_device, ptr %21, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %30 = getelementptr inbounds %struct.serdev_device, ptr %21, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.4, ptr noundef nonnull @serdev_device_alloc.__key) #6
  %31 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  store ptr %16, ptr %31, align 8
  %32 = tail call i32 @serdev_device_add(ptr noundef nonnull %21) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = inttoptr i32 %32 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %21, ptr noundef nonnull @.str.12, ptr noundef nonnull %35) #7
  tail call void @put_device(ptr noundef nonnull %21) #6
  br label %36

36:                                               ; preds = %34, %19, %15
  %37 = load ptr, ptr %8, align 8
  %38 = tail call ptr @of_get_next_available_child(ptr noundef %37, ptr noundef nonnull %16) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %15

40:                                               ; preds = %23
  %41 = load ptr, ptr %8, align 8
  %42 = tail call ptr @of_get_next_available_child(ptr noundef %41, ptr noundef nonnull %16) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %12

44:                                               ; preds = %36
  br i1 %13, label %46, label %45

45:                                               ; preds = %44, %7
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #6
  tail call void @device_del(ptr noundef %0) #6
  br label %46

46:                                               ; preds = %45, %44, %40, %4, %3
  %47 = phi i32 [ -11, %3 ], [ -19, %45 ], [ %5, %4 ], [ 0, %44 ], [ 0, %40 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serdev_controller_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @device_for_each_child(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @serdev_remove_device) #6
  tail call void @__pm_runtime_disable(ptr noundef nonnull %0, i1 noundef zeroext true) #6
  tail call void @device_del(ptr noundef nonnull %0) #6
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serdev_remove_device(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @serdev_device_type
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.serdev_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @device_unregister(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.serdev_controller, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__serdev_device_driver_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @serdev_bus_type, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 5
  store i32 1, ptr %5, align 4
  %6 = tail call i32 @driver_register(ptr noundef %0) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @serdev_exit() #3 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @serdev_bus_type) #6
  tail call void @ida_destroy(ptr noundef nonnull @ctrl_ida) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @serdev_init() #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @serdev_bus_type) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i1 true, ptr @is_registered, align 1
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serdev_device_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @serdev_device_type
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @of_match_device(ptr noundef %8, ptr noundef %0) #6
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serdev_drv_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.serdev_device_driver, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #6
  br label %12

12:                                               ; preds = %11, %6, %1
  %13 = phi i32 [ %4, %1 ], [ %9, %11 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serdev_drv_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.serdev_device_driver, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %1
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serdev_device_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serdev_device_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_device_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serdev_ctrl_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serdev_controller, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  tail call void @ida_free(ptr noundef nonnull @ctrl_ida, i32 noundef %3) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i64 2148025049}
!9 = !{i64 523359, i64 2148013330, i64 2148013356, i64 2148013403, i64 2148013425, i64 2148013453, i64 2148013473}
!10 = !{i64 509928, i64 509953, i64 509975, i64 509991, i64 510003, i64 510023, i64 510047, i64 510063, i64 510075}
!11 = !{i64 2148025175}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
