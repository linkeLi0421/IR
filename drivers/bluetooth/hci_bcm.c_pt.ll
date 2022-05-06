; ModuleID = '/llk/IR/drivers/bluetooth/hci_bcm.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_bcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.118 }
%union.anon.118 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_device_data = type { i8, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.bcm_set_sleep_mode = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm_device = type { %struct.hci_uart, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i8, i32, i32, i32, i8, i8, ptr, i8, i8, i8, [5 x i8] }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_data = type { ptr, %struct.sk_buff_head, ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.91, %struct.anon.92, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.91 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.92 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm_set_pcm_int_params = type { i8, i8, i8, i8, i8 }
%struct.bcm_update_uart_baud_rate = type <{ i16, i32 }>
%struct.bcm_write_uart_clock_setting = type { i8 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }

@__param_str_irq_polarity = internal constant [13 x i8] c"irq_polarity\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irq_polarity = internal global i32 -1, align 4
@__param_irq_polarity = internal constant %struct.kernel_param { ptr @__param_str_irq_polarity, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.118 { ptr @irq_polarity } }, section "__param", align 4
@__UNIQUE_ID_irq_polaritytype435 = internal constant [26 x i8] c"parmtype=irq_polarity:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_polarity436 = internal constant [60 x i8] c"parm=irq_polarity:IRQ polarity 0: active-high 1: active-low\00", section ".modinfo", align 1
@bcm_bluetooth_of_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm20702a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4329-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4330-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4334-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4345c5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm43438-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm43438_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm43540-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm4354_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4335a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bcm_driver = internal global %struct.platform_driver { ptr @bcm_probe, ptr @bcm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@bcm_serdev_driver = internal global %struct.serdev_device_driver { %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_bluetooth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_pm_ops, ptr null, ptr null }, ptr @bcm_serdev_probe, ptr @bcm_serdev_remove }, align 4
@bcm_proto = internal constant %struct.hci_uart_proto { i32 7, ptr @.str.21, i32 15, i32 115200, i32 0, ptr @bcm_open, ptr @bcm_close, ptr @bcm_flush, ptr @bcm_setup, ptr @bcm_set_baudrate, ptr @bcm_recv, ptr @bcm_enqueue, ptr @bcm_dequeue }, align 4
@bcm43438_device_data = internal global %struct.bcm_device_data { i8 0, i8 1 }, align 1
@bcm4354_device_data = internal global %struct.bcm_device_data { i8 1, i8 0 }, align 1
@.str = private unnamed_addr constant [8 x i8] c"hci_bcm\00", align 1
@bcm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_suspend, ptr @bcm_resume, ptr @bcm_suspend, ptr @bcm_resume, ptr @bcm_suspend, ptr @bcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_suspend_device, ptr @bcm_resume_device, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s device registered.\0A\00", align 1
@bcm_device_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bcm_device_lock, i64 12), ptr getelementptr (i8, ptr @bcm_device_lock, i64 12) } }, align 4
@bcm_device_list = internal global %struct.list_head { ptr @bcm_device_list, ptr @bcm_device_list }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to power down\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lpo\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"device-wakeup\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"host-wakeup\00", align 1
@bcm_broken_irq_dmi_table = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"To be filled by OEM.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"T3 MRD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -113, [79 x i8] c"V1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [65 x i8] c"%s: Has a broken IRQ config, disabling IRQ support / runtime-pm\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"txco\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Meegopad T08\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Could not set LPO clock rate\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"%s device unregistered.\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Failed to power up\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"hci_uart_bcm\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"No reset resource, using default baud rate\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"max-speed\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"brcm,bt-pcm-int-params\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Broadcom\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"%s: Failed to power down\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"host_wake\00", align 1
@default_sleep_params = internal unnamed_addr constant %struct.bcm_set_sleep_mode { i8 1, i8 2, i8 2, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1 }, align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"%s: Sleep VSC failed (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"%s: BCM: failed to write clock (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"%s: BCM: failed to write update baudrate (%d)\0A\00", align 1
@bcm_recv_pkts = internal constant [8 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 5, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 7, i8 63, i8 0, i8 0, i16 63, ptr @hci_recv_diag }, %struct.h4_recv_pkt { i8 0, i8 0, i8 0, i8 0, i16 0, ptr @hci_recv_diag }, %struct.h4_recv_pkt { i8 49, i8 0, i8 0, i8 0, i16 0, ptr @hci_recv_diag }, %struct.h4_recv_pkt { i8 52, i8 0, i8 0, i8 0, i16 0, ptr @hci_recv_diag }], align 4
@.str.27 = private unnamed_addr constant [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_irq_polarity436, ptr @__UNIQUE_ID_irq_polaritytype435, ptr @__param_irq_polarity], section "llvm.metadata"

