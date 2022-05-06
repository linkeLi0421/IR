; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_port.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_port.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_clear_and_reinit_fifos:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_clear_and_reinit_fifos\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_clear_and_reinit_fifos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rpm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rpm_get\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rpm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rpm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rpm_put\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rpm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_em485_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_em485_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_em485_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_em485_config:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_em485_config\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_em485_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rpm_get_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rpm_get_tx\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rpm_get_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rpm_put_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rpm_put_tx\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rpm_put_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_em485_stop_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_em485_stop_tx\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_em485_stop_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_em485_start_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_em485_start_tx\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_em485_start_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_read_char:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_read_char\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_read_char:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rx_chars:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rx_chars\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rx_chars:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_tx_chars:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_tx_chars\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_tx_chars:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_modem_status:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_modem_status\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_modem_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_handle_irq\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_get_mctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_get_mctrl\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_get_mctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_set_mctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_set_mctrl\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_set_mctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_startup\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_set_divisor:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_set_divisor\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_set_divisor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_update_uartclk:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_update_uartclk\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_update_uartclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_set_termios\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_set_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_set_ldisc\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_set_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_do_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_do_pm\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_do_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_init_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_init_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_init_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_set_defaults:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_set_defaults\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_set_defaults:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.serial8250_config = type { ptr, i16, i16, i8, [4 x i8], i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.uart_8250_em485 = type { %struct.hrtimer, %struct.hrtimer, ptr, ptr, i8 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.1 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.uart_8250_ops = type { ptr, ptr }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__kstrtab_serial8250_clear_and_reinit_fifos = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_clear_and_reinit_fifos = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_clear_and_reinit_fifos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_clear_and_reinit_fifos to i32), ptr @__kstrtab_serial8250_clear_and_reinit_fifos, ptr @__kstrtabns_serial8250_clear_and_reinit_fifos }, section "___ksymtab_gpl+serial8250_clear_and_reinit_fifos", align 4
@__kstrtab_serial8250_rpm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rpm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rpm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rpm_get to i32), ptr @__kstrtab_serial8250_rpm_get, ptr @__kstrtabns_serial8250_rpm_get }, section "___ksymtab_gpl+serial8250_rpm_get", align 4
@__kstrtab_serial8250_rpm_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rpm_put = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rpm_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rpm_put to i32), ptr @__kstrtab_serial8250_rpm_put, ptr @__kstrtabns_serial8250_rpm_put }, section "___ksymtab_gpl+serial8250_rpm_put", align 4
@__kstrtab_serial8250_em485_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_em485_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_em485_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_em485_destroy to i32), ptr @__kstrtab_serial8250_em485_destroy, ptr @__kstrtabns_serial8250_em485_destroy }, section "___ksymtab_gpl+serial8250_em485_destroy", align 4
@__kstrtab_serial8250_em485_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_em485_config = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_em485_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_em485_config to i32), ptr @__kstrtab_serial8250_em485_config, ptr @__kstrtabns_serial8250_em485_config }, section "___ksymtab_gpl+serial8250_em485_config", align 4
@__kstrtab_serial8250_rpm_get_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rpm_get_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rpm_get_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rpm_get_tx to i32), ptr @__kstrtab_serial8250_rpm_get_tx, ptr @__kstrtabns_serial8250_rpm_get_tx }, section "___ksymtab_gpl+serial8250_rpm_get_tx", align 4
@__kstrtab_serial8250_rpm_put_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rpm_put_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rpm_put_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rpm_put_tx to i32), ptr @__kstrtab_serial8250_rpm_put_tx, ptr @__kstrtabns_serial8250_rpm_put_tx }, section "___ksymtab_gpl+serial8250_rpm_put_tx", align 4
@__kstrtab_serial8250_em485_stop_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_em485_stop_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_em485_stop_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_em485_stop_tx to i32), ptr @__kstrtab_serial8250_em485_stop_tx, ptr @__kstrtabns_serial8250_em485_stop_tx }, section "___ksymtab_gpl+serial8250_em485_stop_tx", align 4
@__kstrtab_serial8250_em485_start_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_em485_start_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_em485_start_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_em485_start_tx to i32), ptr @__kstrtab_serial8250_em485_start_tx, ptr @__kstrtabns_serial8250_em485_start_tx }, section "___ksymtab_gpl+serial8250_em485_start_tx", align 4
@__kstrtab_serial8250_read_char = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_read_char = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_read_char = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_read_char to i32), ptr @__kstrtab_serial8250_read_char, ptr @__kstrtabns_serial8250_read_char }, section "___ksymtab_gpl+serial8250_read_char", align 4
@__kstrtab_serial8250_rx_chars = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rx_chars = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rx_chars = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rx_chars to i32), ptr @__kstrtab_serial8250_rx_chars, ptr @__kstrtabns_serial8250_rx_chars }, section "___ksymtab_gpl+serial8250_rx_chars", align 4
@__kstrtab_serial8250_tx_chars = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_tx_chars = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_tx_chars = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_tx_chars to i32), ptr @__kstrtab_serial8250_tx_chars, ptr @__kstrtabns_serial8250_tx_chars }, section "___ksymtab_gpl+serial8250_tx_chars", align 4
@__kstrtab_serial8250_modem_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_modem_status = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_modem_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_modem_status to i32), ptr @__kstrtab_serial8250_modem_status, ptr @__kstrtabns_serial8250_modem_status }, section "___ksymtab_gpl+serial8250_modem_status", align 4
@__kstrtab_serial8250_handle_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_handle_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_handle_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_handle_irq to i32), ptr @__kstrtab_serial8250_handle_irq, ptr @__kstrtabns_serial8250_handle_irq }, section "___ksymtab_gpl+serial8250_handle_irq", align 4
@__kstrtab_serial8250_do_get_mctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_get_mctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_get_mctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_get_mctrl to i32), ptr @__kstrtab_serial8250_do_get_mctrl, ptr @__kstrtabns_serial8250_do_get_mctrl }, section "___ksymtab_gpl+serial8250_do_get_mctrl", align 4
@__kstrtab_serial8250_do_set_mctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_set_mctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_set_mctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_set_mctrl to i32), ptr @__kstrtab_serial8250_do_set_mctrl, ptr @__kstrtabns_serial8250_do_set_mctrl }, section "___ksymtab_gpl+serial8250_do_set_mctrl", align 4
@uart_config = internal unnamed_addr constant [122 x %struct.serial8250_config] [%struct.serial8250_config { ptr @.str.6, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.7, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.8, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.9, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.10, i16 16, i16 16, i8 -127, [4 x i8] c"\01\04\08\0E", i32 256 }, %struct.serial8250_config { ptr @.str.11, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.12, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 1792 }, %struct.serial8250_config { ptr @.str.13, i16 32, i16 16, i8 65, [4 x i8] c"\08\10\18\1C", i32 1792 }, %struct.serial8250_config { ptr @.str.14, i16 64, i16 64, i8 -95, [4 x i8] c"\01\10 8", i32 3328 }, %struct.serial8250_config { ptr @.str.15, i16 1, i16 1, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.16, i16 128, i16 128, i8 65, [4 x i8] c"\10 px", i32 1280 }, %struct.serial8250_config { ptr @.str.17, i16 64, i16 32, i8 97, [4 x i8] c"\08\108<", i32 1792 }, %struct.serial8250_config { ptr @.str.18, i16 128, i16 128, i8 -127, [4 x i8] zeroinitializer, i32 1792 }, %struct.serial8250_config { ptr @.str.19, i16 2048, i16 2048, i8 -63, [4 x i8] zeroinitializer, i32 256 }, %struct.serial8250_config { ptr @.str.20, i16 16, i16 16, i8 -127, [4 x i8] zeroinitializer, i32 264 }, %struct.serial8250_config { ptr @.str.21, i16 32, i16 32, i8 -127, [4 x i8] zeroinitializer, i32 12544 }, %struct.serial8250_config zeroinitializer, %struct.serial8250_config { ptr @.str.22, i16 64, i16 64, i8 -127, [4 x i8] zeroinitializer, i32 256 }, %struct.serial8250_config { ptr @.str.23, i16 16, i16 16, i8 1, [4 x i8] zeroinitializer, i32 256 }, %struct.serial8250_config { ptr @.str.24, i16 64, i16 64, i8 -127, [4 x i8] zeroinitializer, i32 2304 }, %struct.serial8250_config { ptr @.str.25, i16 32, i16 8, i8 81, [4 x i8] c"\01\04\08\0E", i32 8448 }, %struct.serial8250_config { ptr @.str.26, i16 64, i16 64, i8 -127, [4 x i8] zeroinitializer, i32 3840 }, %struct.serial8250_config { ptr @.str.27, i16 64, i16 32, i8 9, [4 x i8] zeroinitializer, i32 256 }, %struct.serial8250_config { ptr @.str.28, i16 0, i16 0, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.serial8250_config { ptr @.str.29, i16 256, i16 256, i8 -15, [4 x i8] zeroinitializer, i32 3840 }, %struct.serial8250_config { ptr @.str.30, i16 1, i16 1024, i8 0, [4 x i8] zeroinitializer, i32 16384 }, %struct.serial8250_config { ptr @.str.31, i16 32, i16 32, i8 -127, [4 x i8] c"\01\08\10\1E", i32 2304 }, %struct.serial8250_config { ptr @.str.32, i16 64, i16 64, i8 -127, [4 x i8] c"\01\10 >", i32 2304 }, %struct.serial8250_config { ptr @.str.33, i16 128, i16 128, i8 -127, [4 x i8] c"\01 @~", i32 2304 }, %struct.serial8250_config { ptr @.str.34, i16 16, i16 16, i8 -127, [4 x i8] c"\01\04\08\0E", i32 256 }, %struct.serial8250_config { ptr @.str.35, i16 64, i16 63, i8 -95, [4 x i8] zeroinitializer, i32 256 }, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config { ptr @.str.36, i16 16, i16 16, i8 -121, [4 x i8] c"\01\04\08\0E", i32 256 }, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config { ptr @.str.37, i16 16, i16 16, i8 -119, [4 x i8] c"\01\04\08\0E", i32 2304 }, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config { ptr @.str.38, i16 16, i16 16, i8 7, [4 x i8] zeroinitializer, i32 256 }, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config zeroinitializer, %struct.serial8250_config { ptr @.str.39, i16 128, i16 128, i8 -127, [4 x i8] c"\01 @p", i32 1280 }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@serial8250_do_startup._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.serial8250_do_startup = private unnamed_addr constant [22 x i8] c"serial8250_do_startup\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"LSR safety check engaged!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"TX FIFO Threshold errors, skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"forbid DMA for kernel console\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to request DMA\00", align 1
@serial8250_do_startup._rs.4 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__kstrtab_serial8250_do_startup = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_startup = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_startup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_startup to i32), ptr @__kstrtab_serial8250_do_startup, ptr @__kstrtabns_serial8250_do_startup }, section "___ksymtab_gpl+serial8250_do_startup", align 4
@__kstrtab_serial8250_do_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_shutdown to i32), ptr @__kstrtab_serial8250_do_shutdown, ptr @__kstrtabns_serial8250_do_shutdown }, section "___ksymtab_gpl+serial8250_do_shutdown", align 4
@__kstrtab_serial8250_do_set_divisor = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_set_divisor = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_set_divisor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_set_divisor to i32), ptr @__kstrtab_serial8250_do_set_divisor, ptr @__kstrtabns_serial8250_do_set_divisor }, section "___ksymtab_gpl+serial8250_do_set_divisor", align 4
@__kstrtab_serial8250_update_uartclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_update_uartclk = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_update_uartclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_update_uartclk to i32), ptr @__kstrtab_serial8250_update_uartclk, ptr @__kstrtabns_serial8250_update_uartclk }, section "___ksymtab_gpl+serial8250_update_uartclk", align 4
@__kstrtab_serial8250_do_set_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_set_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_set_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_set_termios to i32), ptr @__kstrtab_serial8250_do_set_termios, ptr @__kstrtabns_serial8250_do_set_termios }, section "___ksymtab+serial8250_do_set_termios", align 4
@__kstrtab_serial8250_do_set_ldisc = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_set_ldisc = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_set_ldisc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_set_ldisc to i32), ptr @__kstrtab_serial8250_do_set_ldisc, ptr @__kstrtabns_serial8250_do_set_ldisc }, section "___ksymtab_gpl+serial8250_do_set_ldisc", align 4
@__kstrtab_serial8250_do_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_do_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_do_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_do_pm to i32), ptr @__kstrtab_serial8250_do_pm, ptr @__kstrtabns_serial8250_do_pm }, section "___ksymtab+serial8250_do_pm", align 4
@serial8250_pops = internal constant %struct.uart_ops { ptr @serial8250_tx_empty, ptr @serial8250_set_mctrl, ptr @serial8250_get_mctrl, ptr @serial8250_stop_tx, ptr @serial8250_start_tx, ptr @serial8250_throttle, ptr @serial8250_unthrottle, ptr null, ptr @serial8250_stop_rx, ptr @serial8250_enable_ms, ptr @serial8250_break_ctl, ptr @serial8250_startup, ptr @serial8250_shutdown, ptr null, ptr @serial8250_set_termios, ptr @serial8250_set_ldisc, ptr @serial8250_pm, ptr @serial8250_type, ptr @serial8250_release_port, ptr @serial8250_request_port, ptr @serial8250_config_port, ptr @serial8250_verify_port, ptr null }, align 4
@__kstrtab_serial8250_init_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_init_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_init_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_init_port to i32), ptr @__kstrtab_serial8250_init_port, ptr @__kstrtabns_serial8250_init_port }, section "___ksymtab_gpl+serial8250_init_port", align 4
@__kstrtab_serial8250_set_defaults = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_set_defaults = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_set_defaults = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_set_defaults to i32), ptr @__kstrtab_serial8250_set_defaults, ptr @__kstrtabns_serial8250_set_defaults }, section "___ksymtab_gpl+serial8250_set_defaults", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@__UNIQUE_ID_file231 = internal constant [49 x i8] c"8250_base.file=drivers/tty/serial/8250/8250_base\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"8250_base.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"8250\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"16450\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"16550\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"16550A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Cirrus\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ST16650\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ST16650V2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"TI16750\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Startech\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"16C950/954\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ST16654\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"XR16850\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"NS16550A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"XScale\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"OCTEON\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"AR7\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"U6_16550A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Tegra\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"XR17D15X\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"LPC3220\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"CIR port\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"XR17V35X\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"TruManage\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Altera 16550 FIFO32\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Altera 16550 FIFO64\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Altera 16550 FIFO128\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Palmchip BK-3103\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"16550A_FSL64\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Nuvoton 16550\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"TI DA8xx/66AK2x\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"MediaTek BTIF\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Sunix\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"detected caps %08x should be %08x\0A\00", align 1
@serial8250_dev_attr_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serial8250_dev_attrs, ptr null }, align 4
@serial8250_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_rx_trig_bytes, ptr null], align 4
@dev_attr_rx_trig_bytes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420 }, ptr @rx_trig_bytes_show, ptr @rx_trig_bytes_store }, align 4
@.str.42 = private unnamed_addr constant [14 x i8] c"rx_trig_bytes\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_serial8250_clear_and_reinit_fifos, ptr @__ksymtab_serial8250_do_get_mctrl, ptr @__ksymtab_serial8250_do_pm, ptr @__ksymtab_serial8250_do_set_divisor, ptr @__ksymtab_serial8250_do_set_ldisc, ptr @__ksymtab_serial8250_do_set_mctrl, ptr @__ksymtab_serial8250_do_set_termios, ptr @__ksymtab_serial8250_do_shutdown, ptr @__ksymtab_serial8250_do_startup, ptr @__ksymtab_serial8250_em485_config, ptr @__ksymtab_serial8250_em485_destroy, ptr @__ksymtab_serial8250_em485_start_tx, ptr @__ksymtab_serial8250_em485_stop_tx, ptr @__ksymtab_serial8250_handle_irq, ptr @__ksymtab_serial8250_init_port, ptr @__ksymtab_serial8250_modem_status, ptr @__ksymtab_serial8250_read_char, ptr @__ksymtab_serial8250_rpm_get, ptr @__ksymtab_serial8250_rpm_get_tx, ptr @__ksymtab_serial8250_rpm_put, ptr @__ksymtab_serial8250_rpm_put_tx, ptr @__ksymtab_serial8250_rx_chars, ptr @__ksymtab_serial8250_set_defaults, ptr @__ksymtab_serial8250_tx_chars, ptr @__ksymtab_serial8250_update_uartclk], section "llvm.metadata"
@switch.table.serial8250_config_port = private unnamed_addr constant [7 x ptr] [ptr @hub6_serial_in, ptr @mem_serial_in, ptr @mem32_serial_in, ptr @io_serial_in, ptr @io_serial_in, ptr @mem32be_serial_in, ptr @mem16_serial_in], align 4
@switch.table.serial8250_config_port.46 = private unnamed_addr constant [7 x ptr] [ptr @hub6_serial_out, ptr @mem_serial_out, ptr @mem32_serial_out, ptr @io_serial_out, ptr @io_serial_out, ptr @mem32be_serial_out, ptr @mem16_serial_out], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_clear_and_reinit_fifos(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %0, i32 noundef 2, i32 noundef 7) #13
  %10 = load ptr, ptr %7, align 4
  tail call void %10(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, i32 noundef 2, i32 noundef %14) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_rpm_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_rpm_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i64 @ktime_get_mono_fast_ns() #13
  %10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 22
  store volatile i64 %9, ptr %10, align 8
  %11 = load ptr, ptr %7, align 4
  %12 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #13
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_em485_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @hrtimer_cancel(ptr noundef nonnull %3) #13
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.uart_8250_em485, ptr %7, i32 0, i32 1
  %9 = tail call i32 @hrtimer_cancel(ptr noundef %8) #13
  %10 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %10) #13
  store ptr null, ptr %2, align 4
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_em485_config(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = lshr i32 %3, 1
  %5 = lshr i32 %3, 2
  %6 = xor i32 %4, %5
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = and i32 %3, -7
  %11 = or i32 %10, 2
  store i32 %11, ptr %1, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 100)
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 100)
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %19, i8 0, i32 20, i1 false)
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %20, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 57
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %1, align 4
  %24 = and i32 %23, 32
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef %24) #13
  %25 = load i32, ptr %1, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 23
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %27, label %58, label %31

31:                                               ; preds = %12
  br i1 %30, label %32, label %65

32:                                               ; preds = %31
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2592, i32 noundef 112) #14
  store ptr %34, ptr %28, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uart_8250_em485, ptr %34, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %37, i32 noundef 1, i32 noundef 1) #13
  %38 = load ptr, ptr %28, align 4
  tail call void @hrtimer_init(ptr noundef %38, i32 noundef 1, i32 noundef 1) #13
  %39 = load ptr, ptr %28, align 4
  %40 = getelementptr inbounds %struct.uart_8250_em485, ptr %39, i32 0, i32 1, i32 2
  store ptr @serial8250_em485_handle_stop_tx, ptr %40, align 8
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr inbounds %struct.hrtimer, ptr %41, i32 0, i32 2
  store ptr @serial8250_em485_handle_start_tx, ptr %42, align 8
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr inbounds %struct.uart_8250_em485, ptr %43, i32 0, i32 3
  store ptr %0, ptr %44, align 4
  %45 = load ptr, ptr %28, align 4
  %46 = getelementptr inbounds %struct.uart_8250_em485, ptr %45, i32 0, i32 2
  store ptr null, ptr %46, align 8
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr inbounds %struct.uart_8250_em485, ptr %47, i32 0, i32 4
  %49 = load i8, ptr %48, align 8
  %50 = or i8 %49, 1
  store i8 %50, ptr %48, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 25
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %0) #13
  br label %65

