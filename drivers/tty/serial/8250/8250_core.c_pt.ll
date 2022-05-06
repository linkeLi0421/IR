; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_core.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_set_isa_configurator:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_set_isa_configurator\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_set_isa_configurator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_suspend_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_suspend_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_suspend_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_resume_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_resume_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_resume_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_register_8250_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_register_8250_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_register_8250_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_8250_ops = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_info = type { %struct.hlist_node, i32, %struct.spinlock, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.1 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.plat_serial8250_port = type { i32, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@serial8250_ports = internal global [5 x %struct.uart_8250_port] zeroinitializer, align 4
@__kstrtab_serial8250_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_get_port to i32), ptr @__kstrtab_serial8250_get_port, ptr @__kstrtabns_serial8250_get_port }, section "___ksymtab_gpl+serial8250_get_port", align 4
@serial8250_isa_config = internal unnamed_addr global ptr null, align 4
@__kstrtab_serial8250_set_isa_configurator = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_set_isa_configurator = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_set_isa_configurator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_set_isa_configurator to i32), ptr @__kstrtab_serial8250_set_isa_configurator, ptr @__kstrtabns_serial8250_set_isa_configurator }, section "___ksymtab+serial8250_set_isa_configurator", align 4
@__initcall__kmod_8250__227_682_univ8250_console_initcon = internal global ptr @univ8250_console_init, section ".con_initcall.init", align 4
@nr_uarts = internal global i32 5, align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@serial8250_reg = internal global %struct.uart_driver { ptr null, ptr @.str.1, ptr @.str.2, i32 4, i32 64, i32 0, ptr @univ8250_console, ptr null, ptr null }, align 4
@__kstrtab_serial8250_suspend_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_suspend_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_suspend_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_suspend_port to i32), ptr @__kstrtab_serial8250_suspend_port, ptr @__kstrtabns_serial8250_suspend_port }, section "___ksymtab+serial8250_suspend_port", align 4
@__kstrtab_serial8250_resume_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_resume_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_resume_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_resume_port to i32), ptr @__kstrtab_serial8250_resume_port, ptr @__kstrtabns_serial8250_resume_port }, section "___ksymtab+serial8250_resume_port", align 4
@serial_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @serial_mutex, i64 12), ptr getelementptr (i8, ptr @serial_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [45 x i8] c"skipping CIR port at 0x%lx / 0x%llx, IRQ %d\0A\00", align 1
@__kstrtab_serial8250_register_8250_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_register_8250_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_register_8250_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_register_8250_port to i32), ptr @__kstrtab_serial8250_register_8250_port, ptr @__kstrtabns_serial8250_register_8250_port }, section "___ksymtab+serial8250_register_8250_port", align 4
@serial8250_isa_devs = internal unnamed_addr global ptr null, align 4
@__kstrtab_serial8250_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_unregister_port to i32), ptr @__kstrtab_serial8250_unregister_port, ptr @__kstrtabns_serial8250_unregister_port }, section "___ksymtab+serial8250_unregister_port", align 4
@serial8250_isa_driver = internal global %struct.platform_driver { ptr @serial8250_probe, ptr @serial8250_remove, ptr null, ptr @serial8250_suspend, ptr @serial8250_resume, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_8250__228_1236_serial8250_init6 = internal global ptr @serial8250_init, section ".initcall6.init", align 4
@__exitcall_serial8250_exit = internal global ptr @serial8250_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"8250.file=drivers/tty/serial/8250/8250\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [17 x i8] c"8250.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [50 x i8] c"8250.description=Generic 8250/16x50 serial driver\00", section ".modinfo", align 1
@__param_str_share_irqs = internal constant [16 x i8] c"8250.share_irqs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@share_irqs = internal global i32 1, align 4
@__param_share_irqs = internal constant %struct.kernel_param { ptr @__param_str_share_irqs, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 2, %union.anon.64 { ptr @share_irqs } }, section "__param", align 4
@__UNIQUE_ID_share_irqstype232 = internal constant [30 x i8] c"8250.parmtype=share_irqs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_share_irqs233 = internal constant [75 x i8] c"8250.parm=share_irqs:Share IRQs with other non-8250/16x50 devices (unsafe)\00", section ".modinfo", align 1
@__param_str_nr_uarts = internal constant [14 x i8] c"8250.nr_uarts\00", align 1
@__param_nr_uarts = internal constant %struct.kernel_param { ptr @__param_str_nr_uarts, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @nr_uarts } }, section "__param", align 4
@__UNIQUE_ID_nr_uartstype234 = internal constant [28 x i8] c"8250.parmtype=nr_uarts:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_uarts235 = internal constant [60 x i8] c"8250.parm=nr_uarts:Maximum number of UARTs supported. (1-5)\00", section ".modinfo", align 1
@__param_str_skip_txen_test = internal constant [20 x i8] c"8250.skip_txen_test\00", align 1
@skip_txen_test = internal global i32 0, align 4
@__param_skip_txen_test = internal constant %struct.kernel_param { ptr @__param_str_skip_txen_test, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @skip_txen_test } }, section "__param", align 4
@__UNIQUE_ID_skip_txen_testtype236 = internal constant [34 x i8] c"8250.parmtype=skip_txen_test:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_skip_txen_test237 = internal constant [69 x i8] c"8250.parm=skip_txen_test:Skip checking for the TXEN bug at init time\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [26 x i8] c"8250.alias=char-major-4-*\00", section ".modinfo", align 1
@s8250_options.__param_str_share_irqs = internal constant [21 x i8] c"8250_core.share_irqs\00", align 1
@s8250_options.__param_share_irqs = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_share_irqs, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @share_irqs } }, section "__param", align 4
@s8250_options.__param_str_nr_uarts = internal constant [19 x i8] c"8250_core.nr_uarts\00", align 1
@s8250_options.__param_nr_uarts = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_nr_uarts, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @nr_uarts } }, section "__param", align 4
@s8250_options.__param_str_skip_txen_test = internal constant [25 x i8] c"8250_core.skip_txen_test\00", align 1
@s8250_options.__param_skip_txen_test = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_skip_txen_test, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @skip_txen_test } }, section "__param", align 4
@univ8250_console = internal global %struct.console { [16 x i8] c"ttyS\00\00\00\00\00\00\00\00\00\00\00\00", ptr @univ8250_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @univ8250_console_setup, ptr @univ8250_console_exit, ptr @univ8250_console_match, i16 17, i16 -1, i32 0, i32 0, i32 0, ptr @serial8250_reg, ptr null }, align 4
@__const.univ8250_console_match.match = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@serial8250_isa_init_ports.first = internal unnamed_addr global i1 false, align 4
@base_ops = internal unnamed_addr global ptr null, align 4
@univ8250_port_ops = internal global %struct.uart_ops zeroinitializer, align 4
@univ8250_driver_ops = internal constant %struct.uart_8250_ops { ptr @univ8250_setup_irq, ptr @univ8250_release_irq }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@hash_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hash_mutex, i64 12), ptr getelementptr (i8, ptr @hash_mutex, i64 12) } }, align 4
@irq_lists = internal global [32 x %struct.hlist_head] zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"serial8250\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"unable to register port at index %d (IO%lx MEM%llx IRQ%d): %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\016Serial: 8250/16550 driver, %d ports, IRQ sharing %sabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_nr_uarts235, ptr @__UNIQUE_ID_nr_uartstype234, ptr @__UNIQUE_ID_share_irqs233, ptr @__UNIQUE_ID_share_irqstype232, ptr @__UNIQUE_ID_skip_txen_test237, ptr @__UNIQUE_ID_skip_txen_testtype236, ptr @__exitcall_serial8250_exit, ptr @__initcall__kmod_8250__227_682_univ8250_console_initcon, ptr @__initcall__kmod_8250__228_1236_serial8250_init6, ptr @__ksymtab_serial8250_get_port, ptr @__ksymtab_serial8250_register_8250_port, ptr @__ksymtab_serial8250_resume_port, ptr @__ksymtab_serial8250_set_isa_configurator, ptr @__ksymtab_serial8250_suspend_port, ptr @__ksymtab_serial8250_unregister_port, ptr @__param_nr_uarts, ptr @__param_share_irqs, ptr @__param_skip_txen_test, ptr @s8250_options, ptr @s8250_options.__param_nr_uarts, ptr @s8250_options.__param_share_irqs, ptr @s8250_options.__param_skip_txen_test, ptr @serial8250_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @serial8250_get_port(i32 noundef %0) #0 {
  %2 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @serial8250_set_isa_configurator(ptr noundef %0) #1 {
  store ptr %0, ptr @serial8250_isa_config, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @univ8250_console_init() #2 section ".init.text" {
  %1 = load i32, ptr @nr_uarts, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @serial8250_isa_init_ports() #11
  tail call void @register_console(ptr noundef nonnull @univ8250_console) #12
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 0, %3 ], [ -19, %0 ]
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_serial_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #2 section ".init.text" {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 4
  %5 = load i32, ptr @nr_uarts, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %69, label %8

