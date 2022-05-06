; ModuleID = '/llk/IR/drivers/bluetooth/hci_ldisc.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_ldisc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_uart_tx_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_uart_tx_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_hci_uart_tx_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.117, %struct.anon.118, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.117 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.118 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hci_rp_read_local_version = type <{ i8, i8, i16, i8, i16, i16 }>

@hup = internal unnamed_addr global [12 x ptr] zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"HCI UART protocol %s registered\0A\00", align 1
@__kstrtab_hci_uart_tx_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_uart_tx_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_uart_tx_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_uart_tx_wakeup to i32), ptr @__kstrtab_hci_uart_tx_wakeup, ptr @__kstrtabns_hci_uart_tx_wakeup }, section "___ksymtab_gpl+hci_uart_tx_wakeup", align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't register HCI device\0A\00", align 1
@__UNIQUE_ID_author436 = internal constant [45 x i8] c"author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description437 = internal constant [46 x i8] c"description=Bluetooth HCI UART driver ver 2.3\00", section ".modinfo", align 1
@__UNIQUE_ID_version438 = internal constant [12 x i8] c"version=2.3\00", section ".modinfo", align 1
@__UNIQUE_ID_license439 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias440 = internal constant [19 x i8] c"alias=tty-ldisc-15\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"HCI UART driver ver %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@hci_uart_ldisc = internal global %struct.tty_ldisc_ops { ptr @.str.5, i32 15, ptr @hci_uart_tty_open, ptr @hci_uart_tty_close, ptr null, ptr @hci_uart_tty_read, ptr @hci_uart_tty_write, ptr @hci_uart_tty_ioctl, ptr @hci_uart_tty_ioctl, ptr null, ptr @hci_uart_tty_poll, ptr null, ptr @hci_uart_tty_receive, ptr @hci_uart_tty_wakeup, ptr null, ptr null, ptr @__this_module }, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"HCI line discipline registration failed. (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"n_hci\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.6 = private unnamed_addr constant [34 x i8] c"Can't allocate control structure\0A\00", align 1
@hci_uart_tty_open.rwsem_key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"&hu->proto_lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Can't allocate HCI device\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: Reading local version information failed (%ld)\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"%s: Event length mismatch for version information\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias440, ptr @__UNIQUE_ID_author436, ptr @__UNIQUE_ID_description437, ptr @__UNIQUE_ID_license439, ptr @__UNIQUE_ID_version438, ptr @__ksymtab_hci_uart_tx_wakeup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_uart_register_proto(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp ugt i32 %2, 11
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr [12 x ptr], ptr @hup, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  store ptr %0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.hci_uart_proto, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str, ptr noundef %10) #11
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = phi i32 [ 0, %8 ], [ -22, %1 ], [ -17, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_uart_unregister_proto(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp ugt i32 %2, 11
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr [12 x ptr], ptr @hup, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %4, %1
  %10 = phi i32 [ 0, %8 ], [ -22, %1 ], [ -22, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_uart_tx_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17, !prof !10

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %7 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %19

17:                                               ; preds = %1
  %18 = tail call zeroext i1 @__percpu_down_read(ptr noundef %2, i1 noundef zeroext true) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br i1 %18, label %19, label %62

19:                                               ; preds = %17, %5
  %20 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 3
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %25) #11
  %26 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %25) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr @system_wq, align 4
  %31 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %29) #11
  br label %32

32:                                               ; preds = %28, %24, %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %33 = load volatile i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47, !prof !10

35:                                               ; preds = %32
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %37 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 8, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #8, !srcloc !12
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -1
  store i32 %46, ptr %44, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #11, !srcloc !13
  br label %61

47:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %49 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 8, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %53) #8, !srcloc !12
  %55 = add i32 %54, %51
  %56 = inttoptr i32 %55 to ptr
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #11, !srcloc !13
  %59 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 8, i32 2
  %60 = tail call i32 @rcuwait_wake_up(ptr noundef %59) #11
  br label %61

61:                                               ; preds = %47, %35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %62