@__mod_of__bcm_bluetooth_of_match_device_table = dso_local alias [9 x %struct.of_device_id], ptr @bcm_bluetooth_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @bcm_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_driver, ptr noundef nonnull @__this_module) #8
  %2 = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @bcm_serdev_driver, ptr noundef nonnull @__this_module) #8
  %3 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @bcm_proto) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @bcm_deinit() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_driver) #8
  tail call void @driver_unregister(ptr noundef nonnull @bcm_serdev_driver) #8
  %1 = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @bcm_proto) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 232, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 15
  store i32 %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 22
  store i8 -1, ptr %11, align 1
  %12 = tail call fastcc i32 @bcm_get_resources(ptr noundef nonnull %3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %17) #9
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %18 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_device_list, i32 0, i32 1), align 4
  store ptr %18, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_device_list, i32 0, i32 1), align 4
  store ptr @bcm_device_list, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %18, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  %21 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef nonnull %3, i1 noundef zeroext false)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  br label %24

24:                                               ; preds = %23, %14, %9, %5, %1
  %25 = phi i32 [ -12, %1 ], [ %7, %5 ], [ %12, %9 ], [ 0, %23 ], [ 0, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %4 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_get_resources(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.11) #8
  %13 = icmp ule ptr %12, inttoptr (i32 -4096 to ptr)
  %14 = icmp eq ptr %12, inttoptr (i32 -517 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.12) #8
  %18 = icmp ule ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = icmp eq ptr %17, inttoptr (i32 -517 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #8
  br label %23

23:                                               ; preds = %21, %16, %9
  %24 = phi ptr [ %22, %21 ], [ %12, %9 ], [ %17, %16 ]
  %25 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 9
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, inttoptr (i32 -517 to ptr)
  br i1 %26, label %95, label %27

27:                                               ; preds = %23
  %28 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  store ptr null, ptr %25, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load ptr, ptr %2, align 4
  %32 = tail call ptr @devm_clk_get(ptr noundef %31, ptr noundef nonnull @.str.3) #8
  %33 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 10
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, inttoptr (i32 -517 to ptr)
  br i1 %34, label %95, label %35

35:                                               ; preds = %30
  %36 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %45, label %37

37:                                               ; preds = %35
  %38 = icmp eq ptr %32, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %25, align 4
  %41 = tail call zeroext i1 @clk_is_match(ptr noundef nonnull %32, ptr noundef %40) #8
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 4
  %44 = load ptr, ptr %25, align 4
  tail call void @devm_clk_put(ptr noundef %43, ptr noundef %44) #8
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi ptr [ %25, %42 ], [ %33, %35 ]
  store ptr null, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %39, %37
  %48 = load ptr, ptr %2, align 4
  %49 = tail call ptr @devm_gpiod_get_optional(ptr noundef %48, ptr noundef nonnull @.str.4, i32 noundef 3) #8
  %50 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 4
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i32
  br label %95

54:                                               ; preds = %47
  %55 = load ptr, ptr %2, align 4
  %56 = tail call ptr @devm_gpiod_get_optional(ptr noundef %55, ptr noundef nonnull @.str.5, i32 noundef 3) #8
  %57 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 5
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i32
  br label %95

61:                                               ; preds = %54
  %62 = load ptr, ptr %2, align 4
  %63 = tail call ptr @devm_gpiod_get_optional(ptr noundef %62, ptr noundef nonnull @.str.6, i32 noundef 3) #8
  %64 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 6
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i32
  br label %95

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 7
  store ptr @bcm_gpio_set_device_wakeup, ptr %69, align 4
  %70 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 8
  store ptr @bcm_gpio_set_shutdown, ptr %70, align 4
  %71 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 11
  store ptr @.str.7, ptr %71, align 4
  %72 = getelementptr %struct.bcm_device, ptr %0, i32 0, i32 11, i32 1
  store ptr @.str.8, ptr %72, align 4
  %73 = load ptr, ptr %2, align 4
  %74 = tail call i32 @devm_regulator_bulk_get(ptr noundef %73, i32 noundef 2, ptr noundef %71) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load ptr, ptr %2, align 4
  %82 = tail call ptr @devm_gpiod_get_optional(ptr noundef %81, ptr noundef nonnull @.str.9, i32 noundef 1) #8
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = ptrtoint ptr %82 to i32
  br label %95

86:                                               ; preds = %80
  %87 = tail call i32 @gpiod_to_irq(ptr noundef %82) #8
  store i32 %87, ptr %77, align 4
  br label %88

88:                                               ; preds = %86, %76
  %89 = tail call ptr @dmi_first_match(ptr noundef nonnull @bcm_broken_irq_dmi_table) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %2, align 4
  %93 = getelementptr inbounds %struct.dmi_system_id, ptr %89, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.10, ptr noundef %94) #9
  store i32 0, ptr %77, align 4
  br label %95

95:                                               ; preds = %91, %88, %84, %68, %66, %59, %52, %30, %23
  %96 = phi i32 [ %53, %52 ], [ %60, %59 ], [ %67, %66 ], [ %74, %68 ], [ 0, %91 ], [ 0, %88 ], [ %85, %84 ], [ -517, %23 ], [ -517, %30 ]
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_gpio_set_power(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = zext i1 %1 to i8
  br i1 %1, label %4, label %39

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef 32768) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14) #9
  br label %90