8:                                                ; preds = %1
  tail call fastcc void @serial8250_isa_init_ports() #11
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %9
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 20
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 21
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 21
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 22
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 23
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 25
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %33 = load i8, ptr %32, align 2
  %34 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 26
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 33
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 43
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 44
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 59
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 38
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %2, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 41
  store i32 %50, ptr %51, align 4
  tail call void @serial8250_set_defaults(ptr noundef %10) #12
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %8
  %56 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 3
  store ptr %53, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %8
  %58 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 4
  store ptr %59, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 15
  store ptr %65, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %63, %1
  %70 = phi i32 [ -19, %1 ], [ 0, %67 ], [ 0, %63 ]
  ret i32 %70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @serial8250_isa_init_ports() unnamed_addr #2 section ".init.text" {
  %1 = load i1, ptr @serial8250_isa_init_ports.first, align 4
  br i1 %1, label %27, label %2

2:                                                ; preds = %0
  store i1 true, ptr @serial8250_isa_init_ports.first, align 4
  %3 = load i32, ptr @nr_uarts, align 4
  %4 = icmp ugt i32 %3, 5
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 5, ptr @nr_uarts, align 4
  br label %8

6:                                                ; preds = %2
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %6, %5
  br label %9

9:                                                ; preds = %18, %8
  %10 = phi i32 [ %22, %18 ], [ 0, %8 ]
  %11 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %10
  %12 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 41
  store i32 %10, ptr %12, align 4
  tail call void @serial8250_init_port(ptr noundef %11) #12
  %13 = load ptr, ptr @base_ops, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 39
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr @base_ops, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 39
  store ptr @univ8250_port_ops, ptr %19, align 4
  %20 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %10, i32 1
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @serial8250_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %21 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %10, i32 20
  store ptr @univ8250_driver_ops, ptr %21, align 4
  tail call void @serial8250_set_defaults(ptr noundef %11) #12
  %22 = add nuw i32 %10, 1
  %23 = load i32, ptr @nr_uarts, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %9, label %25