62:                                               ; preds = %61, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_uart_init_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @hci_register_dev(ptr noundef %8) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1) #11
  %12 = getelementptr i8, ptr %0, i32 -8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %12) #11
  %13 = getelementptr i8, ptr %0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hci_uart_proto, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %2) #11
  %18 = load ptr, ptr %7, align 4
  store ptr null, ptr %7, align 4
  tail call void @hci_free_dev(ptr noundef %18) #11
  br label %21

19:                                               ; preds = %6
  %20 = getelementptr i8, ptr %0, i32 -8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %20) #11
  br label %21

21:                                               ; preds = %19, %11, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_uart_init_ready(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7) #11
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %6 ], [ -114, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_uart_wait_until_sent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 200) #11
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hci_uart_has_flow_control(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_operations, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.tty_operations, ptr %10, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %5
  br label %19

19:                                               ; preds = %18, %14, %1
  %20 = phi i1 [ false, %18 ], [ true, %1 ], [ true, %14 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_uart_set_flow_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ktermios, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = xor i1 %1, true
  tail call void @serdev_device_set_flow_control(ptr noundef nonnull %6, i1 noundef zeroext %9) #11
  %10 = load ptr, ptr %5, align 4
  br i1 %1, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @serdev_device_set_tiocm(ptr noundef %10, i32 noundef 4, i32 noundef 0) #11
  br label %54

13:                                               ; preds = %8
  %14 = tail call i32 @serdev_device_set_tiocm(ptr noundef %10, i32 noundef 0, i32 noundef 4) #11
  br label %54

15:                                               ; preds = %2
  br i1 %1, label %16, label %35

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %17, i32 44, i1 false)
  %18 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2147483647
  store i32 %20, ptr %18, align 4
  %21 = call i32 @tty_set_termios(ptr noundef %4, ptr noundef nonnull %3) #11
  %22 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tty_operations, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %4) #11
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.tty_driver, ptr %29, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tty_operations, ptr %31, i32 0, i32 26
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %4, i32 noundef 0, i32 noundef 57350) #11
  br label %54

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tty_driver, ptr %37, i32 0, i32 20
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tty_operations, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %4) #11
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr inbounds %struct.tty_driver, ptr %43, i32 0, i32 20
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tty_operations, ptr %45, i32 0, i32 26
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %4, i32 noundef 16388, i32 noundef 40962) #11
  %49 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %49, i32 44, i1 false)
  %50 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, -2147483648
  store i32 %52, ptr %50, align 4
  %53 = call i32 @tty_set_termios(ptr noundef %4, ptr noundef nonnull %3) #11
  br label %54

54:                                               ; preds = %35, %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hci_uart_set_speeds(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 12
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 13
  store i32 %2, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_uart_set_baudrate(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ktermios, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %5, i32 44, i1 false)
  %6 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -4112
  store i32 %8, ptr %6, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %3, i32 noundef %1, i32 noundef %1) #11
  %9 = call i32 @tty_set_termios(ptr noundef %4, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #7 section ".init.text" {
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  %1 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @hci_uart_ldisc) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, i32 noundef %1) #11
  br label %7

4:                                                ; preds = %0
  %5 = tail call i32 @h4_init() #11
  %6 = tail call i32 @bcm_init() #11
  br label %7

7:                                                ; preds = %4, %3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #7 section ".exit.text" {
  %1 = tail call i32 @h4_deinit() #11
  %2 = tail call i32 @bcm_deinit() #11
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @hci_uart_ldisc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_tiocm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @h4_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_tty_open(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %2, label %3, label %29

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 132) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #11
  br label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr %11, ptr %15, align 4
  store ptr %0, ptr %11, align 8
  %16 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 65536, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 14
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 15
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 5
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 5, i32 1
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 5, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 5, i32 2
  store ptr @hci_uart_init_work, ptr %22, align 8
  %23 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 6
  store i32 -32, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 6, i32 1
  store volatile ptr %24, ptr %24, align 8
  %25 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 6, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 6, i32 2
  store ptr @hci_uart_write_work, ptr %26, align 8
  %27 = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 8
  %28 = tail call i32 @__percpu_init_rwsem(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef nonnull @hci_uart_tty_open.rwsem_key) #11
  tail call void @tty_driver_flush_buffer(ptr noundef %0) #11
  br label %29