53:                                               ; preds = %32
  %54 = load i32, ptr %1, align 4
  %55 = and i32 %54, -2
  store i32 %55, ptr %1, align 4
  %56 = load i32, ptr %20, align 4
  %57 = and i32 %56, -2
  store i32 %57, ptr %20, align 4
  br label %65

58:                                               ; preds = %12
  br i1 %30, label %65, label %59

59:                                               ; preds = %58
  %60 = tail call i32 @hrtimer_cancel(ptr noundef nonnull %29) #13
  %61 = load ptr, ptr %28, align 4
  %62 = getelementptr inbounds %struct.uart_8250_em485, ptr %61, i32 0, i32 1
  %63 = tail call i32 @hrtimer_cancel(ptr noundef %62) #13
  %64 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %64) #13
  store ptr null, ptr %28, align 4
  br label %65

65:                                               ; preds = %59, %58, %53, %36, %31
  %66 = phi i32 [ -12, %53 ], [ 0, %58 ], [ 0, %59 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_rpm_get_tx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #13, !srcloc !9
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %7) #13, !srcloc !10
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %10 = trunc i32 %9 to i8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #13
  br label %16

16:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_rpm_put_tx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #13, !srcloc !9
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %7) #13, !srcloc !10
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %10 = trunc i32 %9 to i8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i64 @ktime_get_mono_fast_ns() #13
  %16 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 22
  store volatile i64 %15, ptr %16, align 8
  %17 = load ptr, ptr %13, align 4
  %18 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #13
  br label %19

19:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_em485_stop_tx(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 4) #13
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %10 = call i32 @mctrl_gpio_get_outputs(ptr noundef nonnull %7, ptr noundef nonnull %2) #13
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 3
  %13 = lshr i32 %10, 11
  %14 = and i32 %13, 4
  %15 = and i32 %13, 8
  %16 = and i32 %13, 16
  %17 = or i32 %14, %5
  %18 = or i32 %17, %12
  %19 = or i32 %18, %15
  %20 = or i32 %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %21

21:                                               ; preds = %9, %1
  %22 = phi i32 [ %20, %9 ], [ %5, %1 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %22, 253
  %26 = lshr i32 %24, 1
  %27 = and i32 %26, 2
  %28 = or i32 %27, %25
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  call void %30(ptr noundef %0, i32 noundef 4, i32 noundef %28) #13
  %31 = load ptr, ptr %6, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %21
  %34 = shl nuw nsw i32 %28, 1
  %35 = and i32 %34, 6
  %36 = shl nuw nsw i32 %28, 11
  %37 = and i32 %36, 8192
  %38 = or i32 %35, %37
  %39 = and i32 %36, 16384
  %40 = or i32 %38, %39
  %41 = and i32 %36, 32768
  %42 = or i32 %40, %41
  call void @mctrl_gpio_set(ptr noundef nonnull %31, i32 noundef %42) #13
  br label %43

43:                                               ; preds = %33, %21
  %44 = load i32, ptr %23, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %29, align 4
  call void %53(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %54 = load ptr, ptr %29, align 4
  call void %54(ptr noundef %0, i32 noundef 2, i32 noundef 7) #13
  %55 = load ptr, ptr %29, align 4
  call void %55(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  br label %56

56:                                               ; preds = %52, %47
  %57 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load ptr, ptr %29, align 4
  call void %60(ptr noundef %0, i32 noundef 2, i32 noundef %59) #13
  %61 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %62 = load i8, ptr %61, align 2
  %63 = or i8 %62, 5
  store i8 %63, ptr %61, align 2
  %64 = zext i8 %63 to i32
  %65 = load ptr, ptr %29, align 4
  call void %65(ptr noundef %0, i32 noundef 1, i32 noundef %64) #13
  br label %66

66:                                               ; preds = %56, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_em485_start_tx(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 4) #13
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %10 = call i32 @mctrl_gpio_get_outputs(ptr noundef nonnull %7, ptr noundef nonnull %2) #13
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 3
  %13 = lshr i32 %10, 11
  %14 = and i32 %13, 4
  %15 = and i32 %13, 8
  %16 = and i32 %13, 16
  %17 = or i32 %14, %5
  %18 = or i32 %17, %12
  %19 = or i32 %18, %15
  %20 = or i32 %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %21

21:                                               ; preds = %9, %1
  %22 = phi i32 [ %20, %9 ], [ %5, %1 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 4) #13
  br label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, -6
  store i8 %39, ptr %37, align 2
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -2
  store i32 %42, ptr %40, align 4
  %43 = zext i8 %39 to i32
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %0, i32 noundef 1, i32 noundef %43) #13
  %46 = load i32, ptr %28, align 4
  %47 = and i32 %46, 32768
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %51 = load ptr, ptr %50, align 4
  %52 = call i64 @ktime_get_mono_fast_ns() #13
  %53 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 11, i32 22
  store volatile i64 %52, ptr %53, align 8
  %54 = load ptr, ptr %50, align 4
  %55 = call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #13
  br label %56

56:                                               ; preds = %49, %36, %21
  %57 = load i32, ptr %23, align 4
  %58 = and i32 %57, 2
  %59 = and i32 %22, 253
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  call void %62(ptr noundef %0, i32 noundef 4, i32 noundef %60) #13
  %63 = load ptr, ptr %6, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %56
  %66 = shl nuw nsw i32 %60, 1
  %67 = and i32 %66, 6
  %68 = shl nuw nsw i32 %60, 11
  %69 = and i32 %68, 8192
  %70 = or i32 %67, %69
  %71 = and i32 %68, 16384
  %72 = or i32 %70, %71
  %73 = and i32 %68, 32768
  %74 = or i32 %72, %73
  call void @mctrl_gpio_set(ptr noundef nonnull %63, i32 noundef %74) #13
  br label %75

75:                                               ; preds = %65, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_stop_rx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, -6
  store i8 %13, ptr %11, align 2
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -2
  store i32 %16, ptr %14, align 4
  %17 = zext i8 %13 to i32
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0, i32 noundef 1, i32 noundef %17) #13
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i64 @ktime_get_mono_fast_ns() #13
  %27 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 11, i32 22
  store volatile i64 %26, ptr %27, align 8
  %28 = load ptr, ptr %24, align 4
  %29 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #13
  br label %30

30:                                               ; preds = %23, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_read_char(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = and i8 %1, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 0) #13
  %9 = and i32 %8, 255
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, %1
  store i8 0, ptr %15, align 4
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %67, label %21, !prof !15

21:                                               ; preds = %10
  %22 = and i32 %18, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = and i8 %17, -13
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = tail call fastcc i32 @uart_handle_break(ptr noundef %0)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %89

31:                                               ; preds = %21
  %32 = and i32 %18, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  br label %41

36:                                               ; preds = %31
  %37 = and i32 %18, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %35, %34 ], [ %40, %39 ]
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %36, %24
  %46 = phi i8 [ %25, %24 ], [ %17, %36 ], [ %17, %41 ]
  %47 = and i8 %46, 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %55 = load i32, ptr %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %46, %56
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = and i32 %58, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = lshr i32 %58, 2
  %66 = and i32 %65, 2
  br label %67

67:                                               ; preds = %64, %61, %53, %10
  %68 = phi i8 [ %17, %10 ], [ %57, %53 ], [ %57, %61 ], [ %57, %64 ]
  %69 = phi i32 [ 0, %10 ], [ 1, %53 ], [ 3, %61 ], [ %66, %64 ]
  %70 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %67
  %74 = icmp eq i32 %11, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %73
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = sub i32 %76, %71
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = tail call i32 @sysrq_mask() #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %11) #13
  br i1 %83, label %89, label %84

84:                                               ; preds = %82, %75, %73
  store i32 0, ptr %70, align 4
  br label %87

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 47
  store i32 %11, ptr %86, align 4
  store i32 0, ptr %70, align 4
  br label %89

87:                                               ; preds = %84, %67
  %88 = zext i8 %68 to i32
  tail call void @uart_insert_char(ptr noundef %0, i32 noundef %88, i32 noundef 2, i32 noundef %11, i32 noundef %69) #13
  br label %89

89:                                               ; preds = %87, %85, %82, %24
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.console, ptr %14, i32 0, i32 9
  %18 = load i16, ptr %17, align 2
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %28, 500
  store i32 %29, ptr %24, align 4
  br label %39

30:                                               ; preds = %23
  store i32 0, ptr %24, align 4
  br label %31

31:                                               ; preds = %30, %16, %12, %8
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void @do_SAK(ptr noundef %38) #13
  br label %39

39:                                               ; preds = %36, %31, %27
  %40 = phi i32 [ 1, %27 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @serial8250_rx_chars(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %9, %2
  %5 = phi i8 [ %1, %2 ], [ %12, %9 ]
  %6 = phi i32 [ 256, %2 ], [ %7, %9 ]
  tail call void @serial8250_read_char(ptr noundef %0, i8 noundef zeroext %5)
  %7 = add nsw i32 %6, -1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 5) #13
  %12 = trunc i32 %11 to i8
  %13 = and i32 %11, 17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %4

15:                                               ; preds = %9
  %16 = trunc i32 %11 to i8
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi i8 [ %16, %15 ], [ %5, %4 ]
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %20 = load ptr, ptr %19, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %20) #13
  ret i8 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_tx_chars(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = zext i8 %6 to i32
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, i32 noundef 0, i32 noundef %9) #13
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  store i8 0, ptr %5, align 4
  br label %113

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 19, i32 1
  %21 = load i8, ptr %20, align 4, !range !16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19
  tail call void @serial8250_stop_tx(ptr noundef %0)
  br label %113

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call fastcc void @__stop_tx(ptr noundef %0)
  br label %113

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %40 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %42 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  br label %43

43:                                               ; preds = %92, %35
  %44 = phi i32 [ %32, %35 ], [ %94, %92 ]
  %45 = phi i32 [ %37, %35 ], [ %93, %92 ]
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr %39, align 4
  tail call void %50(ptr noundef %0, i32 noundef 0, i32 noundef %49) #13
  %51 = load i16, ptr %40, align 4
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load ptr, ptr %38, align 4
  %56 = tail call i32 %55(ptr noundef %0, i32 noundef 7) #13
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32, ptr %31, align 4
  %59 = add i32 %58, 1
  %60 = and i32 %59, 4095
  store i32 %60, ptr %31, align 4
  %61 = load i32, ptr %41, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %41, align 4
  %63 = load i32, ptr %29, align 4
  %64 = load i32, ptr %31, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %95, label %66

66:                                               ; preds = %57
  %67 = load i32, ptr %42, align 4
  %68 = and i32 %67, 16384
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %38, align 4
  %72 = tail call i32 %71(ptr noundef %0, i32 noundef 5) #13
  %73 = and i32 %72, 96
  %74 = icmp eq i32 %73, 96
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load i32, ptr %42, align 4
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi i32 [ %76, %75 ], [ %67, %66 ]
  %79 = and i32 %78, 131072
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %38, align 4
  %83 = tail call i32 %82(ptr noundef %0, i32 noundef 5) #13
  %84 = and i32 %83, 32
  %85 = icmp ne i32 %84, 0
  %86 = add i32 %45, -1
  %87 = icmp sgt i32 %86, 0
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %92, label %95

89:                                               ; preds = %77
  %90 = add i32 %45, -1
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89, %81
  %93 = phi i32 [ %90, %89 ], [ %86, %81 ]
  %94 = load i32, ptr %31, align 4
  br label %43

95:                                               ; preds = %89, %81, %70, %57
  %96 = load i32, ptr %29, align 4
  %97 = load i32, ptr %31, align 4
  %98 = sub i32 %96, %97
  %99 = and i32 %98, 3840
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  tail call void @uart_write_wakeup(ptr noundef %0) #13
  %102 = load i32, ptr %29, align 4
  %103 = load i32, ptr %31, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi i32 [ %103, %101 ], [ %97, %95 ]
  %106 = phi i32 [ %102, %101 ], [ %96, %95 ]
  %107 = icmp eq i32 %106, %105
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, ptr %42, align 4
  %110 = and i32 %109, 32768
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  tail call fastcc void @__stop_tx(ptr noundef %0)
  br label %113

113:                                              ; preds = %112, %108, %104, %34, %27, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_stop_tx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  br label %10

10:                                               ; preds = %6, %1
  tail call fastcc void @__stop_tx(ptr noundef %0)
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 7
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 2
  store i8 %17, ptr %15, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %21 = load ptr, ptr %19, align 4
  tail call void %21(ptr noundef %0, i32 noundef 5, i32 noundef %18) #13
  br label %22

22:                                               ; preds = %14, %10
  %23 = load i32, ptr %2, align 4
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i64 @ktime_get_mono_fast_ns() #13
  %30 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 11, i32 22
  store volatile i64 %29, ptr %30, align 8
  %31 = load ptr, ptr %27, align 4
  %32 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #13
  br label %33

33:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__stop_tx(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 5) #13
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 96
  br i1 %10, label %11, label %56

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.uart_8250_em485, ptr %12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.uart_8250_em485, ptr %12, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = load i32, ptr %13, align 4
  %20 = zext i32 %19 to i64
  %21 = mul nuw nsw i64 %20, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %17, i64 noundef %21, i64 noundef 0, i32 noundef 1) #13
  br label %29

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 25
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %0) #13
  %25 = getelementptr inbounds %struct.uart_8250_em485, ptr %12, i32 0, i32 2
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds %struct.uart_8250_em485, ptr %12, i32 0, i32 4
  %27 = load i8, ptr %26, align 8
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %22, %16, %1
  %30 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = and i8 %31, -3
  store i8 %35, ptr %30, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0, i32 noundef 1, i32 noundef %36) #13
  %39 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #13, !srcloc !9
  %45 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %44) #13, !srcloc !10
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %47 = trunc i32 %46 to i8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i64 @ktime_get_mono_fast_ns() #13
  %53 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 11, i32 22
  store volatile i64 %52, ptr %53, align 8
  %54 = load ptr, ptr %50, align 4
  %55 = tail call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #13
  br label %56

56:                                               ; preds = %49, %43, %34, %29, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_modem_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 6) #13
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = or i32 %4, %7
  store i8 0, ptr %5, align 1
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = and i32 %8, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = and i32 %8, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = and i32 %8, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = and i32 %8, 128
  tail call void @uart_handle_dcd_change(ptr noundef %0, i32 noundef %38) #13
  br label %39

39:                                               ; preds = %37, %34
  %40 = and i32 %8, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = and i32 %8, 16
  tail call void @uart_handle_cts_change(ptr noundef %0, i32 noundef %43) #13
  br label %44

44:                                               ; preds = %42, %39
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr inbounds %struct.tty_port, ptr %45, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %46, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %47

47:                                               ; preds = %44, %16, %11, %1
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_handle_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %90

5:                                                ; preds = %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i32 noundef 5) #13
  %10 = trunc i32 %9 to i8
  %11 = and i32 %9, 158
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %13, %5
  %24 = phi i1 [ false, %5 ], [ false, %13 ], [ %22, %18 ]
  %25 = and i32 %9, 17
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i1 true, i1 %24
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = and i32 %1, 63
  switch i32 %33, label %35 [
    i32 12, label %34
    i32 6, label %40
  ]

34:                                               ; preds = %32
  tail call void @serial8250_rx_dma_flush(ptr noundef %0) #13
  br label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.uart_8250_dma, ptr %30, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35, %34, %32, %28
  br label %41

41:                                               ; preds = %46, %40
  %42 = phi i8 [ %49, %46 ], [ %10, %40 ]
  %43 = phi i32 [ %44, %46 ], [ 256, %40 ]
  tail call void @serial8250_read_char(ptr noundef %0, i8 noundef zeroext %42) #13
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %7, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef 5) #13
  %49 = trunc i32 %48 to i8
  %50 = and i32 %48, 17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %41

52:                                               ; preds = %46
  %53 = trunc i32 %48 to i8
  br label %54

54:                                               ; preds = %52, %41
  %55 = phi i8 [ %53, %52 ], [ %42, %41 ]
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %57 = load ptr, ptr %56, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %57) #13
  br label %58

58:                                               ; preds = %54, %35, %23
  %59 = phi i8 [ %55, %54 ], [ %10, %35 ], [ %10, %23 ]
  %60 = tail call i32 @serial8250_modem_status(ptr noundef %0)
  %61 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.uart_8250_dma, ptr %62, i32 0, i32 19
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  %68 = and i8 %59, 32
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %80, label %74

71:                                               ; preds = %58
  %72 = and i8 %59, 32
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71, %64
  %75 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %76 = load i8, ptr %75, align 2
  %77 = and i8 %76, 2
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  tail call void @serial8250_tx_chars(ptr noundef %0)
  br label %80

80:                                               ; preds = %79, %74, %71, %64
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %82 = load i8, ptr %81, align 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #13
  br label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 47
  %87 = load i32, ptr %86, align 4
  store i32 0, ptr %86, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @handle_sysrq(i32 noundef %87) #13
  br label %90