25:                                               ; preds = %18, %6
  %26 = load ptr, ptr @base_ops, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) @univ8250_port_ops, ptr noundef align 4 dereferenceable(92) %26, i32 92, i1 false)
  br label %27

27:                                               ; preds = %25, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_set_defaults(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_suspend_port(i32 noundef %0) #5 {
  %2 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0
  %3 = load i8, ptr @console_suspend_enabled, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %11 = load i16, ptr %10, align 2
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %2, i32 noundef 7, i32 noundef 165) #12
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %2, i32 noundef 7) #12
  %26 = icmp eq i32 %25, 165
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0, i32 14
  store i8 -91, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %20, %16, %9, %5, %1
  %30 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_resume_port(i32 noundef %0) #5 {
  %2 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0
  %3 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0, i32 14
  store i8 0, ptr %3, align 4
  %4 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %2, i32 noundef 3, i32 noundef 224) #12
  %11 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %2, i32 noundef 4) #12
  %14 = and i32 %13, 48
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = and i32 %13, 79
  %18 = or i32 %17, 16
  %19 = load ptr, ptr %9, align 4
  tail call void %19(ptr noundef %2, i32 noundef 4, i32 noundef %18) #12
  br label %20

20:                                               ; preds = %16, %8
  %21 = load ptr, ptr %9, align 4
  tail call void %21(ptr noundef %2, i32 noundef 3, i32 noundef 0) #12
  %22 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 14745600, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = tail call i32 @uart_resume_port(ptr noundef nonnull @serial8250_reg, ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_register_8250_port(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %289, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @serial_mutex) #12
  %6 = load i32, ptr @nr_uarts, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %287, label %12

8:                                                ; preds = %12
  %9 = add nuw i32 %13, 1
  %10 = load i32, ptr @nr_uarts, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %5
  %13 = phi i32 [ %9, %8 ], [ 0, %5 ]
  %14 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %13
  %15 = tail call zeroext i1 @uart_match_port(ptr noundef %14, ptr noundef %0) #12
  br i1 %15, label %54, label %8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %10
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %18
  %22 = getelementptr inbounds %struct.uart_port, ptr %21, i32 0, i32 38
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.uart_port, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %31

29:                                               ; preds = %16
  %30 = icmp eq i32 %10, 0
  br i1 %30, label %287, label %31

31:                                               ; preds = %29, %25, %20
  br label %32

32:                                               ; preds = %42, %31
  %33 = phi i32 [ %43, %42 ], [ 0, %31 ]
  %34 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %33
  %35 = getelementptr inbounds %struct.uart_port, ptr %34, i32 0, i32 38
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.uart_port, ptr %34, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %38, %32
  %43 = add nuw i32 %33, 1
  %44 = icmp eq i32 %43, %10
  br i1 %44, label %48, label %32

45:                                               ; preds = %48
  %46 = add nuw i32 %49, 1
  %47 = icmp eq i32 %46, %10
  br i1 %47, label %287, label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %46, %45 ], [ 0, %42 ]
  %50 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %49
  %51 = getelementptr inbounds %struct.uart_port, ptr %50, i32 0, i32 38
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %45

54:                                               ; preds = %48, %38, %25, %12
  %55 = phi ptr [ %21, %25 ], [ %50, %48 ], [ %34, %38 ], [ %14, %12 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %287, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 38
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 23
  br i1 %60, label %287, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 45
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef nonnull %55) #12
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 1
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 2
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 20
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 21
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 21
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %2, align 4
  %81 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 22
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 23
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 25
  store i8 %86, ptr %87, align 1
  %88 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %89 = load i8, ptr %88, align 2
  %90 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 26
  store i8 %89, ptr %90, align 2
  %91 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 268435456
  %94 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 33
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %96 = load i16, ptr %95, align 4
  %97 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 4
  store i16 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 43
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 44
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 59
  store ptr %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 6
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 3
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 13
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 13
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 14
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 14
  store ptr %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 18
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 18
  store ptr %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 56
  %123 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %122, ptr noundef align 4 dereferenceable(32) %123, i32 32, i1 false)
  %124 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 24
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 24
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 25
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 25
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 19
  store ptr %131, ptr %132, align 4
  %133 = icmp ne i32 %83, 0
  %134 = icmp eq i32 %108, 0
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %137

136:                                              ; preds = %67
  store i32 %83, ptr %109, align 4
  br label %137

137:                                              ; preds = %136, %67
  %138 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  store ptr %139, ptr %62, align 4
  %142 = tail call i32 @uart_get_rs485_mode(ptr noundef nonnull %55) #12
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %285

144:                                              ; preds = %141, %137
  %145 = load i32, ptr %91, align 4
  %146 = and i32 %145, 134217728
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %150 = load i32, ptr %149, align 4
  store i32 %150, ptr %58, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = tail call ptr @mctrl_gpio_init(ptr noundef nonnull %55, i32 noundef 0) #12
  %153 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = ptrtoint ptr %152 to i32
  br label %285

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 16
  store ptr %152, ptr %157, align 4
  tail call void @serial8250_set_defaults(ptr noundef nonnull %55) #12
  %158 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 3
  store ptr %159, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %156
  %164 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 4
  store ptr %165, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 15
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 15
  store ptr %171, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %169
  %176 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 5
  store ptr %177, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %175
  %182 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 6
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 6
  store ptr %183, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 7
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 7
  store ptr %189, ptr %192, align 4
  br label %193