23:                                               ; preds = %15
  %24 = load ptr, ptr %16, align 4
  %25 = tail call i32 @clk_prepare(ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %23
  %28 = tail call i32 @clk_enable(ptr noundef %24) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %90

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_prepare(ptr noundef %33) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %31
  %37 = tail call i32 @clk_enable(ptr noundef %33) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %36, %4, %2
  %40 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %0, i1 noundef zeroext %1) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %0, i1 noundef zeroext %1) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  br i1 %1, label %64, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 12
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  tail call void @clk_disable(ptr noundef %56) #8
  tail call void @clk_unprepare(ptr noundef %56) #8
  %57 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  tail call void @clk_disable(ptr noundef %58) #8
  tail call void @clk_unprepare(ptr noundef %58) #8
  %59 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %59) #8
  br label %64

64:                                               ; preds = %62, %54, %50, %49
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 120000, i32 noundef 2) #8
  %65 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 12
  store i8 %3, ptr %65, align 4
  br label %98

66:                                               ; preds = %44
  %67 = load ptr, ptr %40, align 4
  %68 = xor i1 %1, true
  %69 = tail call i32 %67(ptr noundef %0, i1 noundef zeroext %68) #8
  br label %70

70:                                               ; preds = %66, %39
  %71 = phi i32 [ %42, %39 ], [ %47, %66 ]
  br i1 %1, label %72, label %98

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 12
  %74 = load i8, ptr %73, align 4, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %78) #8
  br label %79

79:                                               ; preds = %76, %36
  %80 = phi ptr [ %78, %76 ], [ %33, %36 ]
  %81 = phi i32 [ %71, %76 ], [ %37, %36 ]
  tail call void @clk_unprepare(ptr noundef %80) #8
  br label %82

82:                                               ; preds = %79, %72, %31
  %83 = phi i32 [ %71, %72 ], [ %34, %31 ], [ %81, %79 ]
  %84 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 12
  %85 = load i8, ptr %84, align 4, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 10
  %89 = load ptr, ptr %88, align 4
  tail call void @clk_disable(ptr noundef %89) #8
  tail call void @clk_unprepare(ptr noundef %89) #8
  br label %90