90:                                               ; preds = %89, %85, %84, %2
  %91 = phi i32 [ 0, %2 ], [ 1, %84 ], [ 1, %85 ], [ 1, %89 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_do_get_mctrl(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #13
  br label %11

11:                                               ; preds = %7, %1
  %12 = tail call i32 @serial8250_modem_status(ptr noundef %0)
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 @ktime_get_mono_fast_ns() #13
  %20 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 22
  store volatile i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %17, align 4
  %22 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #13
  br label %23

23:                                               ; preds = %16, %11
  %24 = lshr i32 %12, 1
  %25 = and i32 %24, 64
  %26 = shl i32 %12, 1
  %27 = and i32 %26, 128
  %28 = or i32 %27, %25
  %29 = shl i32 %12, 3
  %30 = and i32 %29, 256
  %31 = or i32 %28, %30
  %32 = and i32 %26, 32
  %33 = or i32 %31, %32
  store i32 %33, ptr %2, align 4
  %34 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %23
  %38 = call i32 @mctrl_gpio_get(ptr noundef nonnull %35, ptr noundef nonnull %2) #13
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i32 [ %38, %37 ], [ %33, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_do_set_mctrl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 1
  %4 = and i32 %3, 3
  %5 = lshr i32 %1, 11
  %6 = and i32 %5, 4
  %7 = or i32 %4, %6
  %8 = and i32 %5, 8
  %9 = or i32 %7, %8
  %10 = and i32 %5, 16
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 4
  %14 = trunc i32 %11 to i8
  %15 = or i8 %13, %14
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, i32 noundef 4, i32 noundef %16) #13
  %19 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = shl nuw nsw i32 %16, 1
  %24 = and i32 %23, 6
  %25 = shl nuw nsw i32 %16, 11
  %26 = and i32 %25, 8192
  %27 = or i32 %24, %26
  %28 = and i32 %25, 16384
  %29 = or i32 %27, %28
  %30 = and i32 %25, 32768
  %31 = or i32 %29, %30
  tail call void @mctrl_gpio_set(ptr noundef nonnull %20, i32 noundef %31) #13
  br label %32

32:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_do_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %7, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %17, i32 2
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  store i32 %20, ptr %12, align 4
  br label %21

21:                                               ; preds = %15, %11
  %22 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %27, i32 5
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %22, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %29, %25 ], [ %23, %21 ]
  %32 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  store i8 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %34 = load i8, ptr %33, align 2
  %35 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 12
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %34, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  store ptr @default_serial_dl_read, ptr %39, align 4
  %40 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  store ptr @default_serial_dl_write, ptr %40, align 4
  %41 = add i8 %34, -1
  %42 = icmp ult i8 %41, 7
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = sext i8 %41 to i32
  %45 = getelementptr inbounds [7 x ptr], ptr @switch.table.serial8250_config_port, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = sext i8 %41 to i32
  %48 = getelementptr inbounds [7 x ptr], ptr @switch.table.serial8250_config_port.46, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = phi ptr [ %46, %43 ], [ @io_serial_in, %38 ]
  %52 = phi ptr [ %49, %43 ], [ @io_serial_out, %38 ]
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  store ptr %51, ptr %53, align 4
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  store ptr %52, ptr %54, align 4
  store i8 %34, ptr %35, align 1
  %55 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 15
  store ptr @serial8250_default_handle_irq, ptr %55, align 4
  br label %56

56:                                               ; preds = %50, %30
  %57 = and i32 %31, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @__pm_runtime_resume(ptr noundef %61, i32 noundef 4) #13
  br label %63

63:                                               ; preds = %59, %56
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 7
  store i8 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %71 = load ptr, ptr %69, align 4
  tail call void %71(ptr noundef %0, i32 noundef 2, i32 noundef 16) #13
  %72 = load ptr, ptr %69, align 4
  tail call void %72(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  %73 = load ptr, ptr %69, align 4
  tail call void %73(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %74 = load ptr, ptr %69, align 4
  tail call void %74(ptr noundef %0, i32 noundef 7, i32 noundef 12) #13
  %75 = load ptr, ptr %69, align 4
  tail call void %75(ptr noundef %0, i32 noundef 5, i32 noundef 0) #13
  %76 = load ptr, ptr %69, align 4
  tail call void %76(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %77 = load ptr, ptr %69, align 4
  tail call void %77(ptr noundef %0, i32 noundef 2, i32 noundef 16) #13
  %78 = load ptr, ptr %69, align 4
  tail call void %78(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %79 = load i32, ptr %64, align 4
  br label %80

80:                                               ; preds = %67, %63
  %81 = phi i32 [ %79, %67 ], [ %65, %63 ]
  %82 = icmp eq i32 %81, 95
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  %86 = load ptr, ptr %84, align 4
  tail call void %86(ptr noundef %0, i32 noundef 12, i32 noundef 0) #13
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #13
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #13
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #13
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #13
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #13
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #13
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #13
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #13
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #13
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #13
  %97 = load ptr, ptr %84, align 4
  tail call void %97(ptr noundef %0, i32 noundef 12, i32 noundef 24577) #13
  %98 = load i32, ptr %64, align 4
  br label %99

99:                                               ; preds = %83, %80
  %100 = phi i32 [ %98, %83 ], [ %81, %80 ]
  %101 = icmp eq i32 %100, 40
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  tail call void %104(ptr noundef %0, i32 noundef 7, i32 noundef 160) #13
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, ptr %22, align 4
  %107 = and i32 %106, 256
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  tail call void %111(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %112 = load ptr, ptr %110, align 4
  tail call void %112(ptr noundef %0, i32 noundef 2, i32 noundef 7) #13
  %113 = load ptr, ptr %110, align 4
  tail call void %113(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  br label %114

114:                                              ; preds = %109, %105
  %115 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i32 %116(ptr noundef %0, i32 noundef 5) #13
  %118 = load ptr, ptr %115, align 4
  %119 = tail call i32 %118(ptr noundef %0, i32 noundef 0) #13
  %120 = load ptr, ptr %115, align 4
  %121 = tail call i32 %120(ptr noundef %0, i32 noundef 2) #13
  %122 = load ptr, ptr %115, align 4
  %123 = tail call i32 %122(ptr noundef %0, i32 noundef 6) #13
  %124 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 16384
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %114
  %129 = load ptr, ptr %115, align 4
  %130 = tail call i32 %129(ptr noundef %0, i32 noundef 5) #13
  %131 = icmp eq i32 %130, 255
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = tail call i32 @___ratelimit(ptr noundef nonnull @serial8250_do_startup._rs, ptr noundef nonnull @__func__.serial8250_do_startup) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %424, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %137 = load ptr, ptr %136, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull @.str) #15
  br label %424

138:                                              ; preds = %128, %114
  %139 = load i32, ptr %64, align 4
  %140 = icmp eq i32 %139, 12
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %143 = load ptr, ptr %142, align 4
  tail call void %143(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %144 = load ptr, ptr %115, align 4
  %145 = tail call i32 %144(ptr noundef %0, i32 noundef 1) #13
  %146 = and i32 %145, 79
  %147 = or i32 %146, 48
  %148 = load ptr, ptr %142, align 4
  tail call void %148(ptr noundef %0, i32 noundef 1, i32 noundef %147) #13
  %149 = load ptr, ptr %142, align 4
  tail call void %149(ptr noundef %0, i32 noundef 0, i32 noundef 96) #13
  %150 = or i32 %146, 176
  %151 = load ptr, ptr %142, align 4
  tail call void %151(ptr noundef %0, i32 noundef 1, i32 noundef %150) #13
  %152 = load ptr, ptr %142, align 4
  tail call void %152(ptr noundef %0, i32 noundef 0, i32 noundef 96) #13
  %153 = load ptr, ptr %142, align 4
  tail call void %153(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %154 = load i32, ptr %64, align 4
  br label %155

155:                                              ; preds = %141, %138
  %156 = phi i32 [ %154, %141 ], [ %139, %138 ]
  %157 = add i32 %156, -26
  %158 = icmp ult i32 %157, 3
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load i32, ptr %2, align 4
  %161 = icmp ugt i32 %160, 1
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load i32, ptr %12, align 4
  %164 = icmp ult i32 %163, 2
  %165 = icmp ugt i32 %163, %160
  %166 = select i1 %164, i1 true, i1 %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %169 = load ptr, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.1) #15
  br label %178

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  tail call void %172(ptr noundef %0, i32 noundef 64, i32 noundef 1) #13
  %173 = load i32, ptr %2, align 4
  %174 = load i32, ptr %12, align 4
  %175 = sub i32 %173, %174
  %176 = load ptr, ptr %171, align 4
  tail call void %176(ptr noundef %0, i32 noundef 65, i32 noundef %175) #13
  %177 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 15
  store ptr @serial8250_tx_threshold_handle_irq, ptr %177, align 4
  br label %178

178:                                              ; preds = %170, %167, %159, %155
  %179 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %291, label %182

182:                                              ; preds = %178
  %183 = load i32, ptr %124, align 4
  %184 = and i32 %183, 16777216
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 21
  %188 = load i32, ptr %187, align 4
  %189 = or i32 %188, 128
  store i32 %189, ptr %187, align 4
  br label %190

190:                                              ; preds = %186, %182
  %191 = and i32 %183, 524288
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %291

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 21
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 128
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  tail call void @disable_irq_nosync(i32 noundef %180) #13
  br label %199

199:                                              ; preds = %198, %193
  %200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %201 = load ptr, ptr %115, align 4
  %202 = tail call i32 %201(ptr noundef %0, i32 noundef 5) #13
  %203 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %204 = load i8, ptr %203, align 4
  %205 = trunc i32 %202 to i8
  %206 = and i8 %205, 30
  %207 = or i8 %206, %204
  store i8 %207, ptr %203, align 4
  %208 = and i32 %202, 32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %214, %199
  %211 = phi i32 [ %212, %214 ], [ 10000, %199 ]
  %212 = add nsw i32 %211, -1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %215(i32 noundef 214748) #13
  %216 = load ptr, ptr %115, align 4
  %217 = tail call i32 %216(ptr noundef %0, i32 noundef 5) #13
  %218 = load i8, ptr %203, align 4
  %219 = trunc i32 %217 to i8
  %220 = and i8 %219, 30
  %221 = or i8 %220, %218
  store i8 %221, ptr %203, align 4
  %222 = and i32 %217, 32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %210, label %224

224:                                              ; preds = %214, %210, %199
  %225 = load i32, ptr %124, align 4
  %226 = and i32 %225, 8388608
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  br label %230

230:                                              ; preds = %240, %228
  %231 = phi i32 [ 1000000, %228 ], [ %242, %240 ]
  %232 = load ptr, ptr %115, align 4
  %233 = tail call i32 %232(ptr noundef %0, i32 noundef 6) #13
  %234 = load i8, ptr %229, align 1
  %235 = trunc i32 %233 to i8
  %236 = and i8 %235, 15
  %237 = or i8 %236, %234
  store i8 %237, ptr %229, align 1
  %238 = and i32 %233, 16
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %230
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %241(i32 noundef 214748) #13
  %242 = add nsw i32 %231, -1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %230

244:                                              ; preds = %240, %230, %224
  %245 = load i8, ptr %33, align 2
  switch i8 %245, label %251 [
    i8 2, label %246
    i8 7, label %246
    i8 3, label %246
    i8 6, label %246
    i8 4, label %246
  ]

246:                                              ; preds = %244, %244, %244, %244, %244
  %247 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %248 = load ptr, ptr %247, align 4
  tail call void %248(ptr noundef %0, i32 noundef 1, i32 noundef 2) #13
  %249 = load ptr, ptr %115, align 4
  %250 = tail call i32 %249(ptr noundef %0, i32 noundef 3) #13
  br label %254

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %253 = load ptr, ptr %252, align 4
  tail call void %253(ptr noundef %0, i32 noundef 1, i32 noundef 2) #13
  br label %254

254:                                              ; preds = %251, %246
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748) #13
  %256 = load ptr, ptr %115, align 4
  %257 = tail call i32 %256(ptr noundef %0, i32 noundef 2) #13
  %258 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %259 = load ptr, ptr %258, align 4
  tail call void %259(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  %260 = load i8, ptr %33, align 2
  switch i8 %260, label %265 [
    i8 2, label %261
    i8 7, label %261
    i8 3, label %261
    i8 6, label %261
    i8 4, label %261
  ]

261:                                              ; preds = %254, %254, %254, %254, %254
  %262 = load ptr, ptr %258, align 4
  tail call void %262(ptr noundef %0, i32 noundef 1, i32 noundef 2) #13
  %263 = load ptr, ptr %115, align 4
  %264 = tail call i32 %263(ptr noundef %0, i32 noundef 3) #13
  br label %267

265:                                              ; preds = %254
  %266 = load ptr, ptr %258, align 4
  tail call void %266(ptr noundef %0, i32 noundef 1, i32 noundef 2) #13
  br label %267

267:                                              ; preds = %265, %261
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %268(i32 noundef 214748) #13
  %269 = load ptr, ptr %115, align 4
  %270 = tail call i32 %269(ptr noundef %0, i32 noundef 2) #13
  %271 = load ptr, ptr %258, align 4
  tail call void %271(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %200) #13
  %272 = load i32, ptr %194, align 4
  %273 = and i32 %272, 128
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %267
  %276 = load i32, ptr %179, align 4
  tail call void @enable_irq(i32 noundef %276) #13
  br label %277

277:                                              ; preds = %275, %267
  %278 = and i32 %257, 1
  %279 = icmp ne i32 %278, 0
  %280 = and i32 %270, 1
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %279, i1 true, i1 %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load i32, ptr %124, align 4
  %285 = and i32 %284, 67108864
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %283, %277
  %288 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %289 = load i16, ptr %288, align 4
  %290 = or i16 %289, 8
  store i16 %290, ptr %288, align 4
  br label %291

291:                                              ; preds = %287, %283, %190, %178
  %292 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 20
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %293, align 4
  %295 = tail call i32 %294(ptr noundef %0) #13
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %424

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  tail call void %299(ptr noundef %0, i32 noundef 3, i32 noundef 3) #13
  %300 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %301 = load i32, ptr %124, align 4
  %302 = and i32 %301, 2
  %303 = icmp eq i32 %302, 0
  %304 = load i32, ptr %179, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %303, label %307, label %306

306:                                              ; preds = %297
  br i1 %305, label %308, label %313

307:                                              ; preds = %297
  br i1 %305, label %313, label %308

308:                                              ; preds = %307, %306
  %309 = phi i32 [ 8192, %306 ], [ 16384, %307 ]
  %310 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %311 = load i32, ptr %310, align 4
  %312 = or i32 %311, %309
  store i32 %312, ptr %310, align 4
  br label %313

313:                                              ; preds = %308, %307, %306
  %314 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 8
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %313
  tail call void %317(ptr noundef %0, i32 noundef %315) #13
  br label %348

320:                                              ; preds = %313
  %321 = lshr i32 %315, 1
  %322 = and i32 %321, 3
  %323 = lshr i32 %315, 11
  %324 = and i32 %323, 4
  %325 = or i32 %322, %324
  %326 = and i32 %323, 8
  %327 = or i32 %325, %326
  %328 = and i32 %323, 16
  %329 = or i32 %327, %328
  %330 = load i8, ptr %32, align 4
  %331 = trunc i32 %329 to i8
  %332 = or i8 %330, %331
  %333 = zext i8 %332 to i32
  %334 = load ptr, ptr %298, align 4
  tail call void %334(ptr noundef %0, i32 noundef 4, i32 noundef %333) #13
  %335 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %348, label %338

338:                                              ; preds = %320
  %339 = shl nuw nsw i32 %333, 1
  %340 = and i32 %339, 6
  %341 = shl nuw nsw i32 %333, 11
  %342 = and i32 %341, 8192
  %343 = or i32 %340, %342
  %344 = and i32 %341, 16384
  %345 = or i32 %343, %344
  %346 = and i32 %341, 32768
  %347 = or i32 %345, %346
  tail call void @mctrl_gpio_set(ptr noundef nonnull %336, i32 noundef %347) #13
  br label %348

348:                                              ; preds = %338, %320, %319
  %349 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 27
  %350 = load i8, ptr %349, align 1
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %376

353:                                              ; preds = %348
  %354 = load ptr, ptr %298, align 4
  tail call void %354(ptr noundef %0, i32 noundef 1, i32 noundef 2) #13
  %355 = load ptr, ptr %115, align 4
  %356 = tail call i32 %355(ptr noundef %0, i32 noundef 5) #13
  %357 = load ptr, ptr %115, align 4
  %358 = tail call i32 %357(ptr noundef %0, i32 noundef 2) #13
  %359 = load ptr, ptr %298, align 4
  tail call void %359(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  %360 = and i32 %356, 64
  %361 = icmp eq i32 %360, 0
  %362 = and i32 %358, 1
  %363 = icmp eq i32 %362, 0
  %364 = select i1 %361, i1 true, i1 %363
  %365 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %366 = load i16, ptr %365, align 4
  br i1 %364, label %372, label %367

367:                                              ; preds = %353
  %368 = and i16 %366, 2
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = or i16 %366, 2
  br label %374

372:                                              ; preds = %353
  %373 = and i16 %366, -3
  br label %374

374:                                              ; preds = %372, %370
  %375 = phi i16 [ %373, %372 ], [ %371, %370 ]
  store i16 %375, ptr %365, align 4
  br label %376

376:                                              ; preds = %374, %367, %348
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %300) #13
  %377 = load ptr, ptr %115, align 4
  %378 = tail call i32 %377(ptr noundef %0, i32 noundef 5) #13
  %379 = load ptr, ptr %115, align 4
  %380 = tail call i32 %379(ptr noundef %0, i32 noundef 0) #13
  %381 = load ptr, ptr %115, align 4
  %382 = tail call i32 %381(ptr noundef %0, i32 noundef 2) #13
  %383 = load ptr, ptr %115, align 4
  %384 = tail call i32 %383(ptr noundef %0, i32 noundef 6) #13
  %385 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  store i8 0, ptr %385, align 4
  %386 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  store i8 0, ptr %386, align 1
  %387 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %412, label %390

390:                                              ; preds = %376
  %391 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %401, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.console, ptr %392, i32 0, i32 9
  %396 = load i16, ptr %395, align 2
  %397 = sext i16 %396 to i32
  %398 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, %397
  br i1 %400, label %404, label %401

401:                                              ; preds = %394, %390
  %402 = tail call i32 @serial8250_request_dma(ptr noundef %0) #13
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %412, label %404

404:                                              ; preds = %401, %394
  %405 = phi ptr [ @.str.3, %401 ], [ @.str.2, %394 ]
  %406 = tail call i32 @___ratelimit(ptr noundef nonnull @serial8250_do_startup._rs.4, ptr noundef nonnull @__func__.serial8250_do_startup) #13
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %410 = load ptr, ptr %409, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %410, ptr noundef nonnull @.str.5, ptr noundef nonnull %405) #15
  br label %411

411:                                              ; preds = %408, %404
  store ptr null, ptr %387, align 4
  br label %412

412:                                              ; preds = %411, %401, %376
  %413 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  store i8 5, ptr %413, align 2
  %414 = load i32, ptr %124, align 4
  %415 = and i32 %414, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %419 = load i32, ptr %418, align 4
  %420 = and i32 %419, 4064
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %421 = or i32 %420, -18874337
  %422 = inttoptr i32 %421 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %422, i8 -128) #13, !srcloc !18
  %423 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %422) #13, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  br label %424

424:                                              ; preds = %417, %412, %291, %135, %132
  %425 = phi i32 [ %295, %291 ], [ -19, %135 ], [ -19, %132 ], [ 0, %417 ], [ 0, %412 ]
  %426 = load i32, ptr %22, align 4
  %427 = and i32 %426, 32768
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %436, label %429

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %431 = load ptr, ptr %430, align 4
  %432 = tail call i64 @ktime_get_mono_fast_ns() #13
  %433 = getelementptr inbounds %struct.device, ptr %431, i32 0, i32 11, i32 22
  store volatile i64 %432, ptr %433, align 8
  %434 = load ptr, ptr %430, align 4
  %435 = tail call i32 @__pm_runtime_suspend(ptr noundef %434, i32 noundef 13) #13
  br label %436

436:                                              ; preds = %429, %424
  ret i32 %425
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_tx_threshold_handle_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 2) #13
  %5 = and i32 %4, 14
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  tail call void @serial8250_tx_chars(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %8) #13
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 2) #13
  %12 = tail call i32 @serial8250_handle_irq(ptr noundef %0, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_set_mctrl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, i32 noundef %1) #13
  br label %37

7:                                                ; preds = %2
  %8 = lshr i32 %1, 1
  %9 = and i32 %8, 3
  %10 = lshr i32 %1, 11
  %11 = and i32 %10, 4
  %12 = or i32 %9, %11
  %13 = and i32 %10, 8
  %14 = or i32 %12, %13
  %15 = and i32 %10, 16
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %18 = load i8, ptr %17, align 4
  %19 = trunc i32 %16 to i8
  %20 = or i8 %18, %19
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %0, i32 noundef 4, i32 noundef %21) #13
  %24 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %7
  %28 = shl nuw nsw i32 %21, 1
  %29 = and i32 %28, 6
  %30 = shl nuw nsw i32 %21, 11
  %31 = and i32 %30, 8192
  %32 = or i32 %29, %31
  %33 = and i32 %30, 16384
  %34 = or i32 %32, %33
  %35 = and i32 %30, 32768
  %36 = or i32 %34, %35
  tail call void @mctrl_gpio_set(ptr noundef nonnull %25, i32 noundef %36) #13
  br label %37

37:                                               ; preds = %27, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_request_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_do_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  br label %10

10:                                               ; preds = %6, %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  store i8 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %11) #13
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  tail call void @synchronize_irq(i32 noundef %16) #13
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  tail call void @serial8250_release_dma(ptr noundef %0) #13
  br label %21