193:                                              ; preds = %191, %187
  %194 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 8
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 8
  store ptr %195, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %193
  %200 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 9
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 9
  store ptr %201, ptr %204, align 4
  br label %205

205:                                              ; preds = %203, %199
  %206 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 10
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 10
  store ptr %207, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %205
  %212 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 11
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 11
  store ptr %213, ptr %216, align 4
  br label %217

217:                                              ; preds = %215, %211
  %218 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 12
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 12
  store ptr %219, ptr %222, align 4
  br label %223

223:                                              ; preds = %221, %217
  %224 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 16
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 16
  store ptr %225, ptr %228, align 4
  br label %229

229:                                              ; preds = %227, %223
  %230 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 17
  store ptr %231, ptr %234, align 4
  br label %235

235:                                              ; preds = %233, %229
  %236 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 21
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 21
  store ptr %237, ptr %240, align 4
  br label %241

241:                                              ; preds = %239, %235
  %242 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 22
  store ptr %243, ptr %246, align 4
  br label %247

247:                                              ; preds = %245, %241
  %248 = load i32, ptr %58, align 4
  %249 = icmp eq i32 %248, 23
  br i1 %249, label %266, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr @serial8250_isa_config, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  tail call void %251(i32 noundef 0, ptr noundef nonnull %55, ptr noundef %112) #12
  br label %254

254:                                              ; preds = %253, %250
  %255 = load i32, ptr @skip_txen_test, align 4
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 27
  %259 = load i8, ptr %258, align 1
  %260 = or i8 %259, %257
  store i8 %260, ptr %258, align 1
  %261 = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef nonnull %55) #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %285

263:                                              ; preds = %254
  %264 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 41
  %265 = load i32, ptr %264, align 4
  br label %272

266:                                              ; preds = %247
  %267 = load ptr, ptr %62, align 4
  %268 = load i32, ptr %70, align 4
  %269 = load i32, ptr %100, align 4
  %270 = zext i32 %269 to i64
  %271 = load i32, ptr %76, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %267, ptr noundef nonnull @.str, i32 noundef %268, i64 noundef %270, i32 noundef %271) #13
  br label %272

272:                                              ; preds = %266, %263
  %273 = phi i32 [ %265, %263 ], [ 0, %266 ]
  %274 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 27
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, 0
  %277 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 27
  br i1 %276, label %284, label %278

278:                                              ; preds = %272
  store i32 %275, ptr %277, align 4
  %279 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 26
  store i32 -32, ptr %279, align 4
  %280 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 26, i32 0, i32 1
  store volatile ptr %280, ptr %280, align 4
  %281 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 26, i32 0, i32 1, i32 1
  store ptr %280, ptr %281, align 4
  %282 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 26, i32 0, i32 2
  store ptr @serial_8250_overrun_backoff_work, ptr %282, align 4
  %283 = getelementptr inbounds %struct.uart_8250_port, ptr %55, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %283, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  br label %287

284:                                              ; preds = %272
  store i32 0, ptr %277, align 4
  br label %287

285:                                              ; preds = %254, %154, %141
  %286 = phi i32 [ %261, %254 ], [ %142, %141 ], [ %155, %154 ]
  store ptr null, ptr %62, align 4
  br label %287

287:                                              ; preds = %285, %284, %278, %57, %54, %45, %29, %5
  %288 = phi i32 [ %286, %285 ], [ -28, %57 ], [ -28, %54 ], [ %273, %284 ], [ %273, %278 ], [ -28, %29 ], [ -28, %5 ], [ -28, %45 ]
  tail call void @mutex_unlock(ptr noundef nonnull @serial_mutex) #12
  br label %289

289:                                              ; preds = %287, %1
  %290 = phi i32 [ -22, %1 ], [ %288, %287 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial_8250_overrun_backoff_work(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -412
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr i8, ptr %0, i32 -50
  %5 = load i8, ptr %4, align 2
  %6 = or i8 %5, 5
  store i8 %6, ptr %4, align 2
  %7 = getelementptr i8, ptr %0, i32 -312
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = zext i8 %6 to i32
  %11 = getelementptr i8, ptr %0, i32 -396
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %2, i32 noundef 1, i32 noundef %10) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_unregister_port(i32 noundef %0) #5 {
  %2 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0
  tail call void @mutex_lock(ptr noundef nonnull @serial_mutex) #12
  %3 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  tail call void @serial8250_em485_destroy(ptr noundef %2) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %7) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef %2) #12
  %10 = load ptr, ptr @serial8250_isa_devs, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -268435457
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %18 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %17, ptr %18, align 4
  %19 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %0, i32 3
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr @skip_txen_test, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 27
  %24 = load i8, ptr %23, align 1
  %25 = or i8 %24, %22
  store i8 %25, ptr %23, align 1
  %26 = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef %2) #12
  br label %29

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr null, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %12
  tail call void @mutex_unlock(ptr noundef nonnull @serial_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @serial8250_exit() #2 section ".exit.text" {
  %1 = load ptr, ptr @serial8250_isa_devs, align 4
  store ptr null, ptr @serial8250_isa_devs, align 4
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial8250_isa_driver) #12
  tail call void @platform_device_unregister(ptr noundef %1) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @serial8250_reg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @serial8250_init() #2 section ".init.text" {
  %1 = load i32, ptr @nr_uarts, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %29, label %3