90:                                               ; preds = %87, %82, %30, %23, %20
  %91 = phi i32 [ %18, %20 ], [ %83, %87 ], [ %83, %82 ], [ %28, %30 ], [ %25, %23 ]
  %92 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 12
  %93 = load i8, ptr %92, align 4, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 11
  %97 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %96) #8
  br label %98

98:                                               ; preds = %95, %90, %70, %64, %12
  %99 = phi i32 [ 0, %64 ], [ %13, %12 ], [ %91, %95 ], [ %91, %90 ], [ %71, %70 ]
  ret i32 %99
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_gpio_set_device_wakeup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = zext i1 %1 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_gpio_set_shutdown(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = zext i1 %1 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef %5) #8
  %6 = getelementptr inbounds %struct.bcm_device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = xor i1 %1, true
  %11 = zext i1 %10 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_first_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %4 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %11, %7
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.bcm_device, ptr %17, i32 0, i32 19
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bcm_device, ptr %17, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %23, i1 noundef zeroext true) #8
  store i8 1, ptr %18, align 4
  br label %26

26:                                               ; preds = %25, %21, %16
  %27 = getelementptr inbounds %struct.bcm_device, ptr %17, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %17, i1 noundef zeroext false) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i8, ptr %18, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bcm_device, ptr %17, i32 0, i32 18
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  store i8 0, ptr %18, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %36, i1 noundef zeroext false) #8
  br label %40

39:                                               ; preds = %26
  tail call void @msleep(i32 noundef 15) #8
  br label %40

40:                                               ; preds = %39, %38, %34, %31, %11
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call i32 @irq_set_irq_wake(i32 noundef %51, i32 noundef 1) #8
  br label %55

55:                                               ; preds = %53, %49, %45, %40, %1
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %4 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %20, %16, %12, %7
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.bcm_device, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %23, i1 noundef zeroext true) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  tail call void @msleep(i32 noundef 15) #8
  %29 = getelementptr inbounds %struct.bcm_device, ptr %23, i32 0, i32 19
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bcm_device, ptr %23, i32 0, i32 18
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  store i8 0, ptr %29, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %34, i1 noundef zeroext false) #8
  br label %38

37:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  br label %40

38:                                               ; preds = %36, %32, %28, %1
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #8
  %39 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %0) #8
  br label %40

40:                                               ; preds = %38, %37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_suspend_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 19
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %9, i1 noundef zeroext true) #8
  store i8 1, ptr %4, align 4
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %3, i1 noundef zeroext false) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load i8, ptr %4, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  store i8 0, ptr %4, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %22, i1 noundef zeroext false) #8
  br label %26

25:                                               ; preds = %12
  tail call void @msleep(i32 noundef 15) #8
  br label %26

26:                                               ; preds = %25, %24, %20, %17
  %27 = phi i32 [ 0, %25 ], [ -16, %24 ], [ -16, %20 ], [ -16, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_resume_device(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %3, i1 noundef zeroext true) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  br label %18

9:                                                ; preds = %1
  tail call void @msleep(i32 noundef 15) #8
  %10 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 19
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i8 0, ptr %10, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %15, i1 noundef zeroext false) #8
  br label %18

18:                                               ; preds = %17, %13, %9, %8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_serdev_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 232, i32 noundef 3520) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 18
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hci_uart, ptr %2, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 22
  store i8 -1, ptr %9, align 1
  %10 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 14
  %11 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %10, i32 noundef 1) #8
  %12 = load ptr, ptr %5, align 4
  %13 = tail call i32 @device_property_read_u8_array(ptr noundef %12, ptr noundef nonnull @.str.20, ptr noundef %9, i32 noundef 5) #8
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @of_irq_get_byname(ptr noundef %16, ptr noundef nonnull @.str.9) #8
  %18 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 15
  store i32 %17, ptr %18, align 4
  %19 = tail call ptr @irq_get_irq_data(i32 noundef %17) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 10
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %21, %4
  %28 = phi i1 [ %26, %21 ], [ false, %4 ]
  %29 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 16
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 4
  %31 = tail call fastcc i32 @bcm_get_resources(ptr noundef nonnull %2)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18) #9
  %38 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %10, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef nonnull %2, i1 noundef zeroext false)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %44

