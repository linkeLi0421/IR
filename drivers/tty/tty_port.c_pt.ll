; ModuleID = '/llk/IR/drivers/tty/tty_port.c_pt.bc'
source_filename = "../drivers/tty/tty_port.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_default_client_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_default_client_ops\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_default_client_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_init\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_link_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_link_device\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_link_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_register_device_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_register_device_attr\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_register_device_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_register_device_attr_serdev:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_register_device_attr_serdev\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_register_device_attr_serdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_register_device_serdev:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_register_device_serdev\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_register_device_serdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_alloc_xmit_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_alloc_xmit_buf\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_alloc_xmit_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_free_xmit_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_free_xmit_buf\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_free_xmit_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_put:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_put\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_tty_get:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_tty_get\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_tty_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_tty_set:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_tty_set\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_tty_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_hangup\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_tty_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_tty_hangup\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_tty_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_tty_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_tty_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_tty_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_carrier_raised:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_carrier_raised\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_carrier_raised:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_raise_dtr_rts:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_raise_dtr_rts\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_raise_dtr_rts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_lower_dtr_rts:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_lower_dtr_rts\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_lower_dtr_rts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_block_til_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_block_til_ready\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_block_til_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_close_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_close_start\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_close_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_close_end:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_close_end\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_close_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_close:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_close\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_install:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_install\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_install:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_port_open:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_port_open\22\09\09\09\09\09"
module asm "__kstrtabns_tty_port_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tty_port_client_operations = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.59, %struct.anon.60, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.59 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.60 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@tty_port_default_client_ops = dso_local constant %struct.tty_port_client_operations { ptr @tty_port_default_receive_buf, ptr @tty_port_default_wakeup }, align 4
@__kstrtab_tty_port_default_client_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_default_client_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_default_client_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_default_client_ops to i32), ptr @__kstrtab_tty_port_default_client_ops, ptr @__kstrtabns_tty_port_default_client_ops }, section "___ksymtab_gpl+tty_port_default_client_ops", align 4
@tty_port_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&port->open_wait\00", align 1
@tty_port_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"&port->delta_msr_wait\00", align 1
@tty_port_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&port->mutex\00", align 1
@tty_port_init.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"&port->buf_mutex\00", align 1
@__kstrtab_tty_port_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_init to i32), ptr @__kstrtab_tty_port_init, ptr @__kstrtabns_tty_port_init }, section "___ksymtab+tty_port_init", align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"drivers/tty/tty_port.c\00", align 1
@__kstrtab_tty_port_link_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_link_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_link_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_link_device to i32), ptr @__kstrtab_tty_port_link_device, ptr @__kstrtabns_tty_port_link_device }, section "___ksymtab_gpl+tty_port_link_device", align 4
@__kstrtab_tty_port_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_register_device to i32), ptr @__kstrtab_tty_port_register_device, ptr @__kstrtabns_tty_port_register_device }, section "___ksymtab_gpl+tty_port_register_device", align 4
@__kstrtab_tty_port_register_device_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_register_device_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_register_device_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_register_device_attr to i32), ptr @__kstrtab_tty_port_register_device_attr, ptr @__kstrtabns_tty_port_register_device_attr }, section "___ksymtab_gpl+tty_port_register_device_attr", align 4
@__kstrtab_tty_port_register_device_attr_serdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_register_device_attr_serdev = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_register_device_attr_serdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_register_device_attr_serdev to i32), ptr @__kstrtab_tty_port_register_device_attr_serdev, ptr @__kstrtabns_tty_port_register_device_attr_serdev }, section "___ksymtab_gpl+tty_port_register_device_attr_serdev", align 4
@__kstrtab_tty_port_register_device_serdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_register_device_serdev = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_register_device_serdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_register_device_serdev to i32), ptr @__kstrtab_tty_port_register_device_serdev, ptr @__kstrtabns_tty_port_register_device_serdev }, section "___ksymtab_gpl+tty_port_register_device_serdev", align 4
@__kstrtab_tty_port_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_unregister_device to i32), ptr @__kstrtab_tty_port_unregister_device, ptr @__kstrtabns_tty_port_unregister_device }, section "___ksymtab_gpl+tty_port_unregister_device", align 4
@__kstrtab_tty_port_alloc_xmit_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_alloc_xmit_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_alloc_xmit_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_alloc_xmit_buf to i32), ptr @__kstrtab_tty_port_alloc_xmit_buf, ptr @__kstrtabns_tty_port_alloc_xmit_buf }, section "___ksymtab+tty_port_alloc_xmit_buf", align 4
@__kstrtab_tty_port_free_xmit_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_free_xmit_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_free_xmit_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_free_xmit_buf to i32), ptr @__kstrtab_tty_port_free_xmit_buf, ptr @__kstrtabns_tty_port_free_xmit_buf }, section "___ksymtab+tty_port_free_xmit_buf", align 4
@__kstrtab_tty_port_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_destroy to i32), ptr @__kstrtab_tty_port_destroy, ptr @__kstrtabns_tty_port_destroy }, section "___ksymtab+tty_port_destroy", align 4
@__kstrtab_tty_port_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_put = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_put to i32), ptr @__kstrtab_tty_port_put, ptr @__kstrtabns_tty_port_put }, section "___ksymtab+tty_port_put", align 4
@__kstrtab_tty_port_tty_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_tty_get = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_tty_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_tty_get to i32), ptr @__kstrtab_tty_port_tty_get, ptr @__kstrtabns_tty_port_tty_get }, section "___ksymtab+tty_port_tty_get", align 4
@__kstrtab_tty_port_tty_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_tty_set = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_tty_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_tty_set to i32), ptr @__kstrtab_tty_port_tty_set, ptr @__kstrtabns_tty_port_tty_set }, section "___ksymtab+tty_port_tty_set", align 4
@__kstrtab_tty_port_hangup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_hangup = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_hangup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_hangup to i32), ptr @__kstrtab_tty_port_hangup, ptr @__kstrtabns_tty_port_hangup }, section "___ksymtab+tty_port_hangup", align 4
@__kstrtab_tty_port_tty_hangup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_tty_hangup = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_tty_hangup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_tty_hangup to i32), ptr @__kstrtab_tty_port_tty_hangup, ptr @__kstrtabns_tty_port_tty_hangup }, section "___ksymtab_gpl+tty_port_tty_hangup", align 4
@__kstrtab_tty_port_tty_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_tty_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_tty_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_tty_wakeup to i32), ptr @__kstrtab_tty_port_tty_wakeup, ptr @__kstrtabns_tty_port_tty_wakeup }, section "___ksymtab_gpl+tty_port_tty_wakeup", align 4
@__kstrtab_tty_port_carrier_raised = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_carrier_raised = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_carrier_raised = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_carrier_raised to i32), ptr @__kstrtab_tty_port_carrier_raised, ptr @__kstrtabns_tty_port_carrier_raised }, section "___ksymtab+tty_port_carrier_raised", align 4
@__kstrtab_tty_port_raise_dtr_rts = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_raise_dtr_rts = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_raise_dtr_rts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_raise_dtr_rts to i32), ptr @__kstrtab_tty_port_raise_dtr_rts, ptr @__kstrtabns_tty_port_raise_dtr_rts }, section "___ksymtab+tty_port_raise_dtr_rts", align 4
@__kstrtab_tty_port_lower_dtr_rts = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_lower_dtr_rts = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_lower_dtr_rts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_lower_dtr_rts to i32), ptr @__kstrtab_tty_port_lower_dtr_rts, ptr @__kstrtabns_tty_port_lower_dtr_rts }, section "___ksymtab+tty_port_lower_dtr_rts", align 4
@__kstrtab_tty_port_block_til_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_block_til_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_block_til_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_block_til_ready to i32), ptr @__kstrtab_tty_port_block_til_ready, ptr @__kstrtabns_tty_port_block_til_ready }, section "___ksymtab+tty_port_block_til_ready", align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"\014%s %s: %s: tty->count = 1 port count = %d\0A\00", align 1
@__func__.tty_port_close_start = private unnamed_addr constant [21 x i8] c"tty_port_close_start\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\014%s %s: %s: bad port count (%d)\0A\00", align 1
@__kstrtab_tty_port_close_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_close_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_close_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_close_start to i32), ptr @__kstrtab_tty_port_close_start, ptr @__kstrtabns_tty_port_close_start }, section "___ksymtab+tty_port_close_start", align 4
@__kstrtab_tty_port_close_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_close_end = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_close_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_close_end to i32), ptr @__kstrtab_tty_port_close_end, ptr @__kstrtabns_tty_port_close_end }, section "___ksymtab+tty_port_close_end", align 4
@__kstrtab_tty_port_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_close = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_close to i32), ptr @__kstrtab_tty_port_close, ptr @__kstrtabns_tty_port_close }, section "___ksymtab+tty_port_close", align 4
@__kstrtab_tty_port_install = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_install = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_install = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_install to i32), ptr @__kstrtab_tty_port_install, ptr @__kstrtabns_tty_port_install }, section "___ksymtab_gpl+tty_port_install", align 4
@__kstrtab_tty_port_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_port_open = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_port_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_port_open to i32), ptr @__kstrtab_tty_port_open, ptr @__kstrtabns_tty_port_open }, section "___ksymtab+tty_port_open", align 4
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_tty_port_alloc_xmit_buf, ptr @__ksymtab_tty_port_block_til_ready, ptr @__ksymtab_tty_port_carrier_raised, ptr @__ksymtab_tty_port_close, ptr @__ksymtab_tty_port_close_end, ptr @__ksymtab_tty_port_close_start, ptr @__ksymtab_tty_port_default_client_ops, ptr @__ksymtab_tty_port_destroy, ptr @__ksymtab_tty_port_free_xmit_buf, ptr @__ksymtab_tty_port_hangup, ptr @__ksymtab_tty_port_init, ptr @__ksymtab_tty_port_install, ptr @__ksymtab_tty_port_link_device, ptr @__ksymtab_tty_port_lower_dtr_rts, ptr @__ksymtab_tty_port_open, ptr @__ksymtab_tty_port_put, ptr @__ksymtab_tty_port_raise_dtr_rts, ptr @__ksymtab_tty_port_register_device, ptr @__ksymtab_tty_port_register_device_attr, ptr @__ksymtab_tty_port_register_device_attr_serdev, ptr @__ksymtab_tty_port_register_device_serdev, ptr @__ksymtab_tty_port_tty_get, ptr @__ksymtab_tty_port_tty_hangup, ptr @__ksymtab_tty_port_tty_set, ptr @__ksymtab_tty_port_tty_wakeup, ptr @__ksymtab_tty_port_unregister_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_port_default_receive_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 2
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @tty_ldisc_ref(ptr noundef nonnull %6) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @tty_ldisc_receive_buf(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  tail call void @tty_ldisc_deref(ptr noundef nonnull %9) #7
  br label %13

13:                                               ; preds = %11, %8, %4
  %14 = phi i32 [ %12, %11 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tty_port_default_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #7, !srcloc !9
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !10

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %19, label %16, !prof !11

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #7
  br label %19

18:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  br label %20

19:                                               ; preds = %16, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  tail call void @tty_wakeup(ptr noundef nonnull %5) #7
  tail call void @tty_kref_put(ptr noundef nonnull %5) #7
  br label %20

20:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_init(ptr noundef %0) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(212) %0, i8 0, i32 212, i1 false)
  tail call void @tty_buffer_init(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @tty_port_init.__key) #7
  %3 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @tty_port_init.__key.1) #7
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @tty_port_init.__key.3) #7
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @tty_port_init.__key.5) #7
  %6 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 16
  store i32 50, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 17
  store i32 3000, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 4
  store ptr @tty_port_default_client_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 19
  store volatile i32 1, ptr %10, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_link_device(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %8, label %7, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 %2
  store ptr %0, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_port_register_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %2
  store ptr %0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %8
  %14 = tail call ptr @tty_register_device_attr(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null) #7
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_port_register_device_attr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %2
  store ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = tail call ptr @tty_register_device_attr(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_register_device_attr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_port_register_device_attr_serdev(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %2
  store ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = tail call ptr @serdev_tty_port_register(ptr noundef %0, ptr noundef %3, ptr noundef %1, i32 noundef %2) #7
  %17 = icmp eq ptr %16, inttoptr (i32 -19 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call ptr @tty_register_device_attr(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ %16, %15 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serdev_tty_port_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_port_register_device_serdev(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %2
  store ptr %0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %8
  %14 = tail call ptr @serdev_tty_port_register(ptr noundef %0, ptr noundef %3, ptr noundef %1, i32 noundef %2) #7
  %15 = icmp eq ptr %14, inttoptr (i32 -19 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @tty_register_device_attr(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null) #7
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %14, %13 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_unregister_device(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @serdev_tty_port_unregister(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @tty_unregister_device(ptr noundef %1, i32 noundef %2) #7
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_tty_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_port_alloc_xmit_buf(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %8 = inttoptr i32 %7 to ptr
  store ptr %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #7
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i32 -12, i32 0
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_free_xmit_buf(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #7
  store ptr null, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_destroy(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @tty_buffer_cancel_work(ptr noundef %0) #7
  tail call void @tty_buffer_free_all(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tty_buffer_cancel_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %33, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #7
  br label %33

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %12 = getelementptr %struct.tty_port, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %33

16:                                               ; preds = %11
  %17 = getelementptr %struct.tty_port, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = ptrtoint ptr %18 to i32
  tail call void @free_pages(i32 noundef %21, i32 noundef 0) #7
  br label %22

22:                                               ; preds = %20, %16
  %23 = tail call zeroext i1 @tty_buffer_cancel_work(ptr noundef nonnull %0) #7
  tail call void @tty_buffer_free_all(ptr noundef nonnull %0) #7
  %24 = getelementptr %struct.tty_port, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tty_port_operations, ptr %25, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef nonnull %0) #7
  br label %33

32:                                               ; preds = %27, %22
  tail call void @kfree(ptr noundef nonnull %0) #7
  br label %33

33:                                               ; preds = %32, %31, %15, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_port_tty_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #7, !srcloc !9
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !10

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #7
  br label %18

18:                                               ; preds = %16, %12, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_tty_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @tty_kref_put(ptr noundef %6) #7
  %7 = icmp eq ptr %1, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #7, !srcloc !9
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !10

13:                                               ; preds = %8
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %13, %8
  %18 = phi i32 [ 2, %8 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #7
  br label %19

19:                                               ; preds = %17, %13, %2
  store ptr %1, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_hangup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #7
  br label %10

10:                                               ; preds = %8, %1
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  %11 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 12
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = load volatile i32, ptr %11, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %11) #7
  br i1 %7, label %34, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 13, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tty_port_operations, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void %31(ptr noundef %0, i32 noundef 0) #7
  br label %34

34:                                               ; preds = %33, %27, %22, %21
  %35 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tty_port_operations, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void %38(ptr noundef %0) #7
  br label %41

41:                                               ; preds = %40, %34, %17, %10
  tail call void @mutex_unlock(ptr noundef %12) #7
  tail call void @tty_kref_put(ptr noundef %6) #7
  %42 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %42, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %43 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %43, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_tty_hangup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #7, !srcloc !9
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !10

13:                                               ; preds = %8
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %20, label %17, !prof !11

17:                                               ; preds = %13, %8
  %18 = phi i32 [ 2, %8 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #7
  br label %20

19:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  br label %27

20:                                               ; preds = %17, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  br i1 %1, label %21, label %26

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 13, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %20
  tail call void @tty_hangup(ptr noundef nonnull %6) #7
  br label %27

27:                                               ; preds = %26, %21, %19
  tail call void @tty_kref_put(ptr noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_tty_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port_client_operations, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_port_carrier_raised(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 1, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_raise_dtr_rts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port_operations, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0, i32 noundef 1) #7
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_lower_dtr_rts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port_operations, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0, i32 noundef 0) #7
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_port_block_til_ready(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #7
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  br label %109

16:                                               ; preds = %3
  %17 = icmp eq ptr %2, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18, %16
  %24 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4111
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tty_port_operations, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void %32(ptr noundef %0, i32 noundef 1) #7
  br label %35

35:                                               ; preds = %34, %28, %23
  %36 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  br label %109

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2048
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #7
  %44 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -1
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #7
  %50 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  %51 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %52 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 8
  br label %53

53:                                               ; preds = %96, %37
  %54 = load i32, ptr %38, align 4
  %55 = and i32 %54, 4111
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = load volatile i32, ptr %50, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %51, align 4
  %63 = getelementptr inbounds %struct.tty_port_operations, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  call void %64(ptr noundef %0, i32 noundef 1) #7
  br label %67

67:                                               ; preds = %66, %61, %57, %53
  call void @prepare_to_wait(ptr noundef %52, ptr noundef nonnull %4, i32 noundef 1) #7
  %68 = call i32 @tty_hung_up_p(ptr noundef nonnull %2) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load volatile i32, ptr %50, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %67
  %75 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 -512, i32 -11
  br label %97

80:                                               ; preds = %70
  br i1 %41, label %81, label %97

81:                                               ; preds = %80
  %82 = load ptr, ptr %51, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = call i32 %83(ptr noundef %0) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load volatile i32, ptr %6, align 4
  %90 = and i32 %89, 256
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97, !prof !11

92:                                               ; preds = %88
  %93 = load volatile i32, ptr %6, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  call void @tty_unlock(ptr noundef %1) #7
  call void @schedule() #7
  call void @tty_lock(ptr noundef %1) #7
  br label %53

97:                                               ; preds = %92, %88, %85, %81, %80, %74
  %98 = phi i1 [ false, %74 ], [ false, %88 ], [ true, %81 ], [ false, %92 ], [ true, %85 ], [ true, %80 ]
  %99 = phi i32 [ %79, %74 ], [ -512, %88 ], [ 0, %81 ], [ -512, %92 ], [ 0, %85 ], [ 0, %80 ]
  call void @finish_wait(ptr noundef %52, ptr noundef nonnull %4) #7
  %100 = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #7
  %101 = call i32 @tty_hung_up_p(ptr noundef nonnull %2) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, ptr %44, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %44, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, ptr %47, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %47, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %100) #7
  br i1 %98, label %109, label %112

109:                                              ; preds = %106, %35, %14
  %110 = phi ptr [ %36, %35 ], [ %15, %14 ], [ %50, %106 ]
  %111 = phi i32 [ 0, %35 ], [ 0, %14 ], [ %99, %106 ]
  call void @_set_bit(i32 noundef 2, ptr noundef %110) #7
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i32 [ %99, %106 ], [ %111, %109 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_port_close_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @tty_hung_up_p(ptr noundef %2) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  %12 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  br i1 %11, label %14, label %23

14:                                               ; preds = %6
  %15 = icmp eq i32 %13, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = tail call ptr @tty_driver_name(ptr noundef %1) #7
  %18 = tail call ptr @tty_name(ptr noundef %1) #7
  %19 = load i32, ptr %12, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %17, ptr noundef %18, ptr noundef nonnull @__func__.tty_port_close_start, i32 noundef %19) #8
  br label %21

21:                                               ; preds = %16, %14
  %22 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  br label %35

23:                                               ; preds = %6
  %24 = add i32 %13, -1
  %25 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = tail call ptr @tty_driver_name(ptr noundef %1) #7
  %29 = tail call ptr @tty_name(ptr noundef %1) #7
  %30 = load i32, ptr %25, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %28, ptr noundef %29, ptr noundef nonnull @__func__.tty_port_close_start, i32 noundef %30) #8
  br label %35

32:                                               ; preds = %23
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  br label %70

35:                                               ; preds = %27, %21
  %36 = phi ptr [ %22, %21 ], [ %25, %27 ]
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  %38 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 33
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 19, i32 2
  %45 = load i8, ptr %44, align 1, !range !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @tty_driver_flush_buffer(ptr noundef %1) #7
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @tty_wait_until_sent(ptr noundef %1, i32 noundef %50) #7
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 18
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %59 = tail call i32 @tty_termios_baud_rate(ptr noundef %58) #7
  %60 = icmp ugt i32 %59, 1200
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, ptr %54, align 4
  %63 = mul i32 %62, 1000
  %64 = udiv i32 %63, %59
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 10) #7
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i32 [ %65, %61 ], [ 200, %57 ]
  %68 = tail call i32 @schedule_timeout_interruptible(i32 noundef %67) #7
  br label %69

69:                                               ; preds = %66, %53, %37
  tail call void @tty_ldisc_flush(ptr noundef %1) #7
  br label %70

70:                                               ; preds = %69, %34, %3
  %71 = phi i32 [ 0, %34 ], [ 1, %69 ], [ 0, %3 ]
  ret i32 %71
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_driver_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_close_end(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @tty_ldisc_flush(ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 33
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  %10 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @jiffies_to_msecs(i32 noundef %11) #7
  %15 = tail call i32 @msleep_interruptible(i32 noundef %14) #7
  br label %16

16:                                               ; preds = %13, %9
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %18 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ %17, %16 ], [ %5, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %20) #7
  %21 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %21) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_port_close(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @tty_port_close_start(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %13) #7
  %18 = icmp eq ptr %1, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tty_port_operations, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef %0, i32 noundef 0) #7
  br label %31

31:                                               ; preds = %30, %24, %19, %17
  %32 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tty_port_operations, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void %35(ptr noundef %0) #7
  br label %38

38:                                               ; preds = %37, %31, %12, %6
  tail call void @mutex_unlock(ptr noundef %7) #7
  %39 = load i8, ptr %8, align 4
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %43) #7
  br label %44

44:                                               ; preds = %42, %38
  tail call void @tty_port_close_end(ptr noundef %0, ptr noundef %1)
  %45 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #7
  %47 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @tty_kref_put(ptr noundef %48) #7
  store ptr null, ptr %47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #7
  br label %49

49:                                               ; preds = %44, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_port_install(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 37
  store ptr %0, ptr %4, align 4
  %5 = tail call i32 @tty_standard_install(ptr noundef %1, ptr noundef %2) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_port_open(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %8 = load i16, ptr %4, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %11 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @tty_kref_put(ptr noundef %12) #7
  %13 = icmp eq ptr %1, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #7, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #7, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #7
  br label %25

25:                                               ; preds = %23, %19, %3
  store ptr %1, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %10) #7
  %26 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %26) #7
  %27 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %32) #7
  %33 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tty_port_operations, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = tail call i32 %36(ptr noundef %0, ptr noundef %1) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef %26) #7
  br label %45

42:                                               ; preds = %38, %31
  tail call void @_set_bit(i32 noundef 0, ptr noundef %27) #7
  br label %43

43:                                               ; preds = %42, %25
  tail call void @mutex_unlock(ptr noundef %26) #7
  %44 = tail call i32 @tty_port_block_til_ready(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %44, %43 ], [ %39, %41 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_receive_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 866548, i64 2148356519, i64 2148356545, i64 2148356592, i64 2148356614, i64 2148356642, i64 2148356662}
!9 = !{i64 2148369392, i64 2148369424, i64 2148369453, i64 2148369487, i64 2148369518, i64 2148369541}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148469614}
!13 = !{i64 2148371749, i64 2148371781, i64 2148371810, i64 2148371844, i64 2148371875, i64 2148371898}
!14 = !{i64 2149793590}
!15 = !{i8 0, i8 2}
!16 = !{i64 2149033614}
!17 = !{i64 2149029438}
!18 = !{i64 2149029513, i64 2149029540, i64 2149029587, i64 2149029609, i64 2149029637, i64 2149029657}
!19 = !{i64 772471}
!20 = !{i64 2149057758}