21:                                               ; preds = %20, %10
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 4064
  %31 = or i32 %30, -18874337
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #13, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !21
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 8192
  store i32 %36, ptr %34, align 4
  br label %41

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -16385
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi i32 [ %40, %37 ], [ %36, %27 ]
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void %44(ptr noundef %0, i32 noundef %42) #13
  br label %76

47:                                               ; preds = %41
  %48 = lshr i32 %42, 1
  %49 = and i32 %48, 3
  %50 = lshr i32 %42, 11
  %51 = and i32 %50, 4
  %52 = or i32 %49, %51
  %53 = and i32 %50, 8
  %54 = or i32 %52, %53
  %55 = and i32 %50, 16
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %58 = load i8, ptr %57, align 4
  %59 = trunc i32 %56 to i8
  %60 = or i8 %58, %59
  %61 = zext i8 %60 to i32
  %62 = load ptr, ptr %13, align 4
  tail call void %62(ptr noundef %0, i32 noundef 4, i32 noundef %61) #13
  %63 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %47
  %67 = shl nuw nsw i32 %61, 1
  %68 = and i32 %67, 6
  %69 = shl nuw nsw i32 %61, 11
  %70 = and i32 %69, 8192
  %71 = or i32 %68, %70
  %72 = and i32 %69, 16384
  %73 = or i32 %71, %72
  %74 = and i32 %69, 32768
  %75 = or i32 %73, %74
  tail call void @mctrl_gpio_set(ptr noundef nonnull %64, i32 noundef %75) #13
  br label %76

76:                                               ; preds = %66, %47, %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %22) #13
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %0, i32 noundef 3) #13
  %80 = and i32 %79, -65
  %81 = load ptr, ptr %13, align 4
  tail call void %81(ptr noundef %0, i32 noundef 3, i32 noundef %80) #13
  %82 = load i32, ptr %2, align 4
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr %13, align 4
  tail call void %86(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %87 = load ptr, ptr %13, align 4
  tail call void %87(ptr noundef %0, i32 noundef 2, i32 noundef 7) #13
  %88 = load ptr, ptr %13, align 4
  tail call void %88(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  br label %89

89:                                               ; preds = %85, %76
  %90 = load ptr, ptr %77, align 4
  %91 = tail call i32 %90(ptr noundef %0, i32 noundef 0) #13
  %92 = load i32, ptr %2, align 4
  %93 = and i32 %92, 32768
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i64 @ktime_get_mono_fast_ns() #13
  %99 = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 11, i32 22
  store volatile i64 %98, ptr %99, align 8
  %100 = load ptr, ptr %96, align 4
  %101 = tail call i32 @__pm_runtime_suspend(ptr noundef %100, i32 noundef 13) #13
  br label %102

102:                                              ; preds = %95, %89
  %103 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 20
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.uart_8250_ops, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_release_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_do_set_divisor(ptr noundef %0, i32 %1, i32 noundef %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %11 = load i8, ptr %10, align 1
  %12 = or i8 %11, -128
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ %13, %9 ], [ 224, %4 ]
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %0, i32 noundef 3, i32 noundef %15) #13
  %18 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0, i32 noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_update_uartclk(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %6 = tail call ptr @tty_port_tty_get(ptr noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %1, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %9) #13
  br label %129

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 11
  tail call void @down_write(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %128, label %17

17:                                               ; preds = %11
  store i32 %1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 11
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %128, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 13
  %24 = udiv i32 %1, 100
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  %29 = udiv i32 %1, 1048560
  %30 = select i1 %28, i32 4, i32 2
  %31 = xor i1 %28, true
  %32 = zext i1 %31 to i32
  %33 = lshr i32 %29, %32
  %34 = add i32 %24, %1
  %35 = lshr i32 %34, %30
  %36 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %23, ptr noundef null, i32 noundef %33, i32 noundef %35) #13
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %22
  %41 = call i32 %38(ptr noundef %0, i32 noundef %36, ptr noundef nonnull %3) #13
  br label %78

42:                                               ; preds = %22
  %43 = load i32, ptr %25, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %14, align 4
  %48 = udiv i32 %47, 6
  %49 = icmp ugt i32 %48, %36
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = udiv i32 %47, 12
  %52 = icmp ugt i32 %51, %36
  br i1 %52, label %53, label %67

53:                                               ; preds = %50, %42
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 40
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, ptr %14, align 4
  %59 = shl i32 %36, 4
  %60 = or i32 %59, 2
  %61 = lshr exact i32 %60, 1
  %62 = add i32 %58, %61
  %63 = udiv i32 %62, %60
  %64 = add nsw i32 %63, -2
  br label %67

65:                                               ; preds = %53
  %66 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %36) #13
  br label %67

67:                                               ; preds = %65, %57, %50, %46
  %68 = phi i32 [ %64, %57 ], [ %66, %65 ], [ 32769, %46 ], [ 32770, %50 ]
  %69 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %70 = load i16, ptr %69, align 4
  %71 = and i16 %70, 1
  %72 = icmp ne i16 %71, 0
  %73 = and i32 %68, 255
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  %76 = zext i1 %75 to i32
  %77 = add i32 %68, %76
  br label %78

78:                                               ; preds = %67, %40
  %79 = phi i32 [ %41, %40 ], [ %77, %67 ]
  %80 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 32768
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 @__pm_runtime_resume(ptr noundef %86, i32 noundef 4) #13
  br label %88

88:                                               ; preds = %84, %78
  %89 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %90 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 13, i32 2
  %91 = load i32, ptr %90, align 4
  call void @uart_update_timeout(ptr noundef %0, i32 noundef %91, i32 noundef %36) #13
  %92 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 10
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = load i32, ptr %3, align 4
  call void %93(ptr noundef %0, i32 noundef %36, i32 noundef %79, i32 noundef %96) #13
  br label %112

97:                                               ; preds = %88
  %98 = load i32, ptr %80, align 4
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %103 = load i8, ptr %102, align 1
  %104 = or i8 %103, -128
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %101, %97
  %107 = phi i32 [ %105, %101 ], [ 224, %97 ]
  %108 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  call void %109(ptr noundef %0, i32 noundef 3, i32 noundef %107) #13
  %110 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %111 = load ptr, ptr %110, align 4
  call void %111(ptr noundef %0, i32 noundef %79) #13
  br label %112

112:                                              ; preds = %106, %95
  %113 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  call void %117(ptr noundef %0, i32 noundef 3, i32 noundef %115) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %89) #13
  %118 = load i32, ptr %80, align 4
  %119 = and i32 %118, 32768
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %123 = load ptr, ptr %122, align 4
  %124 = call i64 @ktime_get_mono_fast_ns() #13
  %125 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 11, i32 22
  store volatile i64 %124, ptr %125, align 8
  %126 = load ptr, ptr %122, align 4
  %127 = call i32 @__pm_runtime_suspend(ptr noundef %126, i32 noundef 13) #13
  br label %128

128:                                              ; preds = %121, %112, %17, %11
  call void @mutex_unlock(ptr noundef %13) #13
  call void @up_write(ptr noundef %12) #13
  call void @tty_kref_put(ptr noundef nonnull %6) #13
  br label %129

129:                                              ; preds = %128, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br i1 %8, label %17, label %11

11:                                               ; preds = %3
  %12 = and i32 %10, -1073742657
  store i32 %12, ptr %9, align 4
  %13 = and i32 %10, 48
  switch i32 %13, label %17 [
    i32 0, label %14
    i32 16, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = and i32 %10, -1073742705
  %16 = or i32 %15, 32
  store i32 %16, ptr %9, align 4
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i32 [ %12, %11 ], [ %16, %14 ], [ %10, %3 ]
  %19 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %20 = trunc i32 %18 to i8
  %21 = lshr i8 %20, 4
  %22 = and i8 %21, 3
  %23 = trunc i32 %18 to i8
  %24 = lshr i8 %23, 4
  %25 = and i8 %24, 4
  %26 = or i8 %22, %25
  %27 = and i32 %18, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %17
  %30 = or i8 %26, 8
  %31 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 16
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 5
  store i8 1, ptr %36, align 2
  br label %37

37:                                               ; preds = %35, %29, %17
  %38 = phi i8 [ %30, %35 ], [ %30, %29 ], [ %26, %17 ]
  %39 = and i32 %18, 512
  %40 = icmp eq i32 %39, 0
  %41 = or i8 %38, 16
  %42 = select i1 %40, i8 %41, i8 %38
  %43 = lshr i32 %18, 25
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 32
  %46 = or i8 %42, %45
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %48 = load i32, ptr %47, align 4
  %49 = udiv i32 %48, 100
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  %54 = udiv i32 %48, 1048560
  %55 = select i1 %53, i32 4, i32 2
  %56 = xor i1 %53, true
  %57 = zext i1 %56 to i32
  %58 = lshr i32 %54, %57
  %59 = add i32 %49, %48
  %60 = lshr i32 %59, %55
  %61 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %58, i32 noundef %60) #13
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %37
  %66 = call i32 %63(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %4) #13
  br label %103

67:                                               ; preds = %37
  %68 = load i32, ptr %50, align 4
  %69 = and i32 %68, 65536
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %47, align 4
  %73 = udiv i32 %72, 6
  %74 = icmp ugt i32 %73, %61
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = udiv i32 %72, 12
  %77 = icmp ugt i32 %76, %61
  br i1 %77, label %78, label %92

78:                                               ; preds = %75, %67
  %79 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 40
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32, ptr %47, align 4
  %84 = shl i32 %61, 4
  %85 = or i32 %84, 2
  %86 = lshr exact i32 %85, 1
  %87 = add i32 %83, %86
  %88 = udiv i32 %87, %85
  %89 = add nsw i32 %88, -2
  br label %92

90:                                               ; preds = %78
  %91 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %61) #13
  br label %92

92:                                               ; preds = %90, %82, %75, %71
  %93 = phi i32 [ %89, %82 ], [ %91, %90 ], [ 32769, %71 ], [ 32770, %75 ]
  %94 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %95 = load i16, ptr %94, align 4
  %96 = and i16 %95, 1
  %97 = icmp ne i16 %96, 0
  %98 = and i32 %93, 255
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  %101 = zext i1 %100 to i32
  %102 = add i32 %93, %101
  br label %103

103:                                              ; preds = %92, %65
  %104 = phi i32 [ %66, %65 ], [ %102, %92 ]
  %105 = load i32, ptr %5, align 4
  %106 = and i32 %105, 32768
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @__pm_runtime_resume(ptr noundef %110, i32 noundef 4) #13
  br label %112

112:                                              ; preds = %108, %103
  %113 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %114 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  store i8 %46, ptr %114, align 1
  %115 = load i32, ptr %5, align 4
  %116 = and i32 %115, 256
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %120, 1
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = icmp ult i32 %61, 2400
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124, %122
  %129 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 5
  %130 = load i8, ptr %129, align 2, !range !16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 63
  store i8 %135, ptr %133, align 1
  br label %136

136:                                              ; preds = %132, %128, %118, %112
  %137 = and i32 %115, 2048
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %141 = load i8, ptr %140, align 4
  %142 = and i8 %141, -33
  store i8 %142, ptr %140, align 4
  %143 = load i32, ptr %19, align 4
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %147, label %145

145:                                              ; preds = %139
  %146 = or i8 %141, 32
  store i8 %146, ptr %140, align 4
  br label %147

147:                                              ; preds = %145, %139, %136
  %148 = load i32, ptr %19, align 4
  call void @uart_update_timeout(ptr noundef %0, i32 noundef %148, i32 noundef %61) #13
  %149 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 35, ptr %149, align 4
  %150 = load i32, ptr %1, align 4
  %151 = and i32 %150, 16
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 35, i32 47
  store i32 %153, ptr %149, align 4
  %154 = load i32, ptr %1, align 4
  %155 = and i32 %154, 11
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %147
  %158 = or i32 %153, 16
  store i32 %158, ptr %149, align 4
  br label %159

159:                                              ; preds = %157, %147
  %160 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %160, align 4
  %161 = load i32, ptr %1, align 4
  %162 = and i32 %161, 4
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 0, i32 12
  store i32 %164, ptr %160, align 4
  %165 = load i32, ptr %1, align 4
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %159
  %169 = or i32 %164, 16
  store i32 %169, ptr %160, align 4
  %170 = load i32, ptr %1, align 4
  %171 = and i32 %170, 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = or i32 %164, 18
  store i32 %174, ptr %160, align 4
  br label %175

175:                                              ; preds = %173, %168, %159
  %176 = phi i32 [ %169, %168 ], [ %174, %173 ], [ %164, %159 ]
  %177 = load i32, ptr %19, align 4
  %178 = and i32 %177, 128
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = or i32 %176, 1
  store i32 %181, ptr %160, align 4
  br label %182

182:                                              ; preds = %180, %175
  %183 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %184 = load i8, ptr %183, align 2
  %185 = and i8 %184, -9
  store i8 %185, ptr %183, align 2
  %186 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %187 = load i16, ptr %186, align 4
  %188 = and i16 %187, 4
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %182
  %191 = load i32, ptr %50, align 4
  %192 = and i32 %191, 2048
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32, ptr %19, align 4
  %196 = and i32 %195, -2147481600
  %197 = icmp eq i32 %196, 2048
  br i1 %197, label %200, label %198

198:                                              ; preds = %194, %190
  %199 = or i8 %184, 8
  store i8 %199, ptr %183, align 2
  br label %200

200:                                              ; preds = %198, %194, %182
  %201 = phi i8 [ %185, %194 ], [ %199, %198 ], [ %185, %182 ]
  %202 = load i32, ptr %5, align 4
  %203 = lshr i32 %202, 6
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 64
  %206 = or i8 %205, %201
  %207 = lshr i32 %202, 9
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 16
  %210 = or i8 %209, %206
  %211 = and i32 %202, 12288
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %200
  store i8 %210, ptr %183, align 2
  br label %214

214:                                              ; preds = %213, %200
  %215 = zext i8 %210 to i32
  %216 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %217 = load ptr, ptr %216, align 4
  call void %217(ptr noundef %0, i32 noundef 1, i32 noundef %215) #13
  %218 = load i32, ptr %5, align 4
  %219 = and i32 %218, 512
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %214
  %222 = load i32, ptr %19, align 4
  %223 = lshr i32 %222, 24
  %224 = and i32 %223, 128
  %225 = load ptr, ptr %216, align 4
  call void %225(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %226 = load i32, ptr %50, align 4
  %227 = and i32 %226, 33554432
  %228 = icmp eq i32 %227, 0
  %229 = load ptr, ptr %216, align 4
  %230 = select i1 %228, i32 2, i32 9
  call void %229(ptr noundef %0, i32 noundef %230, i32 noundef %224) #13
  br label %231

231:                                              ; preds = %221, %214
  %232 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 10
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = load i32, ptr %4, align 4
  call void %233(ptr noundef %0, i32 noundef %61, i32 noundef %104, i32 noundef %236) #13
  br label %250

237:                                              ; preds = %231
  %238 = load i32, ptr %5, align 4
  %239 = and i32 %238, 8
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i8, ptr %114, align 1
  %243 = or i8 %242, -128
  %244 = zext i8 %243 to i32
  br label %245

245:                                              ; preds = %241, %237
  %246 = phi i32 [ %244, %241 ], [ 224, %237 ]
  %247 = load ptr, ptr %216, align 4
  call void %247(ptr noundef %0, i32 noundef 3, i32 noundef %246) #13
  %248 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %249 = load ptr, ptr %248, align 4
  call void %249(ptr noundef %0, i32 noundef %104) #13
  br label %250

250:                                              ; preds = %245, %235
  %251 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 8
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = load ptr, ptr %216, align 4
  call void %258(ptr noundef %0, i32 noundef 2, i32 noundef %257) #13
  br label %259

259:                                              ; preds = %254, %250
  %260 = load i8, ptr %114, align 1
  %261 = zext i8 %260 to i32
  %262 = load ptr, ptr %216, align 4
  call void %262(ptr noundef %0, i32 noundef 3, i32 noundef %261) #13
  %263 = load i32, ptr %251, align 4
  %264 = icmp eq i32 %263, 8
  br i1 %264, label %277, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %267 = load i8, ptr %266, align 1
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = load ptr, ptr %216, align 4
  call void %271(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %272 = load i8, ptr %266, align 1
  br label %273

273:                                              ; preds = %270, %265
  %274 = phi i8 [ %272, %270 ], [ %267, %265 ]
  %275 = zext i8 %274 to i32
  %276 = load ptr, ptr %216, align 4
  call void %276(ptr noundef %0, i32 noundef 2, i32 noundef %275) #13
  br label %277

277:                                              ; preds = %273, %259
  %278 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 8
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %277
  call void %281(ptr noundef %0, i32 noundef %279) #13
  br label %313

284:                                              ; preds = %277
  %285 = lshr i32 %279, 1
  %286 = and i32 %285, 3
  %287 = lshr i32 %279, 11
  %288 = and i32 %287, 4
  %289 = or i32 %286, %288
  %290 = and i32 %287, 8
  %291 = or i32 %289, %290
  %292 = and i32 %287, 16
  %293 = or i32 %291, %292
  %294 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %295 = load i8, ptr %294, align 4
  %296 = trunc i32 %293 to i8
  %297 = or i8 %295, %296
  %298 = zext i8 %297 to i32
  %299 = load ptr, ptr %216, align 4
  call void %299(ptr noundef %0, i32 noundef 4, i32 noundef %298) #13
  %300 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %313, label %303

303:                                              ; preds = %284
  %304 = shl nuw nsw i32 %298, 1
  %305 = and i32 %304, 6
  %306 = shl nuw nsw i32 %298, 11
  %307 = and i32 %306, 8192
  %308 = or i32 %305, %307
  %309 = and i32 %306, 16384
  %310 = or i32 %308, %309
  %311 = and i32 %306, 32768
  %312 = or i32 %310, %311
  call void @mctrl_gpio_set(ptr noundef nonnull %301, i32 noundef %312) #13
  br label %313

313:                                              ; preds = %303, %284, %283
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %113) #13
  %314 = load i32, ptr %5, align 4
  %315 = and i32 %314, 32768
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %319 = load ptr, ptr %318, align 4
  %320 = call i64 @ktime_get_mono_fast_ns() #13
  %321 = getelementptr inbounds %struct.device, ptr %319, i32 0, i32 11, i32 22
  store volatile i64 %320, ptr %321, align 8
  %322 = load ptr, ptr %318, align 4
  %323 = call i32 @__pm_runtime_suspend(ptr noundef %322, i32 noundef 13) #13
  br label %324

324:                                              ; preds = %317, %313
  %325 = call i32 @tty_termios_baud_rate(ptr noundef %1) #13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %324
  call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %61, i32 noundef %61) #13
  br label %328