44:                                               ; preds = %43, %40
  %45 = load ptr, ptr %5, align 4
  %46 = tail call ptr @device_get_match_data(ptr noundef %45) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i8, ptr %46, align 1, !range !8
  %50 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 20
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.bcm_device_data, ptr %46, i32 0, i32 1
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = getelementptr inbounds %struct.bcm_device, ptr %2, i32 0, i32 21
  store i8 %52, ptr %53, align 2
  br label %54

54:                                               ; preds = %48, %44
  %55 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %2, ptr noundef nonnull @bcm_proto) #8
  br label %56

56:                                               ; preds = %54, %27, %1
  %57 = phi i32 [ %55, %54 ], [ -12, %1 ], [ %31, %27 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_serdev_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @hci_uart_unregister_device(ptr noundef %3) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_open(ptr noundef %0) #2 {
  %2 = tail call zeroext i1 @hci_uart_has_flow_control(ptr noundef %0) #8
  br i1 %2, label %3, label %81

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %81, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 1, i32 2
  store i32 0, ptr %9, align 8
  store ptr %8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 1, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  store ptr %5, ptr %12, align 4
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %13 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  br label %42

20:                                               ; preds = %7
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ %29, %31 ], [ @bcm_device_list, %25 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @bcm_device_list
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i8, ptr %29, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %38, label %27

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %29, i32 -132
  %40 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = getelementptr i8, ptr %29, i32 88
  store ptr %0, ptr %41, align 4
  br label %42

42:                                               ; preds = %38, %27, %20, %16
  %43 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bcm_device, ptr %44, i32 0, i32 21
  %48 = load i8, ptr %47, align 2, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void @hci_uart_set_flow_control(ptr noundef %0, i1 noundef zeroext true) #8
  %51 = load ptr, ptr %43, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %51, %50 ], [ %44, %46 ]
  %54 = getelementptr inbounds %struct.bcm_device, ptr %53, i32 0, i32 13
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 12
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.bcm_device, ptr %53, i32 0, i32 20
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.bcm_device, ptr %53, i32 0, i32 14
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 13
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef %53, i1 noundef zeroext true)
  %66 = load ptr, ptr %43, align 4
  %67 = getelementptr inbounds %struct.bcm_device, ptr %66, i32 0, i32 21
  %68 = load i8, ptr %67, align 2, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  tail call void @hci_uart_set_flow_control(ptr noundef %0, i1 noundef zeroext false) #8
  br label %71

71:                                               ; preds = %70, %64
  %72 = icmp eq i32 %65, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71, %42
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  br label %81

74:                                               ; preds = %71
  %75 = load ptr, ptr %13, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load ptr, ptr %43, align 4
  %79 = getelementptr inbounds %struct.bcm_device, ptr %78, i32 0, i32 18
  store ptr null, ptr %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  store ptr null, ptr %12, align 4
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %81