29:                                               ; preds = %14, %13, %3, %1
  %30 = phi i32 [ 0, %14 ], [ -23, %13 ], [ -1, %1 ], [ -95, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_uart_tty_close(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @hci_uart_flush(ptr noundef nonnull %7) #11
  %11 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 228
  store ptr null, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8
  tail call void @percpu_down_write(ptr noundef %18) #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %13) #11
  tail call void @percpu_up_write(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 5
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 6
  %22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %21) #11
  br i1 %8, label %29, label %23

23:                                               ; preds = %17
  %24 = load volatile i32, ptr %13, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @hci_unregister_dev(ptr noundef nonnull %7) #11
  br label %28

28:                                               ; preds = %27, %23
  tail call void @hci_free_dev(ptr noundef nonnull %7) #11
  br label %29

29:                                               ; preds = %28, %17
  %30 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.hci_uart_proto, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %3) #11
  br label %35

35:                                               ; preds = %29, %12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %13) #11
  %36 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8
  tail call void @percpu_free_rwsem(ptr noundef %36) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %37

37:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hci_uart_tty_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5) #9 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hci_uart_tty_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #9 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_tty_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %126, label %7

7:                                                ; preds = %3
  switch i32 %1, label %124 [
    i32 1074025928, label %8
    i32 -2147199543, label %92
    i32 -2147199542, label %101
    i32 1074025931, label %112
    i32 -2147199540, label %121
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 3
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %126

12:                                               ; preds = %8
  %13 = icmp ugt i32 %2, 11
  br i1 %13, label %90, label %14

14:                                               ; preds = %12
  %15 = getelementptr [12 x ptr], ptr @hup, i32 0, i32 %2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %90, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 7
  store ptr %16, ptr %19, align 4
  %20 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8) #11
  br label %90

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 2
  store ptr %20, ptr %24, align 4
  %25 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 5
  store i8 3, ptr %25, align 2
  %26 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 204, i32 8
  store ptr %5, ptr %26, align 8
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr inbounds %struct.hci_uart_proto, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.hci_uart_proto, ptr %27, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 31
  store i16 %34, ptr %35, align 2
  br label %36

36:                                               ; preds = %31, %23
  %37 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 226
  store ptr @hci_uart_open, ptr %37, align 8
  %38 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 227
  store ptr @hci_uart_close, ptr %38, align 4
  %39 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 228
  store ptr @hci_uart_flush, ptr %39, align 8
  %40 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 231
  store ptr @hci_uart_send_frame, ptr %40, align 4
  %41 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 229
  store ptr @hci_uart_setup, ptr %41, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.tty_struct, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 204, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 4
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 1, ptr noundef %51) #11
  br label %52

52:                                               ; preds = %50, %36
  %53 = load volatile i32, ptr %46, align 4
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 6, ptr noundef %57) #11
  br label %58

58:                                               ; preds = %56, %52
  %59 = load volatile i32, ptr %46, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %63) #11
  br label %64

64:                                               ; preds = %62, %58
  %65 = load volatile i32, ptr %46, align 4
  %66 = trunc i32 %65 to i8
  %67 = lshr i8 %66, 2
  %68 = and i8 %67, 1
  %69 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 6
  store i8 %68, ptr %69, align 1
  %70 = load ptr, ptr %19, align 4
  %71 = getelementptr inbounds %struct.hci_uart_proto, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef nonnull %5) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  store ptr null, ptr %24, align 4
  tail call void @hci_free_dev(ptr noundef nonnull %20) #11
  br label %90

76:                                               ; preds = %64
  %77 = load volatile i32, ptr %46, align 4
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = tail call i32 @hci_register_dev(ptr noundef nonnull %20) #11
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1) #11
  %84 = load ptr, ptr %19, align 4
  %85 = getelementptr inbounds %struct.hci_uart_proto, ptr %84, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %86(ptr noundef nonnull %5) #11
  store ptr null, ptr %24, align 4
  tail call void @hci_free_dev(ptr noundef nonnull %20) #11
  br label %90

88:                                               ; preds = %80
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #11
  br label %89

89:                                               ; preds = %88, %76
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #11
  br label %126