3:                                                ; preds = %0
  tail call fastcc void @serial8250_isa_init_ports() #11
  %4 = load i32, ptr @nr_uarts, align 4
  %5 = load i32, ptr @share_irqs, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.7, ptr @.str.6
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4, ptr noundef nonnull %7) #13
  store i32 5, ptr getelementptr inbounds (%struct.uart_driver, ptr @serial8250_reg, i32 0, i32 5), align 4
  %9 = tail call i32 @uart_register_driver(ptr noundef nonnull @serial8250_reg) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.3, i32 noundef -1) #12
  store ptr %12, ptr @serial8250_isa_devs, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @platform_device_add(ptr noundef nonnull %12) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load ptr, ptr @serial8250_isa_devs, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call fastcc void @serial8250_register_ports(ptr noundef %19) #11
  %20 = tail call i32 @__platform_driver_register(ptr noundef nonnull @serial8250_isa_driver, ptr noundef null) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @serial8250_isa_devs, align 4
  tail call void @platform_device_del(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %22, %14
  %25 = phi i32 [ %15, %14 ], [ %20, %22 ]
  %26 = load ptr, ptr @serial8250_isa_devs, align 4
  tail call void @platform_device_put(ptr noundef %26) #12
  br label %27

27:                                               ; preds = %24, %11
  %28 = phi i32 [ %25, %24 ], [ -12, %11 ]
  tail call void @uart_unregister_driver(ptr noundef nonnull @serial8250_reg) #12
  br label %29

29:                                               ; preds = %27, %17, %3, %0
  %30 = phi i32 [ -19, %0 ], [ %9, %3 ], [ %28, %27 ], [ 0, %17 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @s8250_options() #0 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @univ8250_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %6
  tail call void @serial8250_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @univ8250_console_setup(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 2
  %5 = sext i16 %4 to i32
  %6 = load i32, ptr @nr_uarts, align 4
  %7 = icmp ugt i32 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i16 0, ptr %3, align 2
  br label %9

9:                                                ; preds = %8, %2
  %10 = phi i16 [ 0, %8 ], [ %4, %2 ]
  %11 = sext i16 %10 to i32
  %12 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 32
  store ptr %0, ptr %13, align 4
  %14 = tail call i32 @serial8250_console_setup(ptr noundef %12, ptr noundef %1, i1 noundef zeroext false) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store ptr null, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @univ8250_console_exit(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %3 = load i16, ptr %2, align 2
  %4 = sext i16 %3 to i32
  %5 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %4
  %6 = tail call i32 @serial8250_console_exit(ptr noundef %5) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @univ8250_console_match(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store ptr %3, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @__const.univ8250_console_match.match, i32 noundef 4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %4
  %11 = call i32 @uart_parse_earlycon(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load i32, ptr @nr_uarts, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %6, align 1
  %18 = load i32, ptr %7, align 4
  br label %19

19:                                               ; preds = %40, %16
  %20 = phi i32 [ 0, %16 ], [ %41, %40 ]
  %21 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %20
  %22 = getelementptr inbounds %struct.uart_port, ptr %21, i32 0, i32 26
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, %17
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  switch i8 %17, label %34 [
    i8 7, label %26
    i8 6, label %26
    i8 3, label %26
    i8 2, label %26
    i8 0, label %30
  ]

26:                                               ; preds = %25, %25, %25, %25
  %27 = getelementptr inbounds %struct.uart_port, ptr %21, i32 0, i32 43
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %18
  br i1 %29, label %34, label %40

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.uart_port, ptr %21, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %26, %25
  %35 = trunc i32 %20 to i16
  %36 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  store i16 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.uart_port, ptr %21, i32 0, i32 32
  store ptr %0, ptr %37, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = call i32 @serial8250_console_setup(ptr noundef %21, ptr noundef %38, i1 noundef zeroext true) #12
  br label %43

40:                                               ; preds = %30, %26, %19
  %41 = add nuw i32 %20, 1
  %42 = icmp eq i32 %41, %14
  br i1 %42, label %43, label %19

43:                                               ; preds = %40, %34, %13, %10, %4
  %44 = phi i32 [ %39, %34 ], [ -19, %4 ], [ -19, %10 ], [ -19, %13 ], [ -19, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_console_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_console_setup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_console_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_parse_earlycon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_init_port(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_timeout(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -320
  %3 = getelementptr i8, ptr %0, i32 -260
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %2) #12
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr i8, ptr %0, i32 -144
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 6
  %10 = sdiv i32 %8, 2
  %11 = add nsw i32 %10, -2
  %12 = select i1 %9, i32 %11, i32 1
  %13 = add i32 %12, %6
  %14 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @univ8250_setup_irq(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 1, i32 2
  store ptr @serial8250_backup_timeout, ptr %8, align 4
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 37
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 6
  %13 = sdiv i32 %11, 2
  %14 = add nsw i32 %13, -2
  %15 = select i1 %12, i32 %14, i32 1
  %16 = add i32 %9, 20
  %17 = add i32 %16, %15
  %18 = tail call i32 @mod_timer(ptr noundef %7, i32 noundef %17) #12
  br label %19

19:                                               ; preds = %6, %1
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 1
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 37
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 6
  %29 = sdiv i32 %27, 2
  %30 = add nsw i32 %29, -2
  %31 = select i1 %28, i32 %30, i32 1
  %32 = add i32 %31, %25
  %33 = tail call i32 @mod_timer(ptr noundef %24, i32 noundef %32) #12
  br label %112

34:                                               ; preds = %19
  tail call void @mutex_lock(ptr noundef nonnull @hash_mutex) #12
  %35 = load i32, ptr %20, align 4
  %36 = and i32 %35, 31
  %37 = getelementptr [32 x %struct.hlist_head], ptr @irq_lists, i32 0, i32 %36
  br label %38

38:                                               ; preds = %42, %34
  %39 = phi ptr [ %37, %34 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.irq_info, ptr %40, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %35
  br i1 %45, label %61, label %38

46:                                               ; preds = %38
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 20) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @mutex_unlock(ptr noundef nonnull @hash_mutex) #12
  br label %112

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.irq_info, ptr %48, i32 0, i32 2
  store i32 0, ptr %52, align 4
  %53 = load i32, ptr %20, align 4
  %54 = getelementptr inbounds %struct.irq_info, ptr %48, i32 0, i32 1
  store i32 %53, ptr %54, align 8
  %55 = load ptr, ptr %37, align 4
  store volatile ptr %55, ptr %48, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  store volatile ptr %48, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %51
  store volatile ptr %48, ptr %37, align 4
  %60 = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  store volatile ptr %37, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %42
  %62 = phi ptr [ %48, %59 ], [ %40, %42 ]
  tail call void @mutex_unlock(ptr noundef nonnull @hash_mutex) #12
  %63 = getelementptr inbounds %struct.irq_info, ptr %62, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %63) #12
  %64 = getelementptr inbounds %struct.irq_info, ptr %62, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 2
  br i1 %66, label %74, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %65, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %67, ptr %70, align 4
  store ptr %69, ptr %67, align 4
  %71 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 2, i32 1
  store ptr %65, ptr %71, align 4
  store volatile ptr %67, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %72 = load i16, ptr %63, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %112

74:                                               ; preds = %61
  store volatile ptr %67, ptr %67, align 4
  %75 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 2, i32 1
  store ptr %67, ptr %75, align 4
  store ptr %67, ptr %64, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %76 = load i16, ptr %63, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %78 = load i32, ptr %20, align 4
  %79 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 21
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 53
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @request_threaded_irq(i32 noundef %78, ptr noundef nonnull @serial8250_interrupt, ptr noundef null, i32 noundef %80, ptr noundef %82, ptr noundef nonnull %62) #12
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %74
  tail call void @_raw_spin_lock_irq(ptr noundef %63) #12
  %86 = load ptr, ptr %64, align 4
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  %89 = icmp eq ptr %86, %67
  br i1 %88, label %96, label %90

90:                                               ; preds = %85
  br i1 %89, label %91, label %92

91:                                               ; preds = %90
  store ptr %87, ptr %64, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load ptr, ptr %75, align 4
  %94 = load ptr, ptr %67, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %93, ptr %95, align 4
  store volatile ptr %94, ptr %93, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  br label %99

96:                                               ; preds = %85
  br i1 %89, label %98, label %97, !prof !15

97:                                               ; preds = %96
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

98:                                               ; preds = %96
  store ptr null, ptr %64, align 4
  br label %99

99:                                               ; preds = %98, %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %100 = load i16, ptr %63, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %102 = load ptr, ptr %64, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load ptr, ptr %62, align 4
  %106 = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  store volatile ptr %105, ptr %107, align 4
  %108 = icmp eq ptr %105, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.hlist_node, ptr %105, i32 0, i32 1
  store volatile ptr %107, ptr %110, align 4
  br label %111

111:                                              ; preds = %109, %104
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %106, align 4
  tail call void @kfree(ptr noundef nonnull %62) #12
  br label %112

112:                                              ; preds = %111, %99, %74, %68, %50, %23
  %113 = phi i32 [ 0, %23 ], [ -12, %50 ], [ 0, %68 ], [ %83, %74 ], [ %83, %99 ], [ %83, %111 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @univ8250_release_irq(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 1
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 1, i32 2
  store ptr @serial8250_timeout, ptr %4, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @hash_mutex) #12
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, 31
  %11 = getelementptr [32 x %struct.hlist_head], ptr @irq_lists, i32 0, i32 %10
  br label %12

12:                                               ; preds = %16, %8
  %13 = phi ptr [ %11, %8 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !17

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.irq_info, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %21, label %12

20:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.irq_info, ptr %14, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !19

25:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

26:                                               ; preds = %21
  %27 = load volatile ptr, ptr %23, align 4
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @free_irq(i32 noundef %9, ptr noundef nonnull %14) #12
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds %struct.irq_info, ptr %14, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %32) #12
  %33 = load ptr, ptr %22, align 4
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 2
  %37 = icmp eq ptr %33, %36
  br i1 %35, label %45, label %38

38:                                               ; preds = %31
  br i1 %37, label %39, label %40

39:                                               ; preds = %38
  store ptr %34, ptr %22, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 2, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  br label %48

45:                                               ; preds = %31
  br i1 %37, label %47, label %46, !prof !15

46:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

47:                                               ; preds = %45
  store ptr null, ptr %22, align 4
  br label %48

48:                                               ; preds = %47, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %49 = load i16, ptr %32, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %51 = load ptr, ptr %22, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  store volatile ptr %54, ptr %56, align 4
  %57 = icmp eq ptr %54, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hlist_node, ptr %54, i32 0, i32 1
  store volatile ptr %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %53
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %61

61:                                               ; preds = %60, %48
  tail call void @mutex_unlock(ptr noundef nonnull @hash_mutex) #12
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_backup_timeout(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -320
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr i8, ptr %0, i32 -240
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -308
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %2, i32 noundef 1) #12
  %11 = getelementptr i8, ptr %0, i32 -304
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %2, i32 noundef 1, i32 noundef 0) #12
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %15 = getelementptr i8, ptr %0, i32 -308
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %2, i32 noundef 2) #12
  %18 = load ptr, ptr %15, align 4
  %19 = tail call i32 %18(ptr noundef %2, i32 noundef 5) #12
  %20 = getelementptr i8, ptr %0, i32 60
  %21 = load i8, ptr %20, align 4
  %22 = trunc i32 %19 to i8
  %23 = and i8 %22, 30
  %24 = or i8 %23, %21
  store i8 %24, ptr %20, align 4
  %25 = and i32 %17, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %13
  %28 = getelementptr i8, ptr %0, i32 42
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %0, i32 -212
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uart_state, ptr %34, i32 0, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_state, ptr %34, i32 0, i32 2, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %0, i32 -224
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 0
  %44 = and i32 %19, 32
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %50, label %53

47:                                               ; preds = %32
  %48 = and i32 %19, 32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %40, %27, %13
  %51 = and i32 %17, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47, %40
  tail call void @serial8250_tx_chars(ptr noundef %2) #12
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %0, i32 -304
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %2, i32 noundef 1, i32 noundef %14) #12
  br label %60

60:                                               ; preds = %57, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = getelementptr i8, ptr %0, i32 -144
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 6
  %65 = sdiv i32 %63, 2
  %66 = add nsw i32 %65, -2
  %67 = select i1 %64, i32 %66, i32 1
  %68 = add i32 %61, 20
  %69 = add i32 %68, %67
  %70 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %69) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_interrupt(i32 noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.irq_info, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.irq_info, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %26, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %26 ]
  %8 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %9 = phi ptr [ null, %2 ], [ %19, %26 ]
  %10 = phi ptr [ %5, %2 ], [ %20, %26 ]
  %11 = getelementptr i8, ptr %10, i32 -340
  %12 = getelementptr i8, ptr %10, i32 -280
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %11) #12
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq ptr %9, null
  %17 = select i1 %16, ptr %10, ptr %9
  %18 = select i1 %15, i32 %7, i32 1
  %19 = select i1 %15, ptr %17, ptr null
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = add i32 %8, 1
  %25 = icmp sgt i32 %8, 512
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %6
  %27 = phi i32 [ %24, %23 ], [ %8, %6 ]
  %28 = icmp eq ptr %20, %19
  br i1 %28, label %29, label %6

29:                                               ; preds = %26, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %30 = load i16, ptr %3, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %32 = icmp ne i32 %18, 0
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_match_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_probe(ptr noundef %0) #5 {
  %2 = alloca %struct.uart_8250_port, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i64 460, i1 false)
  %6 = load i32, ptr @share_irqs, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 128
  %9 = icmp eq ptr %5, null
  br i1 %9, label %92, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  %14 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 21
  %15 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  %16 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  %17 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  %18 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %19 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  %20 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 50
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 48
  %22 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  %24 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 15
  %27 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 17
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 5
  %29 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 6
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 7
  %31 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  br label %33

33:                                               ; preds = %88, %10
  %34 = phi i32 [ 0, %10 ], [ %90, %88 ]
  %35 = phi ptr [ %5, %10 ], [ %89, %88 ]
  %36 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %92, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %35, align 4
  store i32 %40, ptr %11, align 4
  %41 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %42, ptr %12, align 4
  %43 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %13, align 4
  %45 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %14, align 4
  %47 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %15, align 4
  %49 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 7
  %50 = load i8, ptr %49, align 4
  store i8 %50, ptr %16, align 1
  %51 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 8
  %52 = load i8, ptr %51, align 1
  store i8 %52, ptr %17, align 2
  %53 = load i32, ptr %36, align 4
  store i32 %53, ptr %18, align 4
  %54 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %19, align 4
  %56 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 9
  %57 = load i8, ptr %56, align 2
  store i8 %57, ptr %20, align 2
  %58 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 10
  %59 = load i8, ptr %58, align 1
  store i8 %59, ptr %21, align 4
  %60 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %22, align 4
  %62 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 12
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %23, align 4
  %64 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 13
  %65 = load ptr, ptr %64, align 4
  store ptr %65, ptr %24, align 4
  %66 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 14
  %67 = load ptr, ptr %66, align 4
  store ptr %67, ptr %25, align 4
  %68 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  store ptr %69, ptr %26, align 4
  %70 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 20
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %27, align 4
  %72 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  store ptr %73, ptr %28, align 4
  %74 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %29, align 4
  %76 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  store ptr %77, ptr %30, align 4
  %78 = getelementptr inbounds %struct.plat_serial8250_port, ptr %35, i32 0, i32 19
  %79 = load ptr, ptr %78, align 4
  store ptr %79, ptr %31, align 4
  store ptr %3, ptr %32, align 4
  %80 = or i32 %46, %8
  store i32 %80, ptr %14, align 4
  %81 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %39
  %84 = load i32, ptr %35, align 4
  %85 = load i32, ptr %54, align 4
  %86 = zext i32 %85 to i64
  %87 = load i32, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %34, i32 noundef %84, i64 noundef %86, i32 noundef %87, i32 noundef %81) #13
  br label %88

88:                                               ; preds = %83, %39
  %89 = getelementptr %struct.plat_serial8250_port, ptr %35, i32 1
  %90 = add i32 %34, 1
  %91 = icmp eq ptr %89, null
  br i1 %91, label %92, label %33

92:                                               ; preds = %88, %33, %1
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_remove(ptr noundef readnone %0) #5 {
  %2 = load i32, ptr @nr_uarts, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %6

6:                                                ; preds = %14, %4
  %7 = phi i32 [ %2, %4 ], [ %15, %14 ]
  %8 = phi i32 [ 0, %4 ], [ %16, %14 ]
  %9 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %8, i32 0, i32 45
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call void @serial8250_unregister_port(i32 noundef %8)
  %13 = load i32, ptr @nr_uarts, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %13, %12 ], [ %7, %6 ]
  %16 = add nuw i32 %8, 1
  %17 = icmp ult i32 %16, %15
  br i1 %17, label %6, label %18

18:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_suspend(ptr noundef readnone %0, [1 x i32] %1) #5 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 0, i32 0, i32 38), align 4
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 0, i32 0, i32 45), align 4
  %7 = icmp eq ptr %6, %3
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef nonnull @serial8250_ports) #12
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 1, i32 0, i32 38), align 4
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 1, i32 0, i32 45), align 4
  %15 = icmp eq ptr %14, %3
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 1)) #12
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i32, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 2, i32 0, i32 38), align 4
  %21 = icmp ne i32 %20, 0
  %22 = load ptr, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 2, i32 0, i32 45), align 4
  %23 = icmp eq ptr %22, %3
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 2)) #12
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 3, i32 0, i32 38), align 4
  %29 = icmp ne i32 %28, 0
  %30 = load ptr, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 3, i32 0, i32 45), align 4
  %31 = icmp eq ptr %30, %3
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 3)) #12
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 4, i32 0, i32 38), align 4
  %37 = icmp ne i32 %36, 0
  %38 = load ptr, ptr getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 4, i32 0, i32 45), align 4
  %39 = icmp eq ptr %38, %3
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 4)) #12
  br label %43