81:                                               ; preds = %80, %73, %3, %1
  %82 = phi i32 [ %65, %80 ], [ 0, %73 ], [ -95, %1 ], [ -12, %3 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_close(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %4 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bcm_device, ptr %12, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_uart, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %14, %10
  br label %23

23:                                               ; preds = %23, %22
  %24 = phi ptr [ %25, %23 ], [ @bcm_device_list, %22 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @bcm_device_list
  %27 = getelementptr i8, ptr %25, i32 -132
  %28 = icmp eq ptr %27, %12
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %23

30:                                               ; preds = %23
  br i1 %26, label %59, label %31

31:                                               ; preds = %30, %18
  %32 = getelementptr inbounds %struct.bcm_device, ptr %12, i32 0, i32 18
  store ptr null, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi ptr [ %9, %7 ], [ %12, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 17
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  tail call void @devm_free_irq(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %34) #8
  %45 = load ptr, ptr %41, align 4
  %46 = tail call i32 @device_init_wakeup(ptr noundef %45, i1 noundef zeroext false) #8
  %47 = load ptr, ptr %41, align 4
  tail call void @__pm_runtime_disable(ptr noundef %47, i1 noundef zeroext true) #8
  br label %48

48:                                               ; preds = %40, %36
  %49 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef nonnull %34, i1 noundef zeroext false)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.hci_dev, ptr %53, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, ptr noundef %54) #8
  br label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @__pm_runtime_set_status(ptr noundef %57, i32 noundef 2) #8
  br label %59

59:                                               ; preds = %55, %51, %33, %30
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  %60 = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %60) #8
  %61 = load ptr, ptr %3, align 4
  tail call void @kfree_skb_reason(ptr noundef %61, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_flush(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_setup(ptr noundef %0) #2 {
  %2 = alloca %struct.bcm_set_sleep_mode, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.bcm_set_pcm_int_params, align 1
  %5 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  %7 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 235
  store ptr @bcm_set_diag, ptr %9, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 236
  store ptr @btbcm_set_bdaddr, ptr %11, align 8
  %12 = load ptr, ptr %7, align 4
  %13 = call i32 @btbcm_initialize(ptr noundef %12, ptr noundef nonnull %3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %147

15:                                               ; preds = %1
  %16 = load i8, ptr %3, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %147, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hci_uart_proto, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22, %18
  %29 = phi i32 [ %26, %22 ], [ %20, %18 ]
  %30 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @serdev_device_set_baudrate(ptr noundef nonnull %31, i32 noundef %29) #8
  br label %36

35:                                               ; preds = %28
  call void @hci_uart_set_baudrate(ptr noundef %0, i32 noundef %29) #8
  br label %36

36:                                               ; preds = %35, %33, %22
  %37 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bcm_data, ptr %6, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bcm_device, ptr %42, i32 0, i32 14
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hci_uart_proto, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %48, %44, %36
  %55 = phi i32 [ %52, %48 ], [ %46, %44 ], [ %38, %36 ]
  %56 = call i32 @bcm_set_baudrate(ptr noundef %0, i32 noundef %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 @serdev_device_set_baudrate(ptr noundef nonnull %60, i32 noundef %55) #8
  br label %65

64:                                               ; preds = %58
  call void @hci_uart_set_baudrate(ptr noundef %0, i32 noundef %55) #8
  br label %65

65:                                               ; preds = %64, %62, %54, %48
  %66 = getelementptr inbounds %struct.bcm_data, ptr %6, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.bcm_device, ptr %67, i32 0, i32 22
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, -1
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !9
  %74 = load ptr, ptr %7, align 4
  %75 = call i32 @btbcm_read_pcm_int_params(ptr noundef %74, ptr noundef nonnull %4) #8
  %76 = load ptr, ptr %66, align 4
  %77 = getelementptr inbounds %struct.bcm_device, ptr %76, i32 0, i32 22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, ptr noundef align 1 dereferenceable(5) %77, i32 5, i1 false)
  %78 = load ptr, ptr %7, align 4
  %79 = call i32 @btbcm_write_pcm_int_params(ptr noundef %78, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #8
  br label %80

80:                                               ; preds = %73, %69, %65
  %81 = load ptr, ptr %7, align 4
  %82 = call i32 @btbcm_finalize(ptr noundef %81, ptr noundef nonnull %3) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %147

84:                                               ; preds = %80
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr inbounds %struct.hci_dev, ptr %85, i32 0, i32 118
  call void @_set_bit(i32 noundef 8, ptr noundef %86) #8
  %87 = load ptr, ptr %66, align 4
  call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.bcm_device, ptr %87, i32 0, i32 18
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.hci_uart, ptr %91, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %93, %89, %84
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi ptr [ %100, %98 ], [ @bcm_device_list, %97 ]
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, @bcm_device_list
  %102 = getelementptr i8, ptr %100, i32 -132
  %103 = icmp eq ptr %102, %87
  %104 = or i1 %101, %103
  br i1 %104, label %105, label %98

105:                                              ; preds = %98
  br i1 %101, label %120, label %106

106:                                              ; preds = %105, %93
  %107 = getelementptr inbounds %struct.bcm_device, ptr %87, i32 0, i32 15
  %108 = load i32, ptr %107, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.bcm_device, ptr %87, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.bcm_device, ptr %87, i32 0, i32 16
  %114 = load i8, ptr %113, align 4, !range !8
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 1, i32 2
  %117 = call i32 @devm_request_threaded_irq(ptr noundef %112, i32 noundef %108, ptr noundef nonnull @bcm_host_wake, ptr noundef null, i32 noundef %116, ptr noundef nonnull @.str.23, ptr noundef %87) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %110
  store i32 %117, ptr %107, align 4
  br label %120

120:                                              ; preds = %119, %106, %105
  call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  br label %147

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.bcm_device, ptr %87, i32 0, i32 17
  store i8 1, ptr %122, align 1
  %123 = load ptr, ptr %111, align 4
  %124 = call i32 @device_init_wakeup(ptr noundef %123, i1 noundef zeroext true) #8
  %125 = load ptr, ptr %111, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %125, i32 noundef 5000) #8
  %126 = load ptr, ptr %111, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %126, i1 noundef zeroext true) #8
  %127 = load ptr, ptr %111, align 4
  %128 = call i32 @__pm_runtime_set_status(ptr noundef %127, i32 noundef 0) #8
  %129 = load ptr, ptr %111, align 4
  call void @pm_runtime_enable(ptr noundef %129) #8
  call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  %130 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) @default_sleep_params, i32 12, i1 false) #8
  %131 = getelementptr inbounds %struct.bcm_data, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.bcm_device, ptr %132, i32 0, i32 16
  %134 = load i8, ptr %133, align 4, !range !8
  %135 = xor i8 %134, 1
  %136 = getelementptr inbounds %struct.bcm_set_sleep_mode, ptr %2, i32 0, i32 4
  store i8 %135, ptr %136, align 1
  %137 = load ptr, ptr %7, align 4
  %138 = call ptr @__hci_cmd_sync(ptr noundef %137, i16 noundef zeroext -985, i32 noundef 12, ptr noundef nonnull %2, i32 noundef 1000) #8
  %139 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %140, label %144

140:                                              ; preds = %121
  %141 = ptrtoint ptr %138 to i32
  %142 = load ptr, ptr %7, align 4
  %143 = getelementptr inbounds %struct.hci_dev, ptr %142, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %143, i32 noundef %141) #8
  br label %145