328:                                              ; preds = %327, %324
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_do_set_ldisc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 18
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = or i32 %7, 2048
  store i32 %9, ptr %6, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #13
  tail call void @serial8250_enable_ms(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %10 = load i16, ptr %0, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %35

12:                                               ; preds = %2
  %13 = and i32 %7, -2049
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -2147481600
  %17 = icmp eq i32 %16, 2048
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #13
  %19 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, -9
  store i8 %28, ptr %26, align 2
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, i32 noundef 1, i32 noundef %29) #13
  br label %32

32:                                               ; preds = %23, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %33 = load i16, ptr %0, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %35

35:                                               ; preds = %32, %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_enable_ms(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %10 = load i8, ptr %9, align 2
  %11 = or i8 %10, 8
  store i8 %11, ptr %9, align 2
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #13
  %20 = load i8, ptr %9, align 2
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi i8 [ %11, %6 ], [ %20, %16 ]
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0, i32 noundef 1, i32 noundef %23) #13
  %26 = load i32, ptr %12, align 4
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i64 @ktime_get_mono_fast_ns() #13
  %33 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 11, i32 22
  store volatile i64 %32, ptr %33, align 8
  %34 = load ptr, ptr %30, align 4
  %35 = tail call i32 @__pm_runtime_suspend(ptr noundef %34, i32 noundef 13) #13
  br label %36

36:                                               ; preds = %29, %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_do_pm(ptr noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #13
  %13 = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %6, %3 ], [ %13, %9 ]
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = and i32 %15, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 3) #13
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef 2) #13
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %29 = load ptr, ptr %27, align 4
  tail call void %29(ptr noundef %0, i32 noundef 2, i32 noundef 16) #13
  %30 = load ptr, ptr %27, align 4
  tail call void %30(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %31 = and i32 %26, 255
  %32 = and i32 %24, 255
  br label %33

33:                                               ; preds = %21, %18
  %34 = phi i32 [ %32, %21 ], [ 0, %18 ]
  %35 = phi i32 [ %31, %21 ], [ 0, %18 ]
  %36 = select i1 %4, i32 0, i32 16
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0, i32 noundef 1, i32 noundef %36) #13
  %39 = load i32, ptr %5, align 4
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load ptr, ptr %37, align 4
  tail call void %43(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %44 = load ptr, ptr %37, align 4
  tail call void %44(ptr noundef %0, i32 noundef 2, i32 noundef %35) #13
  %45 = load ptr, ptr %37, align 4
  tail call void %45(ptr noundef %0, i32 noundef 3, i32 noundef %34) #13
  %46 = load i32, ptr %5, align 4
  br label %47

47:                                               ; preds = %42, %33, %14
  %48 = phi i32 [ %39, %33 ], [ %46, %42 ], [ %15, %14 ]
  %49 = and i32 %48, 32768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i64 @ktime_get_mono_fast_ns() #13
  %55 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 11, i32 22
  store volatile i64 %54, ptr %55, align 8
  %56 = load ptr, ptr %52, align 4
  %57 = tail call i32 @__pm_runtime_suspend(ptr noundef %56, i32 noundef 13) #13
  br label %58

58:                                               ; preds = %51, %47
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @serial8250_init_port(ptr nocapture noundef writeonly %0) #7 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  store ptr @serial8250_pops, ptr %2, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 12
  store i8 -1, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @serial8250_set_defaults(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 134217728
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %8, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  store i32 %15, ptr %9, align 4
  br label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %8, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  store i32 %23, ptr %17, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %8, i32 5
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %25, align 4
  br label %31

31:                                               ; preds = %28, %24, %1
  %32 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  store ptr @default_serial_dl_read, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  store ptr @default_serial_dl_write, ptr %33, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %35 = load i8, ptr %34, align 2
  %36 = add i8 %35, -1
  %37 = icmp ult i8 %36, 7
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = sext i8 %36 to i32
  %40 = getelementptr inbounds [7 x ptr], ptr @switch.table.serial8250_config_port, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = sext i8 %36 to i32
  %43 = getelementptr inbounds [7 x ptr], ptr @switch.table.serial8250_config_port.46, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi ptr [ %41, %38 ], [ @io_serial_in, %31 ]
  %47 = phi ptr [ %44, %38 ], [ @io_serial_out, %31 ]
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  store ptr %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  store ptr %47, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 12
  store i8 %35, ptr %50, align 1
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 15
  store ptr @serial8250_default_handle_irq, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %45
  %56 = load ptr, ptr %53, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  store ptr @serial8250_tx_dma, ptr %53, align 4
  %59 = load ptr, ptr %52, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %59, %58 ], [ %53, %55 ]
  %62 = getelementptr inbounds %struct.uart_8250_dma, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store ptr @serial8250_rx_dma, ptr %62, align 4
  br label %66

66:                                               ; preds = %65, %60, %45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_tx_dma(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_rx_dma(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_console_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ktermios, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @oops_in_progress, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !27
  %12 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #13, !srcloc !28
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  br label %17

17:                                               ; preds = %15, %14, %10
  %18 = phi i1 [ true, %14 ], [ false, %10 ], [ false, %15 ]
  %19 = phi i32 [ %11, %14 ], [ %11, %10 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef 1) #13
  %23 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = lshr i32 %24, 6
  %28 = and i32 %27, 64
  tail call void %26(ptr noundef %0, i32 noundef 1, i32 noundef %28) #13
  %29 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 14
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %144, label %32

32:                                               ; preds = %17
  %33 = zext i8 %30 to i32
  %34 = load ptr, ptr %20, align 4
  %35 = tail call i32 %34(ptr noundef %0, i32 noundef 7) #13
  %36 = icmp eq i32 %35, %33
  br i1 %36, label %144, label %37

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false) #13, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.console, ptr %39, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tty_port, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ne ptr %46, null
  %48 = icmp eq i32 %41, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.tty_struct, ptr %46, i32 0, i32 13, i32 2
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %42, align 4
  br label %53

53:                                               ; preds = %50, %37
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  %56 = udiv i32 %55, 100
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 65536
  %60 = icmp eq i32 %59, 0
  %61 = udiv i32 %55, 1048560
  %62 = select i1 %60, i32 4, i32 2
  %63 = xor i1 %60, true
  %64 = zext i1 %63 to i32
  %65 = lshr i32 %61, %64
  %66 = add i32 %56, %55
  %67 = lshr i32 %66, %62
  %68 = call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef %65, i32 noundef %67) #13
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %53
  %73 = call i32 %70(ptr noundef %0, i32 noundef %68, ptr noundef nonnull %5) #13
  br label %110

74:                                               ; preds = %53
  %75 = load i32, ptr %57, align 4
  %76 = and i32 %75, 65536
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %54, align 4
  %80 = udiv i32 %79, 6
  %81 = icmp ugt i32 %80, %68
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = udiv i32 %79, 12
  %84 = icmp ugt i32 %83, %68
  br i1 %84, label %85, label %99

85:                                               ; preds = %82, %74
  %86 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 40
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, ptr %54, align 4
  %91 = shl i32 %68, 4
  %92 = or i32 %91, 2
  %93 = lshr exact i32 %92, 1
  %94 = add i32 %90, %93
  %95 = udiv i32 %94, %92
  %96 = add nsw i32 %95, -2
  br label %99

97:                                               ; preds = %85
  %98 = call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %68) #13
  br label %99

99:                                               ; preds = %97, %89, %82, %78
  %100 = phi i32 [ %96, %89 ], [ %98, %97 ], [ 32769, %78 ], [ 32770, %82 ]
  %101 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %102 = load i16, ptr %101, align 4
  %103 = and i16 %102, 1
  %104 = icmp ne i16 %103, 0
  %105 = and i32 %100, 255
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %104, i1 %106, i1 false
  %108 = zext i1 %107 to i32
  %109 = add i32 %100, %108
  br label %110

110:                                              ; preds = %99, %72
  %111 = phi i32 [ %73, %72 ], [ %109, %99 ]
  %112 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %5, align 4
  call void %113(ptr noundef %0, i32 noundef %68, i32 noundef %111, i32 noundef %116) #13
  br label %132

117:                                              ; preds = %110
  %118 = load i32, ptr %23, align 4
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %123 = load i8, ptr %122, align 1
  %124 = or i8 %123, -128
  %125 = zext i8 %124 to i32
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi i32 [ %125, %121 ], [ 224, %117 ]
  %128 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  call void %129(ptr noundef %0, i32 noundef 3, i32 noundef %127) #13
  %130 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %131 = load ptr, ptr %130, align 4
  call void %131(ptr noundef %0, i32 noundef %111) #13
  br label %132

132:                                              ; preds = %126, %115
  %133 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  call void %137(ptr noundef %0, i32 noundef 3, i32 noundef %135) #13
  %138 = load ptr, ptr %136, align 4
  call void %138(ptr noundef %0, i32 noundef 4, i32 noundef 3) #13
  %139 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %132
  call void @mctrl_gpio_set(ptr noundef nonnull %140, i32 noundef 6) #13
  br label %143

143:                                              ; preds = %142, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #13
  store i8 0, ptr %29, align 4
  br label %144

144:                                              ; preds = %143, %32, %17
  %145 = icmp eq ptr %7, null
  br i1 %145, label %224, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.uart_8250_em485, ptr %7, i32 0, i32 4
  %148 = load i8, ptr %147, align 8
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 24
  %153 = load ptr, ptr %152, align 4
  call void %153(ptr noundef %0) #13
  br label %154

154:                                              ; preds = %151, %146
  %155 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %158, %154
  %159 = phi i32 [ %160, %158 ], [ %156, %154 ]
  %160 = add i32 %159, -1
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %161(i32 noundef 214748000) #13
  %162 = icmp eq i32 %160, 0
  br i1 %162, label %163, label %158

163:                                              ; preds = %158, %154
  call void @uart_console_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @serial8250_console_putchar) #13
  %164 = load ptr, ptr %20, align 4
  %165 = call i32 %164(ptr noundef %0, i32 noundef 5) #13
  %166 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %167 = load i8, ptr %166, align 4
  %168 = trunc i32 %165 to i8
  %169 = and i8 %168, 30
  %170 = or i8 %169, %167
  store i8 %170, ptr %166, align 4
  %171 = and i32 %165, 96
  %172 = icmp eq i32 %171, 96
  br i1 %172, label %187, label %173

173:                                              ; preds = %177, %163
  %174 = phi i32 [ %175, %177 ], [ 10000, %163 ]
  %175 = add nsw i32 %174, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748) #13
  %179 = load ptr, ptr %20, align 4
  %180 = call i32 %179(ptr noundef %0, i32 noundef 5) #13
  %181 = load i8, ptr %166, align 4
  %182 = trunc i32 %180 to i8
  %183 = and i8 %182, 30
  %184 = or i8 %183, %181
  store i8 %184, ptr %166, align 4
  %185 = and i32 %180, 96
  %186 = icmp eq i32 %185, 96
  br i1 %186, label %187, label %173

187:                                              ; preds = %177, %173, %163
  %188 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 8388608
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  br label %194

194:                                              ; preds = %204, %192
  %195 = phi i32 [ 1000000, %192 ], [ %206, %204 ]
  %196 = load ptr, ptr %20, align 4
  %197 = call i32 %196(ptr noundef %0, i32 noundef 6) #13
  %198 = load i8, ptr %193, align 1
  %199 = trunc i32 %197 to i8
  %200 = and i8 %199, 15
  %201 = or i8 %200, %198
  store i8 %201, ptr %193, align 1
  %202 = and i32 %197, 16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %194
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %205(i32 noundef 214748) #13
  %206 = add nsw i32 %195, -1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %194

208:                                              ; preds = %204, %194, %187
  %209 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %212, %208
  %213 = phi i32 [ %214, %212 ], [ %210, %208 ]
  %214 = add i32 %213, -1
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %215(i32 noundef 214748000) #13
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %217, label %212

217:                                              ; preds = %212, %208
  %218 = load i8, ptr %147, align 8
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %269, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 25
  %223 = load ptr, ptr %222, align 4
  call void %223(ptr noundef %0) #13
  br label %269

224:                                              ; preds = %144
  call void @uart_console_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @serial8250_console_putchar) #13
  %225 = load ptr, ptr %20, align 4
  %226 = call i32 %225(ptr noundef %0, i32 noundef 5) #13
  %227 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %228 = load i8, ptr %227, align 4
  %229 = trunc i32 %226 to i8
  %230 = and i8 %229, 30
  %231 = or i8 %230, %228
  store i8 %231, ptr %227, align 4
  %232 = and i32 %226, 96
  %233 = icmp eq i32 %232, 96
  br i1 %233, label %248, label %234

234:                                              ; preds = %238, %224
  %235 = phi i32 [ %236, %238 ], [ 10000, %224 ]
  %236 = add nsw i32 %235, -1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %239(i32 noundef 214748) #13
  %240 = load ptr, ptr %20, align 4
  %241 = call i32 %240(ptr noundef %0, i32 noundef 5) #13
  %242 = load i8, ptr %227, align 4
  %243 = trunc i32 %241 to i8
  %244 = and i8 %243, 30
  %245 = or i8 %244, %242
  store i8 %245, ptr %227, align 4
  %246 = and i32 %241, 96
  %247 = icmp eq i32 %246, 96
  br i1 %247, label %248, label %234

248:                                              ; preds = %238, %234, %224
  %249 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 8388608
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %269, label %253

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  br label %255

255:                                              ; preds = %265, %253
  %256 = phi i32 [ 1000000, %253 ], [ %267, %265 ]
  %257 = load ptr, ptr %20, align 4
  %258 = call i32 %257(ptr noundef %0, i32 noundef 6) #13
  %259 = load i8, ptr %254, align 1
  %260 = trunc i32 %258 to i8
  %261 = and i8 %260, 15
  %262 = or i8 %261, %259
  store i8 %262, ptr %254, align 1
  %263 = and i32 %258, 16
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %255
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %266(i32 noundef 214748) #13
  %267 = add nsw i32 %256, -1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %255

269:                                              ; preds = %265, %255, %248, %221, %217
  %270 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %271 = load ptr, ptr %270, align 4
  call void %271(ptr noundef %0, i32 noundef 1, i32 noundef %22) #13
  %272 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  %273 = load i8, ptr %272, align 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %269
  %276 = call i32 @serial8250_modem_status(ptr noundef %0)
  br label %277

277:                                              ; preds = %275, %269
  br i1 %18, label %279, label %278

278:                                              ; preds = %277
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %19) #13
  br label %279

279:                                              ; preds = %278, %277
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_console_putchar(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 5) #13
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %7 = load i8, ptr %6, align 4
  %8 = trunc i32 %5 to i8
  %9 = and i8 %8, 30
  %10 = or i8 %9, %7
  store i8 %10, ptr %6, align 4
  %11 = and i32 %5, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %17, %2
  %14 = phi i32 [ %15, %17 ], [ 10000, %2 ]
  %15 = add nsw i32 %14, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #13
  %19 = load ptr, ptr %3, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 5) #13
  %21 = load i8, ptr %6, align 4
  %22 = trunc i32 %20 to i8
  %23 = and i8 %22, 30
  %24 = or i8 %23, %21
  store i8 %24, ptr %6, align 4
  %25 = and i32 %20, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %13, label %27

27:                                               ; preds = %17, %13, %2
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8388608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  br label %34

34:                                               ; preds = %44, %32
  %35 = phi i32 [ 1000000, %32 ], [ %46, %44 ]
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef 6) #13
  %38 = load i8, ptr %33, align 1
  %39 = trunc i32 %37 to i8
  %40 = and i8 %39, 15
  %41 = or i8 %40, %38
  store i8 %41, ptr %33, align 1
  %42 = and i32 %37, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #13
  %46 = add nsw i32 %35, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %34

48:                                               ; preds = %44, %34, %27
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %0, i32 noundef 0, i32 noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_console_setup(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 9600, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 110, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 110, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %59, label %15

15:                                               ; preds = %11, %3
  %16 = icmp eq ptr %1, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %18 = load i32, ptr %4, align 4
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %5, align 4
  %21 = load i32, ptr %7, align 4
  br label %44

22:                                               ; preds = %15
  br i1 %2, label %23, label %44

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef 3) #13
  %27 = and i32 %26, 255
  %28 = or i32 %27, 128
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %0, i32 noundef 3, i32 noundef %28) #13
  %31 = load ptr, ptr %24, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 0) #13
  %33 = load ptr, ptr %24, align 4
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef 1) #13
  %35 = load ptr, ptr %29, align 4
  tail call void %35(ptr noundef %0, i32 noundef 3, i32 noundef %27) #13
  %36 = shl i32 %34, 8
  %37 = and i32 %36, 65280
  %38 = and i32 %32, 255
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 4
  %43 = udiv i32 %42, %39
  store i32 %43, ptr %4, align 4
  br label %44

44:                                               ; preds = %23, %22, %17
  %45 = phi i32 [ 110, %22 ], [ 110, %23 ], [ %21, %17 ]
  %46 = phi i32 [ 8, %22 ], [ 8, %23 ], [ %20, %17 ]
  %47 = phi i32 [ 110, %22 ], [ 110, %23 ], [ %19, %17 ]
  %48 = phi i32 [ 9600, %22 ], [ %43, %23 ], [ %18, %17 ]
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @uart_set_options(ptr noundef %0, ptr noundef %50, i32 noundef %48, i32 noundef %47, i32 noundef %46, i32 noundef %45) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i32 @__pm_runtime_resume(ptr noundef nonnull %55, i32 noundef 4) #13
  br label %59

59:                                               ; preds = %57, %53, %44, %11
  %60 = phi i32 [ -19, %11 ], [ %51, %44 ], [ 0, %57 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_console_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %3, i32 noundef 4) #13
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_em485_handle_stop_tx(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #13
  br label %12

12:                                               ; preds = %8, %1
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %14 = getelementptr i8, ptr %0, i32 48
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %3) #13
  store ptr null, ptr %14, align 8
  %20 = getelementptr i8, ptr %0, i32 56
  %21 = load i8, ptr %20, align 8
  %22 = or i8 %21, 1
  store i8 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %17, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %13) #13
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i64 @ktime_get_mono_fast_ns() #13
  %31 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 11, i32 22
  store volatile i64 %30, ptr %31, align 8
  %32 = load ptr, ptr %28, align 4
  %33 = tail call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #13
  br label %34

34:                                               ; preds = %27, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_em485_handle_start_tx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_em485, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.uart_8250_em485, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 %13(ptr noundef %3) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 9
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = or i8 %18, 2
  store i8 %22, ptr %17, align 2
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %3, i32 noundef 1, i32 noundef %23) #13
  %26 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %3, i32 noundef 5) #13
  %34 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 17
  %35 = load i8, ptr %34, align 4
  %36 = trunc i32 %33 to i8
  %37 = and i8 %36, 30
  %38 = or i8 %37, %35
  store i8 %38, ptr %34, align 4
  %39 = and i32 %33, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  tail call void @serial8250_tx_chars(ptr noundef %3) #13
  br label %42

42:                                               ; preds = %41, %30, %21, %16
  %43 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 38
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 7
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = and i8 %48, -3
  store i8 %52, ptr %47, align 4
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %3, i32 noundef 7, i32 noundef 0) #13
  %56 = load ptr, ptr %54, align 4
  tail call void %56(ptr noundef %3, i32 noundef 5, i32 noundef %53) #13
  br label %57