90:                                               ; preds = %83, %75, %22, %14, %12
  %91 = phi i32 [ %73, %75 ], [ -19, %83 ], [ -12, %22 ], [ -93, %12 ], [ -93, %14 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %9) #11
  br label %126

92:                                               ; preds = %7
  %93 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 3
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %126, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 7
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %99, align 4
  br label %126

101:                                              ; preds = %7
  %102 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 3
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.hci_dev, ptr %108, i32 0, i32 4
  %110 = load i16, ptr %109, align 8
  %111 = zext i16 %110 to i32
  br label %126

112:                                              ; preds = %7
  %113 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 3
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = icmp ult i32 %2, 64
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 4
  store i32 %2, ptr %120, align 4
  br label %126

121:                                              ; preds = %7
  %122 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 4
  %123 = load i32, ptr %122, align 4
  br label %126

124:                                              ; preds = %7
  %125 = tail call i32 @n_tty_ioctl_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  br label %126

126:                                              ; preds = %124, %121, %119, %117, %112, %106, %101, %97, %92, %90, %89, %8, %3
  %127 = phi i32 [ -9, %3 ], [ %125, %124 ], [ %123, %121 ], [ %111, %106 ], [ %100, %97 ], [ %91, %90 ], [ 0, %89 ], [ -16, %8 ], [ -49, %92 ], [ -49, %101 ], [ -16, %112 ], [ 0, %119 ], [ -22, %117 ]
  ret i32 %127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hci_uart_tty_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #9 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_uart_tty_receive(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %107, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %107

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27, !prof !10

15:                                               ; preds = %11
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %17 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #8, !srcloc !12
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #11, !srcloc !13
  br label %29

27:                                               ; preds = %11
  %28 = tail call zeroext i1 @__percpu_down_read(ptr noundef %12, i1 noundef zeroext false) #11
  br label %29

29:                                               ; preds = %27, %15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %30 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 3
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %35 = load volatile i32, ptr %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49, !prof !10

37:                                               ; preds = %34
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %39 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #8, !srcloc !12
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #11, !srcloc !13
  br label %63

49:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %51 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #8, !srcloc !12
  %57 = add i32 %56, %53
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #11, !srcloc !13
  %61 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 2
  %62 = tail call i32 @rcuwait_wake_up(ptr noundef %61) #11
  br label %63

63:                                               ; preds = %49, %37
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %107

64:                                               ; preds = %29
  %65 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.hci_uart_proto, ptr %66, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %3) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %70 = load volatile i32, ptr %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84, !prof !10

72:                                               ; preds = %64
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %74 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %78) #8, !srcloc !12
  %80 = add i32 %79, %76
  %81 = inttoptr i32 %80 to ptr
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %81, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #11, !srcloc !13
  br label %98

84:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %85 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %86 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #8, !srcloc !12
  %92 = add i32 %91, %88
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #11, !srcloc !13
  %96 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 8, i32 2
  %97 = tail call i32 @rcuwait_wake_up(ptr noundef %96) #11
  br label %98

98:                                               ; preds = %84, %72
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %99 = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.hci_dev, ptr %100, i32 0, i32 199, i32 8
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %3
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %102, %98
  tail call void @tty_unthrottle(ptr noundef %0) #11
  br label %107

107:                                              ; preds = %106, %63, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_uart_tty_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %6) #11
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @hci_uart_tx_wakeup(ptr noundef nonnull %3)
  br label %16

16:                                               ; preds = %14, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_uart_write_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 80
  %7 = getelementptr i8, ptr %0, i32 76
  %8 = getelementptr i8, ptr %0, i32 20
  %9 = getelementptr i8, ptr %0, i32 48
  %10 = getelementptr i8, ptr %0, i32 -24
  %11 = getelementptr i8, ptr %0, i32 16
  %12 = getelementptr i8, ptr %0, i32 52
  %13 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16
  %14 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 199, i32 9
  br label %16

16:                                               ; preds = %106, %1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %6) #11
  br label %17

17:                                               ; preds = %105, %16
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %72

20:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %21 = load volatile i32, ptr %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34, !prof !10

23:                                               ; preds = %20
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %25 = load ptr, ptr %9, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #8, !srcloc !12
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #11, !srcloc !13
  br label %36