144:                                              ; preds = %121
  call void @kfree_skb_reason(ptr noundef %138, i32 noundef 0) #8
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i32 [ %141, %140 ], [ 0, %144 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br label %147

147:                                              ; preds = %145, %120, %80, %15, %1
  %148 = phi i32 [ %13, %1 ], [ 0, %15 ], [ %82, %80 ], [ %146, %145 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_set_baudrate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.bcm_update_uart_baud_rate, align 2
  %4 = alloca %struct.bcm_write_uart_clock_setting, align 1
  %5 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #8
  %7 = icmp ugt i32 %1, 3000000
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 1, ptr %4, align 1
  %9 = call ptr @__hci_cmd_sync(ptr noundef %6, i16 noundef zeroext -955, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 1000) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  %13 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %13, i32 noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %23

14:                                               ; preds = %8
  call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %15

15:                                               ; preds = %14, %2
  store i16 0, ptr %3, align 2
  %16 = getelementptr inbounds %struct.bcm_update_uart_baud_rate, ptr %3, i32 0, i32 1
  store i32 %1, ptr %16, align 2
  %17 = call ptr @__hci_cmd_sync(ptr noundef %6, i16 noundef zeroext -1000, i32 noundef 6, ptr noundef nonnull %3, i32 noundef 1000) #8
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = ptrtoint ptr %17 to i32
  %21 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %21, i32 noundef %20) #8
  br label %23

22:                                               ; preds = %15
  call void @kfree_skb_reason(ptr noundef %17, i32 noundef 0) #8
  br label %23

23:                                               ; preds = %22, %19, %11
  %24 = phi i32 [ %20, %19 ], [ 0, %22 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = tail call ptr @h4_recv_buf(ptr noundef %12, ptr noundef %13, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @bcm_recv_pkts, i32 noundef 8) #8
  store ptr %14, ptr %5, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = ptrtoint ptr %14 to i32
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27, ptr noundef %19, i32 noundef %17) #8
  store ptr null, ptr %5, align 4
  br label %57

20:                                               ; preds = %10
  %21 = icmp eq ptr %14, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %20
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %23 = getelementptr inbounds %struct.bcm_data, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bcm_device, ptr %24, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hci_uart, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %35, %34
  %36 = phi ptr [ %37, %35 ], [ @bcm_device_list, %34 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @bcm_device_list
  %39 = getelementptr i8, ptr %37, i32 -132
  %40 = icmp eq ptr %39, %24
  %41 = or i1 %38, %40
  br i1 %41, label %42, label %35

42:                                               ; preds = %35
  br i1 %38, label %56, label %43

43:                                               ; preds = %42, %30
  %44 = getelementptr inbounds %struct.bcm_device, ptr %24, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @__pm_runtime_resume(ptr noundef %45, i32 noundef 5) #8
  %47 = load ptr, ptr %23, align 4
  %48 = getelementptr inbounds %struct.bcm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i64 @ktime_get_mono_fast_ns() #8
  %51 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 11, i32 22
  store volatile i64 %50, ptr %51, align 8
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr inbounds %struct.bcm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #8
  br label %56

56:                                               ; preds = %43, %42, %22
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  br label %57

57:                                               ; preds = %56, %20, %16, %3
  %58 = phi i32 [ %17, %16 ], [ -49, %3 ], [ %2, %20 ], [ %2, %56 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_enqueue(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 1) #8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  store i8 %7, ptr %5, align 1
  %8 = getelementptr inbounds %struct.bcm_data, ptr %4, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %8, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm_dequeue(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @bcm_device_lock) #8
  %4 = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcm_device, ptr %5, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hci_uart, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %11, %7, %1
  br label %16

16:                                               ; preds = %16, %15
  %17 = phi ptr [ %18, %16 ], [ @bcm_device_list, %15 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @bcm_device_list
  %20 = getelementptr i8, ptr %18, i32 -132
  %21 = icmp eq ptr %20, %5
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %16

23:                                               ; preds = %16
  br i1 %19, label %24, label %27

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 1
  %26 = tail call ptr @skb_dequeue(ptr noundef %25) #8
  br label %39

27:                                               ; preds = %23, %11
  %28 = getelementptr inbounds %struct.bcm_device, ptr %5, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__pm_runtime_resume(ptr noundef %29, i32 noundef 4) #8
  %31 = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 1
  %32 = tail call ptr @skb_dequeue(ptr noundef %31) #8
  br i1 %6, label %39, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 4
  %35 = tail call i64 @ktime_get_mono_fast_ns() #8
  %36 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 22
  store volatile i64 %35, ptr %36, align 8
  %37 = load ptr, ptr %28, align 4
  %38 = tail call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #8
  br label %39

39:                                               ; preds = %33, %27, %24
  %40 = phi ptr [ %26, %24 ], [ %32, %33 ], [ %32, %27 ]
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #8
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_uart_has_flow_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_set_diag(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  store ptr %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 8
  store ptr %21, ptr %19, align 8
  %22 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 1) #8
  store i8 7, ptr %22, align 1
  %23 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 1) #8
  store i8 -16, ptr %23, align 1
  %24 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 1) #8
  store i8 %3, ptr %24, align 1
  %25 = getelementptr inbounds %struct.bcm_data, ptr %7, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %25, ptr noundef nonnull %13) #8
  %26 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %5) #8
  br label %27

27:                                               ; preds = %15, %12, %2
  %28 = phi i32 [ 0, %15 ], [ -100, %2 ], [ -12, %12 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_initialize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_read_pcm_int_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_write_pcm_int_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_finalize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_host_wake(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 5) #8
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i64 @ktime_get_mono_fast_ns() #8
  %8 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 22
  store volatile i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_diag(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