57:                                               ; preds = %51, %46, %42, %12
  store ptr null, ptr %5, align 8
  br label %58

58:                                               ; preds = %57, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get_outputs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rx_dma_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_serial_dl_read(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 0) #13
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 1) #13
  %7 = and i32 %4, 255
  %8 = shl i32 %6, 8
  %9 = and i32 %8, 65280
  %10 = or i32 %9, %7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @default_serial_dl_write(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 255
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef 0, i32 noundef %3) #13
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 255
  %8 = load ptr, ptr %4, align 4
  tail call void %8(ptr noundef %0, i32 noundef 1, i32 noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub6_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !30
  tail call void @arm_heavy_mb() #13
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 50
  %8 = load i8, ptr %7, align 2
  %9 = trunc i32 %6 to i8
  %10 = add i8 %9, -1
  %11 = add i8 %10, %8
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1048575
  %15 = or i32 %14, -18874368
  %16 = inttoptr i32 %15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %11) #13, !srcloc !18
  %17 = load i32, ptr %12, align 4
  %18 = add i32 %17, 1
  %19 = and i32 %18, 1048575
  %20 = or i32 %19, -18874368
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #13, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !31
  %23 = zext i8 %22 to i32
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub6_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !32
  tail call void @arm_heavy_mb() #13
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 50
  %9 = load i8, ptr %8, align 2
  %10 = trunc i32 %7 to i8
  %11 = add i8 %10, -1
  %12 = add i8 %11, %9
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1048575
  %16 = or i32 %15, -18874368
  %17 = inttoptr i32 %16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %12) #13, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  %18 = trunc i32 %2 to i8
  %19 = load i32, ptr %13, align 4
  %20 = add i32 %19, 1
  %21 = and i32 %20, 1048575
  %22 = or i32 %21, -18874368
  %23 = inttoptr i32 %22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %18) #13, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #13, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mem_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %8) #13, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem16_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #13, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !37
  %11 = zext i16 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mem16_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !38
  tail call void @arm_heavy_mb() #13
  %8 = trunc i32 %2 to i16
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %8) #13, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem32_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !40
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !41
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mem32_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !42
  tail call void @arm_heavy_mb() #13
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #13, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem32be_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !44
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mem32be_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !45
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %2)
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #13, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @io_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = and i32 %9, 1048575
  %11 = or i32 %10, -18874368
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #13, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !46
  %14 = zext i8 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @io_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !47
  tail call void @arm_heavy_mb() #13
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %7
  %12 = and i32 %11, 1048575
  %13 = or i32 %12, -18874368
  %14 = inttoptr i32 %13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %8) #13, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_default_handle_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef 2) #13
  %14 = tail call i32 @serial8250_handle_irq(ptr noundef %0, i32 noundef %13)
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i64 @ktime_get_mono_fast_ns() #13
  %22 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, i32 22
  store volatile i64 %21, ptr %22, align 8
  %23 = load ptr, ptr %19, align 4
  %24 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #13
  br label %25

25:                                               ; preds = %18, %10
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_tx_empty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  br label %10

10:                                               ; preds = %6, %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef 5) #13
  %15 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %16 = load i8, ptr %15, align 4
  %17 = trunc i32 %14 to i8
  %18 = and i8 %17, 30
  %19 = or i8 %18, %16
  store i8 %19, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %11) #13
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i64 @ktime_get_mono_fast_ns() #13
  %27 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 11, i32 22
  store volatile i64 %26, ptr %27, align 8
  %28 = load ptr, ptr %24, align 4
  %29 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #13
  br label %30

30:                                               ; preds = %23, %10
  %31 = and i32 %14, 96
  %32 = icmp eq i32 %31, 96
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_get_mctrl(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #13
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 @serial8250_do_get_mctrl(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_start_tx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %9) #13, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %12 = trunc i32 %11 to i8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #13
  br label %18

18:                                               ; preds = %14, %8, %1
  %19 = icmp eq ptr %3, null
  br i1 %19, label %91, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uart_8250_em485, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %140, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.uart_8250_em485, ptr %25, i32 0, i32 2
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %struct.uart_8250_em485, ptr %25, i32 0, i32 4
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %24
  %32 = and i8 %28, -2
  store i8 %32, ptr %27, align 8
  %33 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 24
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0) #13
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  store ptr %25, ptr %26, align 8
  %39 = load i32, ptr %35, align 4
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %25, i64 noundef %41, i64 noundef 0, i32 noundef 1) #13
  br label %140

42:                                               ; preds = %31, %24
  %43 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 4
  %48 = tail call i32 %47(ptr noundef %0) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %140, label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = or i8 %52, 2
  store i8 %56, ptr %51, align 2
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %0, i32 noundef 1, i32 noundef %57) #13
  %60 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(ptr noundef %0, i32 noundef 5) #13
  %68 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %69 = load i8, ptr %68, align 4
  %70 = trunc i32 %67 to i8
  %71 = and i8 %70, 30
  %72 = or i8 %71, %69
  store i8 %72, ptr %68, align 4
  %73 = and i32 %67, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  tail call void @serial8250_tx_chars(ptr noundef %0) #13
  br label %76

76:                                               ; preds = %75, %64, %55, %50
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %140

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 7
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, 2
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %140, label %85

85:                                               ; preds = %80
  %86 = and i8 %82, -3
  store i8 %86, ptr %81, align 4
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %90 = load ptr, ptr %88, align 4
  tail call void %90(ptr noundef %0, i32 noundef 5, i32 noundef %87) #13
  br label %140

91:                                               ; preds = %18
  %92 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %93, align 4
  %97 = tail call i32 %96(ptr noundef %0) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %140, label %99

99:                                               ; preds = %95, %91
  %100 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %101 = load i8, ptr %100, align 2
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = or i8 %101, 2
  store i8 %105, ptr %100, align 2
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  tail call void %108(ptr noundef %0, i32 noundef 1, i32 noundef %106) #13
  %109 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %110 = load i16, ptr %109, align 4
  %111 = and i16 %110, 2
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 %115(ptr noundef %0, i32 noundef 5) #13
  %117 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %118 = load i8, ptr %117, align 4
  %119 = trunc i32 %116 to i8
  %120 = and i8 %119, 30
  %121 = or i8 %120, %118
  store i8 %121, ptr %117, align 4
  %122 = and i32 %116, 32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %113
  tail call void @serial8250_tx_chars(ptr noundef %0) #13
  br label %125

125:                                              ; preds = %124, %113, %104, %99
  %126 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 7
  %131 = load i8, ptr %130, align 4
  %132 = and i8 %131, 2
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = and i8 %131, -3
  store i8 %135, ptr %130, align 4
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %138 = load ptr, ptr %137, align 4
  tail call void %138(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %139 = load ptr, ptr %137, align 4
  tail call void %139(ptr noundef %0, i32 noundef 5, i32 noundef %136) #13
  br label %140

140:                                              ; preds = %134, %129, %125, %95, %85, %80, %76, %46, %38, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_throttle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_unthrottle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_break_ctl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #13
  br label %11

11:                                               ; preds = %7, %2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %13 = icmp eq i32 %1, -1
  %14 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, -65
  %17 = select i1 %13, i8 64, i8 0
  %18 = or i8 %16, %17
  store i8 %18, ptr %14, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0, i32 noundef 3, i32 noundef %19) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %12) #13
  %22 = load i32, ptr %3, align 4
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i64 @ktime_get_mono_fast_ns() #13
  %29 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 22
  store volatile i64 %28, ptr %29, align 8
  %30 = load ptr, ptr %26, align 4
  %31 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #13
  br label %32