34:                                               ; preds = %20
  %35 = tail call zeroext i1 @__percpu_down_read(ptr noundef %8, i1 noundef zeroext false) #11
  br label %36

36:                                               ; preds = %34, %23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %37 = load volatile i32, ptr %10, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr inbounds %struct.hci_uart_proto, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr %43(ptr noundef %2) #11
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi ptr [ %44, %40 ], [ null, %36 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %47 = load volatile i32, ptr %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60, !prof !10

49:                                               ; preds = %45
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %51 = load ptr, ptr %9, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #8, !srcloc !12
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #11, !srcloc !13
  br label %73

60:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %62 = load ptr, ptr %9, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %65 = inttoptr i32 %64 to ptr
  %66 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #8, !srcloc !12
  %67 = add i32 %66, %63
  %68 = inttoptr i32 %67 to ptr
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #11, !srcloc !13
  %71 = tail call i32 @rcuwait_wake_up(ptr noundef %12) #11
  br label %73

72:                                               ; preds = %17
  store ptr null, ptr %7, align 4
  br label %75

73:                                               ; preds = %60, %49
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %74 = icmp eq ptr %46, null
  br i1 %74, label %106, label %75

75:                                               ; preds = %73, %72
  %76 = phi ptr [ %18, %72 ], [ %46, %73 ]
  tail call void @_set_bit(i32 noundef 5, ptr noundef %13) #11
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr inbounds %struct.tty_operations, ptr %77, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = tail call i32 %79(ptr noundef %3, ptr noundef %81, i32 noundef %83) #11
  %85 = load i32, ptr %15, align 4
  %86 = add i32 %85, %84
  store i32 %86, ptr %15, align 4
  %87 = tail call ptr @skb_pull(ptr noundef nonnull %76, i32 noundef %84) #11
  %88 = load i32, ptr %82, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %75
  store ptr %76, ptr %7, align 4
  br label %106

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3
  %93 = load i8, ptr %92, align 8
  %94 = load ptr, ptr %4, align 4
  switch i8 %93, label %105 [
    i8 1, label %95
    i8 2, label %97
    i8 3, label %99
  ]

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.hci_dev, ptr %94, i32 0, i32 199, i32 2
  br label %101

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.hci_dev, ptr %94, i32 0, i32 199, i32 4
  br label %101

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.hci_dev, ptr %94, i32 0, i32 199, i32 6
  br label %101

101:                                              ; preds = %99, %97, %95
  %102 = phi ptr [ %100, %99 ], [ %98, %97 ], [ %96, %95 ]
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %91
  tail call void @kfree_skb_reason(ptr noundef nonnull %76, i32 noundef 0) #11
  br label %17

106:                                              ; preds = %90, %73
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %6) #11
  %107 = load volatile i32, ptr %6, align 4
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %16