43:                                               ; preds = %41, %35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_resume(ptr noundef readnone %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %3

3:                                                ; preds = %36, %1
  %4 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %5 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %4
  %6 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 38
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 45
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %4, i32 14
  store i8 0, ptr %14, align 4
  %15 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %4, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %5, i32 noundef 3, i32 noundef 224) #12
  %22 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %5, i32 noundef 4) #12
  %25 = and i32 %24, 48
  %26 = icmp eq i32 %25, 16
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = and i32 %24, 79
  %29 = or i32 %28, 16
  %30 = load ptr, ptr %20, align 4
  tail call void %30(ptr noundef %5, i32 noundef 4, i32 noundef %29) #12
  br label %31

31:                                               ; preds = %27, %19
  %32 = load ptr, ptr %20, align 4
  tail call void %32(ptr noundef %5, i32 noundef 3, i32 noundef 0) #12
  %33 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 22
  store i32 14745600, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %13
  %35 = tail call i32 @uart_resume_port(ptr noundef nonnull @serial8250_reg, ptr noundef %5) #12
  br label %36

36:                                               ; preds = %34, %9, %3
  %37 = add nuw nsw i32 %4, 1
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %3

39:                                               ; preds = %36
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @serial8250_register_ports(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = load i32, ptr @nr_uarts, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %24, %1
  %5 = phi i32 [ %25, %24 ], [ %2, %1 ]
  %6 = phi i32 [ %26, %24 ], [ 0, %1 ]
  %7 = getelementptr [5 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 38
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 45
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  store ptr %0, ptr %12, align 4
  %16 = load i32, ptr @skip_txen_test, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 27
  %20 = load i8, ptr %19, align 1
  %21 = or i8 %20, %18
  store i8 %21, ptr %19, align 1
  %22 = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef %7) #12
  %23 = load i32, ptr @nr_uarts, align 4
  br label %24

24:                                               ; preds = %15, %11, %4
  %25 = phi i32 [ %5, %11 ], [ %5, %4 ], [ %23, %15 ]
  %26 = add nuw i32 %6, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %4, label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { cold }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2149141362}
!11 = !{i64 2149137186}
!12 = !{i64 2149137261, i64 2149137288, i64 2149137335, i64 2149137357, i64 2149137385, i64 2149137405}
!13 = !{i64 431064}
!14 = !{i64 2149165506}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2153875108, i64 2153875608, i64 2153875145, i64 2153875201, i64 2153875235, i64 2153875259, i64 2153875300, i64 2153875321, i64 2153875349, i64 2153875383}
!17 = !{!"branch_weights", i32 1, i32 1}
!18 = !{i64 2153882712, i64 2153883212, i64 2153882749, i64 2153882805, i64 2153882839, i64 2153882863, i64 2153882904, i64 2153882925, i64 2153882953, i64 2153882987}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153883808, i64 2153884308, i64 2153883845, i64 2153883901, i64 2153883935, i64 2153883959, i64 2153884000, i64 2153884021, i64 2153884049, i64 2153884083}
!21 = !{i64 2149164365}