32:                                               ; preds = %25, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #13
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 @serial8250_do_startup(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(ptr noundef %0) #13
  br label %7

6:                                                ; preds = %1
  tail call void @serial8250_do_shutdown(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %9

8:                                                ; preds = %3
  tail call void @serial8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_set_ldisc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, ptr noundef %1) #13
  br label %8

7:                                                ; preds = %2
  tail call void @serial8250_do_set_ldisc(ptr noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  br label %9

8:                                                ; preds = %3
  tail call void @serial8250_do_pm(ptr noundef %0, i32 noundef %1, i32 undef)
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @serial8250_type(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 121
  %5 = select i1 %4, i32 0, i32 %3
  %6 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_release_port(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 2
  br i1 %4, label %7, label %19

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 29
  %13 = select i1 %12, i32 256, i32 4096
  br label %21

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 8, %17
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i32 [ %18, %14 ], [ %3, %1 ]
  switch i8 %6, label %39 [
    i8 4, label %21
    i8 5, label %21
    i8 3, label %21
    i8 6, label %21
    i8 7, label %21
    i8 2, label %21
    i8 1, label %36
    i8 0, label %36
  ]

21:                                               ; preds = %19, %19, %19, %19, %19, %19, %9
  %22 = phi i32 [ %13, %9 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void @iounmap(ptr noundef %32) #13
  store ptr null, ptr %31, align 4
  %33 = load i32, ptr %23, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %33, %30 ], [ %24, %26 ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %35, i32 noundef %22) #13
  br label %39

36:                                               ; preds = %19, %19
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %38, i32 noundef %20) #13
  br label %39

39:                                               ; preds = %36, %34, %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_request_port(ptr nocapture noundef %0) #0 {
  %2 = tail call fastcc i32 @serial8250_request_std_resource(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_config_port(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call fastcc i32 @serial8250_request_std_resource(ptr noundef %0)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %684, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 12
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  store ptr @default_serial_dl_read, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  store ptr @default_serial_dl_write, ptr %16, align 4
  %17 = add i8 %10, -1
  %18 = icmp ult i8 %17, 7
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = sext i8 %17 to i32
  %21 = getelementptr inbounds [7 x ptr], ptr @switch.table.serial8250_config_port, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = sext i8 %17 to i32
  %24 = getelementptr inbounds [7 x ptr], ptr @switch.table.serial8250_config_port.46, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi ptr [ %22, %19 ], [ @io_serial_in, %14 ]
  %28 = phi ptr [ %25, %19 ], [ @io_serial_out, %14 ]
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  store ptr %27, ptr %29, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  store ptr %28, ptr %30, align 4
  store i8 %10, ptr %11, align 1
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 15
  store ptr @serial8250_default_handle_irq, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %8
  %33 = and i32 %1, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %488, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %488, label %47

47:                                               ; preds = %43, %39, %35
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %49 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  store i16 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 16384
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %0, i32 noundef 1) #13
  %59 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  tail call void %60(ptr noundef %0, i32 noundef 1, i32 noundef 0) #13
  %61 = load ptr, ptr %56, align 4
  %62 = tail call i32 %61(ptr noundef %0, i32 noundef 1) #13
  %63 = and i32 %62, 15
  %64 = load ptr, ptr %59, align 4
  tail call void %64(ptr noundef %0, i32 noundef 1, i32 noundef 15) #13
  %65 = load ptr, ptr %56, align 4
  %66 = tail call i32 %65(ptr noundef %0, i32 noundef 1) #13
  %67 = and i32 %66, 15
  %68 = and i32 %58, 255
  %69 = load ptr, ptr %59, align 4
  tail call void %69(ptr noundef %0, i32 noundef 1, i32 noundef %68) #13
  %70 = icmp ne i32 %63, 0
  %71 = icmp ne i32 %67, 15
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %48) #13
  br label %488

74:                                               ; preds = %55, %47
  %75 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %0, i32 noundef 4) #13
  %78 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %82 = call i32 @mctrl_gpio_get_outputs(ptr noundef nonnull %79, ptr noundef nonnull %5) #13
  %83 = lshr i32 %82, 1
  %84 = and i32 %83, 3
  %85 = lshr i32 %82, 11
  %86 = and i32 %85, 4
  %87 = and i32 %85, 8
  %88 = and i32 %85, 16
  %89 = or i32 %86, %77
  %90 = or i32 %89, %84
  %91 = or i32 %90, %87
  %92 = or i32 %91, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %93

93:                                               ; preds = %81, %74
  %94 = phi i32 [ %92, %81 ], [ %77, %74 ]
  %95 = load ptr, ptr %75, align 4
  %96 = call i32 %95(ptr noundef %0, i32 noundef 3) #13
  %97 = load i32, ptr %51, align 4
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  call void %102(ptr noundef %0, i32 noundef 4, i32 noundef 26) #13
  %103 = load ptr, ptr %78, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  call void @mctrl_gpio_set(ptr noundef nonnull %103, i32 noundef 49156) #13
  br label %106

106:                                              ; preds = %105, %100
  %107 = load ptr, ptr %75, align 4
  %108 = call i32 %107(ptr noundef %0, i32 noundef 6) #13
  %109 = and i32 %108, 240
  %110 = and i32 %94, 255
  %111 = load ptr, ptr %101, align 4
  call void %111(ptr noundef %0, i32 noundef 4, i32 noundef %110) #13
  %112 = load ptr, ptr %78, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %106
  %115 = shl nuw nsw i32 %110, 1
  %116 = and i32 %115, 6
  %117 = shl nuw nsw i32 %110, 11
  %118 = and i32 %117, 8192
  %119 = or i32 %116, %118
  %120 = and i32 %117, 16384
  %121 = or i32 %119, %120
  %122 = and i32 %117, 32768
  %123 = or i32 %121, %122
  call void @mctrl_gpio_set(ptr noundef nonnull %112, i32 noundef %123) #13
  br label %124

124:                                              ; preds = %114, %106
  %125 = icmp eq i32 %109, 144
  br i1 %125, label %127, label %126

126:                                              ; preds = %124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %48) #13
  br label %488

127:                                              ; preds = %124, %93
  %128 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  call void %129(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %130 = load ptr, ptr %128, align 4
  call void %130(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  %131 = load ptr, ptr %128, align 4
  call void %131(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %132 = load ptr, ptr %128, align 4
  call void %132(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %133 = load ptr, ptr %75, align 4
  %134 = call i32 %133(ptr noundef %0, i32 noundef 2) #13
  %135 = lshr i32 %134, 6
  %136 = and i32 %135, 3
  switch i32 %136, label %434 [
    i32 0, label %137
    i32 1, label %155
    i32 2, label %157
    i32 3, label %159
  ]

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 1, ptr %138, align 4
  %139 = load ptr, ptr %75, align 4
  %140 = call i32 %139(ptr noundef %0, i32 noundef 7) #13
  %141 = load ptr, ptr %128, align 4
  call void %141(ptr noundef %0, i32 noundef 7, i32 noundef 165) #13
  %142 = load ptr, ptr %75, align 4
  %143 = call i32 %142(ptr noundef %0, i32 noundef 7) #13
  %144 = load ptr, ptr %128, align 4
  call void %144(ptr noundef %0, i32 noundef 7, i32 noundef 90) #13
  %145 = load ptr, ptr %75, align 4
  %146 = call i32 %145(ptr noundef %0, i32 noundef 7) #13
  %147 = and i32 %140, 255
  %148 = load ptr, ptr %128, align 4
  call void %148(ptr noundef %0, i32 noundef 7, i32 noundef %147) #13
  %149 = and i32 %143, 255
  %150 = icmp eq i32 %149, 165
  %151 = and i32 %146, 255
  %152 = icmp eq i32 %151, 90
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %435

154:                                              ; preds = %137
  store i32 2, ptr %138, align 4
  br label %435

155:                                              ; preds = %127
  %156 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 0, ptr %156, align 4
  br label %435

157:                                              ; preds = %127
  %158 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 3, ptr %158, align 4
  br label %435

159:                                              ; preds = %127
  %160 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 4, ptr %160, align 4
  %161 = load i32, ptr %49, align 4
  %162 = or i32 %161, 256
  store i32 %162, ptr %49, align 4
  %163 = load ptr, ptr %128, align 4
  call void %163(ptr noundef %0, i32 noundef 3, i32 noundef 128) #13
  %164 = load ptr, ptr %75, align 4
  %165 = call i32 %164(ptr noundef %0, i32 noundef 2) #13
  %166 = icmp eq i32 %165, 0
  %167 = load ptr, ptr %128, align 4
  br i1 %166, label %168, label %187

168:                                              ; preds = %159
  call void %167(ptr noundef %0, i32 noundef 2, i32 noundef 168) #13
  %169 = load ptr, ptr %75, align 4
  %170 = call i32 %169(ptr noundef %0, i32 noundef 2) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  store i32 6, ptr %160, align 4
  %173 = load i32, ptr %49, align 4
  %174 = or i32 %173, 1536
  store i32 %174, ptr %49, align 4
  br label %185

175:                                              ; preds = %168
  %176 = load ptr, ptr %128, align 4
  call void %176(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %177 = load ptr, ptr %128, align 4
  call void %177(ptr noundef %0, i32 noundef 2, i32 noundef 33) #13
  %178 = load ptr, ptr %75, align 4
  %179 = call i32 %178(ptr noundef %0, i32 noundef 2) #13
  %180 = load ptr, ptr %128, align 4
  call void %180(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  %181 = load ptr, ptr %128, align 4
  call void %181(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %182 = and i32 %179, 8160
  %183 = icmp eq i32 %182, 224
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  store i32 30, ptr %160, align 4
  br label %185

185:                                              ; preds = %184, %175, %172
  %186 = load ptr, ptr %128, align 4
  call void %186(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  br label %435

187:                                              ; preds = %159
  call void %167(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %188 = load ptr, ptr %75, align 4
  %189 = call i32 %188(ptr noundef %0, i32 noundef 2) #13
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %298

191:                                              ; preds = %187
  %192 = load ptr, ptr %75, align 4
  %193 = call i32 %192(ptr noundef %0, i32 noundef 3) #13
  %194 = load ptr, ptr %128, align 4
  call void %194(ptr noundef %0, i32 noundef 3, i32 noundef 128) #13
  %195 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  %196 = load ptr, ptr %195, align 4
  %197 = call i32 %196(ptr noundef %0) #13
  %198 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %199 = load ptr, ptr %198, align 4
  call void %199(ptr noundef %0, i32 noundef 0) #13
  %200 = load ptr, ptr %195, align 4
  %201 = call i32 %200(ptr noundef %0) #13
  %202 = load ptr, ptr %198, align 4
  call void %202(ptr noundef %0, i32 noundef %197) #13
  %203 = and i32 %193, 255
  %204 = load ptr, ptr %128, align 4
  call void %204(ptr noundef %0, i32 noundef 3, i32 noundef %203) #13
  %205 = icmp eq i32 %201, 513
  br i1 %205, label %206, label %209

206:                                              ; preds = %191
  %207 = call fastcc i32 @size_fifo(ptr noundef %0) #13
  %208 = icmp eq i32 %207, 16
  br i1 %208, label %298, label %209

209:                                              ; preds = %206, %191
  %210 = load i32, ptr %49, align 4
  %211 = or i32 %210, 1536
  store i32 %211, ptr %49, align 4
  %212 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 7
  store i8 0, ptr %212, align 4
  %213 = load ptr, ptr %128, align 4
  call void %213(ptr noundef %0, i32 noundef 3, i32 noundef 191) #13
  %214 = load ptr, ptr %128, align 4
  call void %214(ptr noundef %0, i32 noundef 2, i32 noundef 16) #13
  %215 = load ptr, ptr %128, align 4
  call void %215(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %216 = load i8, ptr %212, align 4
  %217 = or i8 %216, 64
  %218 = zext i8 %217 to i32
  %219 = load ptr, ptr %128, align 4
  call void %219(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %220 = load ptr, ptr %128, align 4
  call void %220(ptr noundef %0, i32 noundef 5, i32 noundef %218) #13
  %221 = load ptr, ptr %128, align 4
  call void %221(ptr noundef %0, i32 noundef 7, i32 noundef 8) #13
  %222 = load ptr, ptr %75, align 4
  %223 = call i32 %222(ptr noundef %0, i32 noundef 5) #13
  %224 = load i8, ptr %212, align 4
  %225 = zext i8 %224 to i32
  %226 = load ptr, ptr %128, align 4
  call void %226(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %227 = load ptr, ptr %128, align 4
  call void %227(ptr noundef %0, i32 noundef 5, i32 noundef %225) #13
  %228 = load i8, ptr %212, align 4
  %229 = or i8 %228, 64
  %230 = zext i8 %229 to i32
  %231 = load ptr, ptr %128, align 4
  call void %231(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %232 = load ptr, ptr %128, align 4
  call void %232(ptr noundef %0, i32 noundef 5, i32 noundef %230) #13
  %233 = load ptr, ptr %128, align 4
  call void %233(ptr noundef %0, i32 noundef 7, i32 noundef 9) #13
  %234 = load ptr, ptr %75, align 4
  %235 = call i32 %234(ptr noundef %0, i32 noundef 5) #13
  %236 = load i8, ptr %212, align 4
  %237 = zext i8 %236 to i32
  %238 = load ptr, ptr %128, align 4
  call void %238(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %239 = load ptr, ptr %128, align 4
  call void %239(ptr noundef %0, i32 noundef 5, i32 noundef %237) #13
  %240 = load i8, ptr %212, align 4
  %241 = or i8 %240, 64
  %242 = zext i8 %241 to i32
  %243 = load ptr, ptr %128, align 4
  call void %243(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %244 = load ptr, ptr %128, align 4
  call void %244(ptr noundef %0, i32 noundef 5, i32 noundef %242) #13
  %245 = load ptr, ptr %128, align 4
  call void %245(ptr noundef %0, i32 noundef 7, i32 noundef 10) #13
  %246 = load ptr, ptr %75, align 4
  %247 = call i32 %246(ptr noundef %0, i32 noundef 5) #13
  %248 = load i8, ptr %212, align 4
  %249 = zext i8 %248 to i32
  %250 = load ptr, ptr %128, align 4
  call void %250(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %251 = load ptr, ptr %128, align 4
  call void %251(ptr noundef %0, i32 noundef 5, i32 noundef %249) #13
  %252 = load i8, ptr %212, align 4
  %253 = or i8 %252, 64
  %254 = zext i8 %253 to i32
  %255 = load ptr, ptr %128, align 4
  call void %255(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %256 = load ptr, ptr %128, align 4
  call void %256(ptr noundef %0, i32 noundef 5, i32 noundef %254) #13
  %257 = load ptr, ptr %128, align 4
  call void %257(ptr noundef %0, i32 noundef 7, i32 noundef 11) #13
  %258 = load ptr, ptr %75, align 4
  %259 = call i32 %258(ptr noundef %0, i32 noundef 5) #13
  %260 = load i8, ptr %212, align 4
  %261 = zext i8 %260 to i32
  %262 = load ptr, ptr %128, align 4
  call void %262(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13
  %263 = load ptr, ptr %128, align 4
  call void %263(ptr noundef %0, i32 noundef 5, i32 noundef %261) #13
  %264 = icmp eq i32 %223, 22
  %265 = icmp eq i32 %235, 201
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %267, label %275

267:                                              ; preds = %209
  switch i32 %247, label %275 [
    i32 84, label %268
    i32 82, label %268
    i32 80, label %268
  ]

268:                                              ; preds = %267, %267, %267
  %269 = icmp eq i32 %247, 82
  store i32 10, ptr %160, align 4
  %270 = icmp eq i32 %259, 1
  %271 = select i1 %269, i1 %270, i1 false
  br i1 %271, label %272, label %435

272:                                              ; preds = %268
  %273 = load i16, ptr %50, align 4
  %274 = or i16 %273, 1
  store i16 %274, ptr %50, align 4
  br label %435

275:                                              ; preds = %267, %209
  %276 = load ptr, ptr %75, align 4
  %277 = call i32 %276(ptr noundef %0, i32 noundef 3) #13
  %278 = load ptr, ptr %128, align 4
  call void %278(ptr noundef %0, i32 noundef 3, i32 noundef 128) #13
  %279 = load ptr, ptr %195, align 4
  %280 = call i32 %279(ptr noundef %0) #13
  %281 = load ptr, ptr %198, align 4
  call void %281(ptr noundef %0, i32 noundef 0) #13
  %282 = load ptr, ptr %195, align 4
  %283 = call i32 %282(ptr noundef %0) #13
  %284 = load ptr, ptr %198, align 4
  call void %284(ptr noundef %0, i32 noundef %280) #13
  %285 = and i32 %277, 255
  %286 = load ptr, ptr %128, align 4
  call void %286(ptr noundef %0, i32 noundef 3, i32 noundef %285) #13
  %287 = and i32 %283, -768
  %288 = icmp eq i32 %287, 4096
  %289 = and i32 %283, -256
  %290 = icmp eq i32 %289, 5120
  %291 = or i1 %288, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %275
  store i32 12, ptr %160, align 4
  br label %435

293:                                              ; preds = %275
  %294 = call fastcc i32 @size_fifo(ptr noundef %0) #13
  %295 = icmp eq i32 %294, 64
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  store i32 11, ptr %160, align 4
  br label %435

297:                                              ; preds = %293
  store i32 7, ptr %160, align 4
  br label %435

298:                                              ; preds = %206, %187
  %299 = load ptr, ptr %128, align 4
  call void %299(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %300 = load ptr, ptr %75, align 4
  %301 = call i32 %300(ptr noundef %0, i32 noundef 4) #13
  %302 = load ptr, ptr %78, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %316, label %304

304:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  %305 = call i32 @mctrl_gpio_get_outputs(ptr noundef nonnull %302, ptr noundef nonnull %4) #13
  %306 = lshr i32 %305, 1
  %307 = and i32 %306, 3
  %308 = lshr i32 %305, 11
  %309 = and i32 %308, 4
  %310 = and i32 %308, 8
  %311 = and i32 %308, 16
  %312 = or i32 %309, %301
  %313 = or i32 %312, %307
  %314 = or i32 %313, %310
  %315 = or i32 %314, %311
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %316

316:                                              ; preds = %304, %298
  %317 = phi i32 [ %315, %304 ], [ %301, %298 ]
  %318 = load ptr, ptr %128, align 4
  call void %318(ptr noundef %0, i32 noundef 3, i32 noundef 224) #13
  %319 = load ptr, ptr %75, align 4
  %320 = call i32 %319(ptr noundef %0, i32 noundef 2) #13
  %321 = xor i32 %320, %317
  %322 = and i32 %321, 16
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %385

324:                                              ; preds = %316
  %325 = and i32 %317, 255
  %326 = load ptr, ptr %128, align 4
  call void %326(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %327 = xor i32 %325, 16
  %328 = load ptr, ptr %128, align 4
  call void %328(ptr noundef %0, i32 noundef 4, i32 noundef %327) #13
  %329 = load ptr, ptr %78, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %341, label %331

331:                                              ; preds = %324
  %332 = shl nuw nsw i32 %325, 1
  %333 = and i32 %332, 6
  %334 = shl nuw nsw i32 %327, 11
  %335 = and i32 %334, 8192
  %336 = or i32 %335, %333
  %337 = and i32 %334, 16384
  %338 = or i32 %336, %337
  %339 = and i32 %334, 32768
  %340 = or i32 %338, %339
  call void @mctrl_gpio_set(ptr noundef nonnull %329, i32 noundef %340) #13
  br label %341

341:                                              ; preds = %331, %324
  %342 = load ptr, ptr %128, align 4
  call void %342(ptr noundef %0, i32 noundef 3, i32 noundef 224) #13
  %343 = load ptr, ptr %75, align 4
  %344 = call i32 %343(ptr noundef %0, i32 noundef 2) #13
  %345 = load ptr, ptr %128, align 4
  call void %345(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %346 = load ptr, ptr %128, align 4
  call void %346(ptr noundef %0, i32 noundef 4, i32 noundef %325) #13
  %347 = load ptr, ptr %78, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %359, label %349

349:                                              ; preds = %341
  %350 = shl nuw nsw i32 %325, 1
  %351 = and i32 %350, 6
  %352 = shl nuw nsw i32 %325, 11
  %353 = and i32 %352, 8192
  %354 = or i32 %351, %353
  %355 = and i32 %352, 16384
  %356 = or i32 %354, %355
  %357 = and i32 %352, 32768
  %358 = or i32 %356, %357
  call void @mctrl_gpio_set(ptr noundef nonnull %347, i32 noundef %358) #13
  br label %359

359:                                              ; preds = %349, %341
  %360 = xor i32 %344, %317
  %361 = and i32 %360, 16
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %385, label %363

363:                                              ; preds = %359
  %364 = load ptr, ptr %128, align 4
  call void %364(ptr noundef %0, i32 noundef 3, i32 noundef 224) #13
  %365 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  %366 = load ptr, ptr %365, align 4
  %367 = call i32 %366(ptr noundef %0) #13
  %368 = load ptr, ptr %75, align 4
  %369 = call i32 %368(ptr noundef %0, i32 noundef 4) #13
  %370 = and i32 %369, 48
  %371 = icmp eq i32 %370, 16
  br i1 %371, label %380, label %372

372:                                              ; preds = %363
  %373 = and i32 %369, 79
  %374 = or i32 %373, 16
  %375 = load ptr, ptr %128, align 4
  call void %375(ptr noundef %0, i32 noundef 4, i32 noundef %374) #13
  %376 = shl i32 %367, 3
  %377 = and i32 %376, 65528
  %378 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %379 = load ptr, ptr %378, align 4
  call void %379(ptr noundef %0, i32 noundef %377) #13
  br label %380

380:                                              ; preds = %372, %363
  %381 = load ptr, ptr %128, align 4
  call void %381(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %382 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 14745600, ptr %382, align 4
  store i32 14, ptr %160, align 4
  %383 = load i32, ptr %49, align 4
  %384 = or i32 %383, 8
  store i32 %384, ptr %49, align 4
  br label %435

385:                                              ; preds = %359, %316
  %386 = load ptr, ptr %128, align 4
  call void %386(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %387 = load ptr, ptr %128, align 4
  call void %387(ptr noundef %0, i32 noundef 2, i32 noundef 33) #13
  %388 = load ptr, ptr %75, align 4
  %389 = call i32 %388(ptr noundef %0, i32 noundef 2) #13
  %390 = load ptr, ptr %128, align 4
  call void %390(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %391 = load ptr, ptr %128, align 4
  call void %391(ptr noundef %0, i32 noundef 3, i32 noundef 128) #13
  %392 = load ptr, ptr %128, align 4
  call void %392(ptr noundef %0, i32 noundef 2, i32 noundef 33) #13
  %393 = load ptr, ptr %75, align 4
  %394 = call i32 %393(ptr noundef %0, i32 noundef 2) #13
  %395 = load ptr, ptr %128, align 4
  call void %395(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %396 = load ptr, ptr %128, align 4
  call void %396(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %397 = and i32 %389, 8160
  %398 = icmp eq i32 %397, 192
  %399 = and i32 %394, 8160
  %400 = icmp eq i32 %399, 224
  %401 = select i1 %398, i1 %400, i1 false
  br i1 %401, label %402, label %405

402:                                              ; preds = %385
  store i32 8, ptr %160, align 4
  %403 = load i32, ptr %49, align 4
  %404 = or i32 %403, 3072
  store i32 %404, ptr %49, align 4
  br label %435

405:                                              ; preds = %385
  %406 = load ptr, ptr %75, align 4
  %407 = call i32 %406(ptr noundef %0, i32 noundef 1) #13
  %408 = and i32 %407, -65
  %409 = load ptr, ptr %128, align 4
  call void %409(ptr noundef %0, i32 noundef 1, i32 noundef %408) #13
  %410 = load ptr, ptr %75, align 4
  %411 = call i32 %410(ptr noundef %0, i32 noundef 1) #13
  %412 = and i32 %411, 64
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %405
  %415 = or i32 %407, 64
  %416 = load ptr, ptr %128, align 4
  call void %416(ptr noundef %0, i32 noundef 1, i32 noundef %415) #13
  %417 = load ptr, ptr %75, align 4
  %418 = call i32 %417(ptr noundef %0, i32 noundef 1) #13
  %419 = and i32 %418, 64
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %414
  store i32 15, ptr %160, align 4
  %422 = load i32, ptr %49, align 4
  %423 = or i32 %422, 12288
  store i32 %423, ptr %49, align 4
  br label %435

424:                                              ; preds = %414, %405
  %425 = load ptr, ptr %128, align 4
  call void %425(ptr noundef %0, i32 noundef 1, i32 noundef %407) #13
  %426 = load i32, ptr %160, align 4
  %427 = icmp eq i32 %426, 4
  br i1 %427, label %428, label %435

428:                                              ; preds = %424
  %429 = call fastcc i32 @size_fifo(ptr noundef %0) #13
  %430 = icmp eq i32 %429, 64
  br i1 %430, label %431, label %435

431:                                              ; preds = %428
  store i32 19, ptr %160, align 4
  %432 = load i32, ptr %49, align 4
  %433 = or i32 %432, 2048
  store i32 %433, ptr %49, align 4
  br label %435

434:                                              ; preds = %127
  unreachable

435:                                              ; preds = %431, %428, %424, %421, %402, %380, %297, %296, %292, %272, %268, %185, %157, %155, %154, %137
  %436 = and i32 %96, 255
  %437 = load ptr, ptr %128, align 4
  call void %437(ptr noundef %0, i32 noundef 3, i32 noundef %436) #13
  %438 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %439 = load i32, ptr %438, align 4
  %440 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %439, i32 1
  %441 = load i16, ptr %440, align 4
  %442 = zext i16 %441 to i32
  %443 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  store i32 %442, ptr %443, align 4
  %444 = load i32, ptr %49, align 4
  %445 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %439, i32 5
  %446 = load i32, ptr %445, align 4
  store i32 %446, ptr %49, align 4
  %447 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %439, i32 2
  %448 = load i16, ptr %447, align 2
  %449 = zext i16 %448 to i32
  %450 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 6
  store i32 %449, ptr %450, align 4
  %451 = icmp eq i32 %439, 0
  br i1 %451, label %482, label %452

452:                                              ; preds = %435
  %453 = and i32 %94, 255
  %454 = load ptr, ptr %128, align 4
  call void %454(ptr noundef %0, i32 noundef 4, i32 noundef %453) #13
  %455 = load ptr, ptr %78, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %467, label %457

457:                                              ; preds = %452
  %458 = shl nuw nsw i32 %453, 1
  %459 = and i32 %458, 6
  %460 = shl nuw nsw i32 %453, 11
  %461 = and i32 %460, 8192
  %462 = or i32 %459, %461
  %463 = and i32 %460, 16384
  %464 = or i32 %462, %463
  %465 = and i32 %460, 32768
  %466 = or i32 %464, %465
  call void @mctrl_gpio_set(ptr noundef nonnull %455, i32 noundef %466) #13
  br label %467

467:                                              ; preds = %457, %452
  %468 = load i32, ptr %49, align 4
  %469 = and i32 %468, 256
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %475, label %471

471:                                              ; preds = %467
  %472 = load ptr, ptr %128, align 4
  call void %472(ptr noundef %0, i32 noundef 2, i32 noundef 1) #13
  %473 = load ptr, ptr %128, align 4
  call void %473(ptr noundef %0, i32 noundef 2, i32 noundef 7) #13
  %474 = load ptr, ptr %128, align 4
  call void %474(ptr noundef %0, i32 noundef 2, i32 noundef 0) #13
  br label %475

475:                                              ; preds = %471, %467
  %476 = load ptr, ptr %75, align 4
  %477 = call i32 %476(ptr noundef %0, i32 noundef 0) #13
  %478 = load i32, ptr %49, align 4
  %479 = load ptr, ptr %128, align 4
  %480 = lshr i32 %478, 6
  %481 = and i32 %480, 64
  call void %479(ptr noundef %0, i32 noundef 1, i32 noundef %481) #13
  br label %482

482:                                              ; preds = %475, %435
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %48) #13
  %483 = load i32, ptr %49, align 4
  %484 = icmp eq i32 %483, %444
  br i1 %484, label %488, label %485

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %487 = load ptr, ptr %486, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %487, ptr noundef nonnull @.str.41, i32 noundef %444, i32 noundef %483) #15
  br label %488

488:                                              ; preds = %485, %482, %126, %73, %43, %32
  %489 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, 1
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %497, label %493

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 18
  %495 = load ptr, ptr %494, align 4
  %496 = call i32 %495(ptr noundef %0, ptr noundef %489) #13
  br label %497

497:                                              ; preds = %493, %488
  %498 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %499 = load i32, ptr %498, align 4
  switch i32 %499, label %507 [
    i32 4, label %500
    i32 20, label %503
  ]

500:                                              ; preds = %497
  %501 = load i8, ptr %9, align 2
  %502 = icmp eq i8 %501, 4
  br i1 %502, label %503, label %507

503:                                              ; preds = %500, %497
  %504 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %505 = load i16, ptr %504, align 4
  %506 = or i16 %505, 4
  store i16 %506, ptr %504, align 4
  br label %507

507:                                              ; preds = %503, %500, %497
  %508 = icmp eq i32 %499, 0
  %509 = and i32 %1, 2
  %510 = icmp eq i32 %509, 0
  %511 = or i1 %510, %508
  br i1 %511, label %638, label %512

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %514 = load i32, ptr %513, align 4
  %515 = and i32 %514, 2
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %512
  %518 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %519 = load i32, ptr %518, align 4
  %520 = and i32 %519, 4064
  %521 = or i32 %520, -18874337
  %522 = inttoptr i32 %521 to ptr
  %523 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %522) #13, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %522, i8 -128) #13, !srcloc !18
  %524 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %522) #13, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  br label %525

525:                                              ; preds = %517, %512
  %526 = phi i8 [ %523, %517 ], [ 0, %512 ]
  %527 = phi ptr [ %522, %517 ], [ inttoptr (i32 -18874368 to ptr), %512 ]
  %528 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %529 = load ptr, ptr %528, align 4
  %530 = icmp eq ptr %529, null
  br i1 %530, label %539, label %531

531:                                              ; preds = %525
  %532 = getelementptr inbounds %struct.console, ptr %529, i32 0, i32 9
  %533 = load i16, ptr %532, align 2
  %534 = sext i16 %533 to i32
  %535 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %536 = load i32, ptr %535, align 4
  %537 = icmp eq i32 %536, %534
  br i1 %537, label %538, label %539

538:                                              ; preds = %531
  call void @console_lock() #13
  br label %539

539:                                              ; preds = %538, %531, %525
  %540 = call i32 @probe_irq_on() #13
  %541 = call i32 @probe_irq_off(i32 noundef %540) #13
  %542 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %543 = load ptr, ptr %542, align 4
  %544 = call i32 %543(ptr noundef %0, i32 noundef 4) #13
  %545 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %546 = load ptr, ptr %545, align 4
  %547 = icmp eq ptr %546, null
  br i1 %547, label %560, label %548

548:                                              ; preds = %539
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %549 = call i32 @mctrl_gpio_get_outputs(ptr noundef nonnull %546, ptr noundef nonnull %3) #13
  %550 = lshr i32 %549, 1
  %551 = and i32 %550, 3
  %552 = lshr i32 %549, 11
  %553 = and i32 %552, 4
  %554 = and i32 %552, 8
  %555 = and i32 %552, 16
  %556 = or i32 %553, %544
  %557 = or i32 %556, %551
  %558 = or i32 %557, %554
  %559 = or i32 %558, %555
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %560

560:                                              ; preds = %548, %539
  %561 = phi i32 [ %559, %548 ], [ %544, %539 ]
  %562 = load ptr, ptr %542, align 4
  %563 = call i32 %562(ptr noundef %0, i32 noundef 1) #13
  %564 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %565 = load ptr, ptr %564, align 4
  call void %565(ptr noundef %0, i32 noundef 4, i32 noundef 12) #13
  %566 = load ptr, ptr %545, align 4
  %567 = icmp eq ptr %566, null
  br i1 %567, label %569, label %568

568:                                              ; preds = %560
  call void @mctrl_gpio_set(ptr noundef nonnull %566, i32 noundef 24576) #13
  br label %569

569:                                              ; preds = %568, %560
  %570 = call i32 @probe_irq_on() #13
  %571 = load ptr, ptr %564, align 4
  call void %571(ptr noundef %0, i32 noundef 4, i32 noundef 0) #13
  %572 = load ptr, ptr %545, align 4
  %573 = icmp eq ptr %572, null
  br i1 %573, label %575, label %574

574:                                              ; preds = %569
  call void @mctrl_gpio_set(ptr noundef nonnull %572, i32 noundef 0) #13
  br label %575

575:                                              ; preds = %574, %569
  %576 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %576(i32 noundef 2147480) #13
  %577 = load i32, ptr %513, align 4
  %578 = and i32 %577, 2
  %579 = icmp eq i32 %578, 0
  %580 = load ptr, ptr %564, align 4
  br i1 %579, label %585, label %581

581:                                              ; preds = %575
  call void %580(ptr noundef %0, i32 noundef 4, i32 noundef 3) #13
  %582 = load ptr, ptr %545, align 4
  %583 = icmp eq ptr %582, null
  br i1 %583, label %589, label %584

584:                                              ; preds = %581
  call void @mctrl_gpio_set(ptr noundef nonnull %582, i32 noundef 6) #13
  br label %589

585:                                              ; preds = %575
  call void %580(ptr noundef %0, i32 noundef 4, i32 noundef 11) #13
  %586 = load ptr, ptr %545, align 4
  %587 = icmp eq ptr %586, null
  br i1 %587, label %589, label %588

588:                                              ; preds = %585
  call void @mctrl_gpio_set(ptr noundef nonnull %586, i32 noundef 16390) #13
  br label %589

589:                                              ; preds = %588, %585, %584, %581
  %590 = load ptr, ptr %564, align 4
  call void %590(ptr noundef %0, i32 noundef 1, i32 noundef 15) #13
  %591 = load ptr, ptr %542, align 4
  %592 = call i32 %591(ptr noundef %0, i32 noundef 5) #13
  %593 = load ptr, ptr %542, align 4
  %594 = call i32 %593(ptr noundef %0, i32 noundef 0) #13
  %595 = load ptr, ptr %542, align 4
  %596 = call i32 %595(ptr noundef %0, i32 noundef 2) #13
  %597 = load ptr, ptr %542, align 4
  %598 = call i32 %597(ptr noundef %0, i32 noundef 6) #13
  %599 = load ptr, ptr %564, align 4
  call void %599(ptr noundef %0, i32 noundef 0, i32 noundef 255) #13
  %600 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %600(i32 noundef 4294960) #13
  %601 = call i32 @probe_irq_off(i32 noundef %570) #13
  %602 = and i32 %561, 255
  %603 = load ptr, ptr %564, align 4
  call void %603(ptr noundef %0, i32 noundef 4, i32 noundef %602) #13
  %604 = load ptr, ptr %545, align 4
  %605 = icmp eq ptr %604, null
  br i1 %605, label %616, label %606

606:                                              ; preds = %589
  %607 = shl nuw nsw i32 %602, 1
  %608 = and i32 %607, 6
  %609 = shl nuw nsw i32 %602, 11
  %610 = and i32 %609, 8192
  %611 = or i32 %608, %610
  %612 = and i32 %609, 16384
  %613 = or i32 %611, %612
  %614 = and i32 %609, 32768
  %615 = or i32 %613, %614
  call void @mctrl_gpio_set(ptr noundef nonnull %604, i32 noundef %615) #13
  br label %616

616:                                              ; preds = %606, %589
  %617 = and i32 %563, 255
  %618 = load ptr, ptr %564, align 4
  call void %618(ptr noundef %0, i32 noundef 1, i32 noundef %617) #13
  %619 = load i32, ptr %513, align 4
  %620 = and i32 %619, 2
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %623, label %622

622:                                              ; preds = %616
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %527, i8 %526) #13, !srcloc !18
  br label %623

623:                                              ; preds = %622, %616
  %624 = load ptr, ptr %528, align 4
  %625 = icmp eq ptr %624, null
  br i1 %625, label %634, label %626

626:                                              ; preds = %623
  %627 = getelementptr inbounds %struct.console, ptr %624, i32 0, i32 9
  %628 = load i16, ptr %627, align 2
  %629 = sext i16 %628 to i32
  %630 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %631 = load i32, ptr %630, align 4
  %632 = icmp eq i32 %631, %629
  br i1 %632, label %633, label %634

633:                                              ; preds = %626
  call void @console_unlock() #13
  br label %634

634:                                              ; preds = %633, %626, %623
  %635 = call i32 @llvm.smax.i32(i32 %601, i32 0) #13
  %636 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  store i32 %635, ptr %636, align 4
  %637 = load i32, ptr %498, align 4
  br label %638

638:                                              ; preds = %634, %507
  %639 = phi i32 [ %637, %634 ], [ %499, %507 ]
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %673

641:                                              ; preds = %638
  %642 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %643 = load i32, ptr %642, align 4
  %644 = icmp eq i32 %643, 0
  %645 = load i8, ptr %9, align 2
  br i1 %644, label %646, label %653

646:                                              ; preds = %641
  %647 = icmp eq i8 %645, 4
  br i1 %647, label %655, label %648

648:                                              ; preds = %646
  %649 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %650 = load i8, ptr %649, align 1
  %651 = zext i8 %650 to i32
  %652 = shl i32 8, %651
  br label %653

653:                                              ; preds = %648, %641
  %654 = phi i32 [ %652, %648 ], [ %643, %641 ]
  switch i8 %645, label %673 [
    i8 4, label %655
    i8 5, label %655
    i8 3, label %655
    i8 6, label %655
    i8 7, label %655
    i8 2, label %655
    i8 1, label %670
    i8 0, label %670
  ]

655:                                              ; preds = %653, %653, %653, %653, %653, %653, %646
  %656 = phi i32 [ %654, %653 ], [ %654, %653 ], [ %654, %653 ], [ %654, %653 ], [ %654, %653 ], [ %654, %653 ], [ 4096, %646 ]
  %657 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %658 = load i32, ptr %657, align 4
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %673, label %660

660:                                              ; preds = %655
  %661 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %662 = load i32, ptr %661, align 4
  %663 = icmp sgt i32 %662, -1
  br i1 %663, label %668, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %666 = load ptr, ptr %665, align 4
  call void @iounmap(ptr noundef %666) #13
  store ptr null, ptr %665, align 4
  %667 = load i32, ptr %657, align 4
  br label %668

668:                                              ; preds = %664, %660
  %669 = phi i32 [ %667, %664 ], [ %658, %660 ]
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %669, i32 noundef %656) #13
  br label %673

670:                                              ; preds = %653, %653
  %671 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %672 = load i32, ptr %671, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %672, i32 noundef %654) #13
  br label %673

673:                                              ; preds = %670, %668, %655, %653, %638
  %674 = load i32, ptr %498, align 4
  %675 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %674, i32 4
  %676 = load i8, ptr %675, align 1
  %677 = icmp eq i8 %676, 0
  br i1 %677, label %680, label %678

678:                                              ; preds = %673
  %679 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 54
  store ptr @serial8250_dev_attr_group, ptr %679, align 4
  br label %680

680:                                              ; preds = %678, %673
  %681 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %674, i32 3
  %682 = load i8, ptr %681, align 4
  %683 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  store i8 %682, ptr %683, align 1
  br label %684

684:                                              ; preds = %680, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @serial8250_verify_port(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @nr_irqs, align 4
  %6 = icmp sge i32 %4, %5
  %7 = icmp slt i32 %4, 0
  %8 = or i1 %7, %6
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 9600
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 4
  %15 = icmp ugt i32 %14, 121
  %16 = icmp eq i32 %14, 5
  %17 = or i1 %15, %16
  %18 = icmp eq i32 %14, 9
  %19 = or i1 %18, %17
  %20 = select i1 %19, i32 -22, i32 0
  br label %21

21:                                               ; preds = %13, %9, %2
  %22 = phi i32 [ -22, %9 ], [ -22, %2 ], [ %20, %13 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @serial8250_request_std_resource(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 2
  br i1 %4, label %7, label %19

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 29
  %13 = select i1 %12, i32 256, i32 4096
  br label %21

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 8, %17
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i32 [ %18, %14 ], [ %3, %1 ]
  switch i8 %6, label %46 [
    i8 4, label %21
    i8 5, label %21
    i8 3, label %21
    i8 6, label %21
    i8 7, label %21
    i8 2, label %21
    i8 1, label %40
    i8 0, label %40
  ]

21:                                               ; preds = %19, %19, %19, %19, %19, %19, %9
  %22 = phi i32 [ %13, %9 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %22, ptr noundef nonnull @.str.40, i32 noundef 0) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %23, align 4
  %35 = tail call ptr @ioremap(i32 noundef %34, i32 noundef %22) #13
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, ptr %23, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %39, i32 noundef %22) #13
  br label %46

40:                                               ; preds = %19, %19
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %42, i32 noundef %20, ptr noundef nonnull @.str.40, i32 noundef 0) #13
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i32 -16, i32 0
  br label %46

46:                                               ; preds = %40, %38, %33, %29, %26, %21, %19
  %47 = phi i32 [ 0, %19 ], [ 0, %33 ], [ -12, %38 ], [ 0, %29 ], [ 0, %21 ], [ -16, %26 ], [ %45, %40 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @size_fifo(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 3) #13
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef 3, i32 noundef 0) #13
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 %8(ptr noundef %0, i32 noundef 2) #13
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 4) #13
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %16 = call i32 @mctrl_gpio_get_outputs(ptr noundef nonnull %13, ptr noundef nonnull %2) #13
  %17 = lshr i32 %16, 1
  %18 = and i32 %17, 3
  %19 = lshr i32 %16, 11
  %20 = and i32 %19, 4
  %21 = and i32 %19, 8
  %22 = and i32 %19, 16
  %23 = or i32 %20, %11
  %24 = or i32 %23, %18
  %25 = or i32 %24, %21
  %26 = or i32 %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %27

27:                                               ; preds = %15, %1
  %28 = phi i32 [ %26, %15 ], [ %11, %1 ]
  %29 = load ptr, ptr %6, align 4
  call void %29(ptr noundef %0, i32 noundef 2, i32 noundef 7) #13
  %30 = load ptr, ptr %6, align 4
  call void %30(ptr noundef %0, i32 noundef 4, i32 noundef 16) #13
  %31 = load ptr, ptr %12, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  call void @mctrl_gpio_set(ptr noundef nonnull %31, i32 noundef 32768) #13
  br label %34

34:                                               ; preds = %33, %27
  %35 = load ptr, ptr %6, align 4
  call void %35(ptr noundef %0, i32 noundef 3, i32 noundef 128) #13
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0) #13
  %39 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %40 = load ptr, ptr %39, align 4
  call void %40(ptr noundef %0, i32 noundef 1) #13
  %41 = load ptr, ptr %6, align 4
  call void %41(ptr noundef %0, i32 noundef 3, i32 noundef 3) #13
  br label %42

42:                                               ; preds = %42, %34
  %43 = phi i32 [ 0, %34 ], [ %45, %42 ]
  %44 = load ptr, ptr %6, align 4
  call void %44(ptr noundef %0, i32 noundef 0, i32 noundef %43) #13
  %45 = add nuw nsw i32 %43, 1
  %46 = icmp eq i32 %45, 256
  br i1 %46, label %47, label %42

47:                                               ; preds = %42
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #13
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #13
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #13
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #13
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #13
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #13
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #13
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #13
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748000) #13
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #13
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #13
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #13
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #13
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #13
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #13
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #13
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #13
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #13
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #13
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #13
  %68 = load ptr, ptr %3, align 4
  %69 = call i32 %68(ptr noundef %0, i32 noundef 5) #13
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %72, %47
  %73 = phi i32 [ %76, %72 ], [ 0, %47 ]
  %74 = load ptr, ptr %3, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 0) #13
  %76 = add nuw nsw i32 %73, 1
  %77 = load ptr, ptr %3, align 4
  %78 = call i32 %77(ptr noundef %0, i32 noundef 5) #13
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  %81 = icmp ult i32 %73, 255
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %72, label %83

83:                                               ; preds = %72, %47
  %84 = phi i32 [ 0, %47 ], [ %76, %72 ]
  %85 = and i32 %9, 255
  %86 = load ptr, ptr %6, align 4
  call void %86(ptr noundef %0, i32 noundef 2, i32 noundef %85) #13
  %87 = and i32 %28, 255
  %88 = load ptr, ptr %6, align 4
  call void %88(ptr noundef %0, i32 noundef 4, i32 noundef %87) #13
  %89 = load ptr, ptr %12, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %83
  %92 = shl nuw nsw i32 %87, 1
  %93 = and i32 %92, 6
  %94 = shl nuw nsw i32 %87, 11
  %95 = and i32 %94, 8192
  %96 = or i32 %93, %95
  %97 = and i32 %94, 16384
  %98 = or i32 %96, %97
  %99 = and i32 %94, 32768
  %100 = or i32 %98, %99
  call void @mctrl_gpio_set(ptr noundef nonnull %89, i32 noundef %100) #13
  br label %101

101:                                              ; preds = %91, %83
  %102 = load ptr, ptr %6, align 4
  call void %102(ptr noundef %0, i32 noundef 3, i32 noundef 128) #13
  %103 = and i32 %38, 65535
  %104 = load ptr, ptr %39, align 4
  call void %104(ptr noundef %0, i32 noundef %103) #13
  %105 = and i32 %5, 255
  %106 = load ptr, ptr %6, align 4
  call void %106(ptr noundef %0, i32 noundef 3, i32 noundef %105) #13
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_trig_bytes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_8250_port, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 38
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uart_8250_port, ptr %8, i32 0, i32 8
  %21 = load i8, ptr %20, align 1
  %22 = lshr i8 %21, 6
  %23 = zext i8 %22 to i32
  %24 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %19, i32 4, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17, %13, %3
  %28 = phi i32 [ -22, %3 ], [ -22, %13 ], [ -95, %17 ]
  tail call void @mutex_unlock(ptr noundef %6) #13
  br label %32

29:                                               ; preds = %17
  %30 = zext i8 %25 to i32
  tail call void @mutex_unlock(ptr noundef %6) #13
  %31 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %30) #13
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_trig_bytes_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !29
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr %5, align 1
  %14 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 13
  call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 23
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uart_8250_port, ptr %16, i32 0, i32 5
  %27 = load i8, ptr %26, align 2, !range !16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 38
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %31, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %29
  %36 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %31, i32 4, i32 1
  %37 = load i8, ptr %36, align 2
  %38 = icmp ugt i8 %37, %13
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %31, i32 4, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = icmp ugt i8 %41, %13
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr [122 x %struct.serial8250_config], ptr @uart_config, i32 0, i32 %31, i32 4, i32 3
  %45 = load i8, ptr %44, align 4
  %46 = icmp ugt i8 %45, %13
  %47 = select i1 %46, i8 -128, i8 -64
  br label %48

48:                                               ; preds = %43, %39, %35
  %49 = phi i8 [ %47, %43 ], [ 64, %39 ], [ 0, %35 ]
  %50 = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %16, i32 noundef 2, i32 noundef 1) #13
  %52 = load ptr, ptr %50, align 4
  call void %52(ptr noundef %16, i32 noundef 2, i32 noundef 7) #13
  %53 = load ptr, ptr %50, align 4
  call void %53(ptr noundef %16, i32 noundef 2, i32 noundef 0) #13
  %54 = getelementptr inbounds %struct.uart_8250_port, ptr %16, i32 0, i32 8
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 63
  %57 = or i8 %56, %49
  store i8 %57, ptr %54, align 1
  %58 = zext i8 %57 to i32
  %59 = load ptr, ptr %50, align 4
  call void %59(ptr noundef %16, i32 noundef 2, i32 noundef %58) #13
  br label %60

60:                                               ; preds = %48, %29, %25, %21, %12
  %61 = phi i32 [ %3, %48 ], [ -95, %29 ], [ -22, %12 ], [ -22, %21 ], [ -22, %25 ]
  call void @mutex_unlock(ptr noundef %14) #13
  br label %62

62:                                               ; preds = %60, %9, %4
  %63 = phi i32 [ -22, %4 ], [ %10, %9 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!8 = !{i64 2153346267}
!9 = !{i64 629499, i64 2148119470, i64 2148119496, i64 2148119543, i64 2148119565, i64 2148119593, i64 2148119613}
!10 = !{i64 638149, i64 638166, i64 638190, i64 638216, i64 638234}
!11 = !{i64 2153346584}
!12 = !{i64 2153348828}
!13 = !{i64 2153349145}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
!17 = !{i64 2152326780}
!18 = !{i64 4791161}
!19 = !{i64 4791556}
!20 = !{i64 2152325232}
!21 = !{i64 2153393234}
!22 = !{i64 2149014024}
!23 = !{i64 2149009848}
!24 = !{i64 2149009923, i64 2149009950, i64 2149009997, i64 2149010019, i64 2149010047, i64 2149010067}
!25 = !{i64 535422}
!26 = !{i64 2149038168}
!27 = !{i64 535177, i64 535238}
!28 = !{i64 538194}
!29 = !{!"auto-init"}
!30 = !{i64 2153330302}
!31 = !{i64 2153330680}
!32 = !{i64 2153330878}
!33 = !{i64 2153331185}
!34 = !{i64 2153331516}
!35 = !{i64 2153331705}
!36 = !{i64 4790938}
!37 = !{i64 2153332428}
!38 = !{i64 2153331953}
!39 = !{i64 4790738}
!40 = !{i64 4791776}
!41 = !{i64 2153333092}
!42 = !{i64 2153332617}
!43 = !{i64 4791358}
!44 = !{i64 2153333822}
!45 = !{i64 2153333308}
!46 = !{i64 2153334090}
!47 = !{i64 2153334282}