110:                                              ; preds = %106
  tail call void @wake_up_bit(ptr noundef %6, i32 noundef 1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_close(ptr nocapture noundef %0) #0 {
  %2 = tail call i32 @hci_uart_flush(ptr noundef %0)
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 228
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_free_rwsem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_flush(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #11
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %1
  tail call void @tty_ldisc_flush(ptr noundef %4) #11
  tail call void @tty_driver_flush_buffer(ptr noundef %4) #11
  %10 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !10

13:                                               ; preds = %9
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %15 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #8, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #11, !srcloc !13
  br label %27

25:                                               ; preds = %9
  %26 = tail call zeroext i1 @__percpu_down_read(ptr noundef %10, i1 noundef zeroext false) #11
  br label %27

27:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %28 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.hci_uart_proto, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %3) #11
  br label %38

38:                                               ; preds = %32, %27
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %39 = load volatile i32, ptr %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53, !prof !10

41:                                               ; preds = %38
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %43 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #8, !srcloc !12
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #11, !srcloc !13
  br label %67

53:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %55 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #8, !srcloc !12
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #11, !srcloc !13
  %65 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 8, i32 2
  %66 = tail call i32 @rcuwait_wake_up(ptr noundef %65) #11
  br label %67

67:                                               ; preds = %53, %41
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hci_uart_open(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 228
  store ptr @hci_uart_flush, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_send_frame(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20, !prof !10

8:                                                ; preds = %2
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %10 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #8, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #11, !srcloc !13
  br label %22

20:                                               ; preds = %2
  %21 = tail call zeroext i1 @__percpu_down_read(ptr noundef %5, i1 noundef zeroext false) #11
  br label %22

22:                                               ; preds = %20, %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %23 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 3
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %28 = load volatile i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42, !prof !10

30:                                               ; preds = %27
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %32 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #8, !srcloc !12
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #11, !srcloc !13
  br label %56

42:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %44 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #8, !srcloc !12
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #11, !srcloc !13
  %54 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 2
  %55 = tail call i32 @rcuwait_wake_up(ptr noundef %54) #11
  br label %56

56:                                               ; preds = %42, %30
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %93

57:                                               ; preds = %22
  %58 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hci_uart_proto, ptr %59, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %4, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %63 = load volatile i32, ptr %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77, !prof !10

65:                                               ; preds = %57
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %67 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #8, !srcloc !12
  %73 = add i32 %72, %69
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  store i32 %76, ptr %74, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #11, !srcloc !13
  br label %91

77:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %79 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %83) #8, !srcloc !12
  %85 = add i32 %84, %81
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #11, !srcloc !13
  %89 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 8, i32 2
  %90 = tail call i32 @rcuwait_wake_up(ptr noundef %89) #11
  br label %91

91:                                               ; preds = %77, %65
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %92 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %4)
  br label %93

93:                                               ; preds = %91, %56
  %94 = phi i32 [ 0, %91 ], [ -49, %56 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_setup(ptr noundef %0) #0 {
  %2 = alloca %struct.ktermios, align 4
  %3 = alloca %struct.ktermios, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hci_uart_proto, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9, %1
  %16 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %17 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #11
  %18 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %18, i32 44, i1 false) #11
  %19 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -4112
  store i32 %21, ptr %19, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %3, i32 noundef %16, i32 noundef %16) #11
  %22 = call i32 @tty_set_termios(ptr noundef %17, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #11
  br label %23

23:                                               ; preds = %15, %9
  %24 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  br i1 %26, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.hci_uart_proto, ptr %28, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ %31, %29 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 7
  %35 = getelementptr inbounds %struct.hci_uart_proto, ptr %28, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, null
  %38 = icmp ne i32 %33, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = call i32 %36(ptr noundef %5, i32 noundef %33) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #11
  %45 = getelementptr inbounds %struct.tty_struct, ptr %44, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, ptr noundef align 4 dereferenceable(44) %45, i32 44, i1 false) #11
  %46 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -4112
  store i32 %48, ptr %46, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %2, i32 noundef %33, i32 noundef %33) #11
  %49 = call i32 @tty_set_termios(ptr noundef %44, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #11
  br label %50

50:                                               ; preds = %43, %40, %32
  %51 = load ptr, ptr %34, align 4
  %52 = getelementptr inbounds %struct.hci_uart_proto, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call i32 %53(ptr noundef %5) #11
  br label %84

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 4
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %57
  %63 = call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #11
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %67 = ptrtoint ptr %63 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %66, i32 noundef %67) #11
  br label %84

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %73) #11
  br label %83

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %76, i32 0, i32 4
  %78 = load i16, ptr %77, align 1
  %79 = icmp eq i16 %78, 15
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 236
  store ptr @btbcm_set_bdaddr, ptr %81, align 8
  %82 = call i32 @btbcm_check_bdaddr(ptr noundef %0) #11
  br label %83

83:                                               ; preds = %80, %74, %72
  call void @kfree_skb_reason(ptr noundef %63, i32 noundef 0) #11
  br label %84

84:                                               ; preds = %83, %65, %57, %55
  %85 = phi i32 [ %56, %55 ], [ 0, %65 ], [ 0, %83 ], [ 0, %57 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_check_bdaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @h4_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2152257793}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 465642, i64 465703}
!12 = !{i64 484342}
!13 = !{i64 468659}
!14 = !{i64 2152265410}
!15 = !{i64 2152266041}
!16 = !{i64 2152274352}
!17 = !{i64 2152282570}
!18 = !{i64 2152249959}
!19 = !{i64 2152257576}
