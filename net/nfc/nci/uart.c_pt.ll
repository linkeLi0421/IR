; ModuleID = '/llk/IR/net/nfc/nci/uart.c_pt.bc'
source_filename = "../net/nfc/nci/uart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_uart_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_uart_register\22\09\09\09\09\09"
module asm "__kstrtabns_nci_uart_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_uart_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_uart_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nci_uart_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_uart_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_uart_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_nci_uart_set_config:\09\09\09\09\09"
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
%struct.nci_uart = type { ptr, %struct.nci_uart_ops, ptr, i32, ptr, %struct.spinlock, %struct.work_struct, ptr, i32, %struct.sk_buff_head, ptr, ptr, i32, ptr }
%struct.nci_uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.87, i32, %struct.spinlock }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.sk_buff = type { %union.anon.67, %union.anon.70, %union.anon.71, [48 x i8], %union.anon.72, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.74, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr, %union.anon.69 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%union.anon.71 = type { i64 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.76, i32, i32, i32, i16, i16, %union.anon.78, %union.anon.79, %union.anon.80, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.76 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i16 }

@nci_uart_drivers = internal unnamed_addr global [1 x ptr] zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"\013driver %d is already registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\016NCI uart driver '%s [%d]' registered\0A\00", align 1
@__kstrtab_nci_uart_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_uart_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_uart_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_uart_register to i32), ptr @__kstrtab_nci_uart_register, ptr @__kstrtabns_nci_uart_register }, section "___ksymtab_gpl+nci_uart_register", align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\016NCI uart driver '%s [%d]' unregistered\0A\00", align 1
@__kstrtab_nci_uart_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_uart_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_uart_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_uart_unregister to i32), ptr @__kstrtab_nci_uart_unregister, ptr @__kstrtabns_nci_uart_unregister }, section "___ksymtab_gpl+nci_uart_unregister", align 4
@__kstrtab_nci_uart_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_uart_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_uart_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_uart_set_config to i32), ptr @__kstrtab_nci_uart_set_config, ptr @__kstrtabns_nci_uart_set_config }, section "___ksymtab_gpl+nci_uart_set_config", align 4
@__UNIQUE_ID_author271 = internal constant [34 x i8] c"author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [32 x i8] c"description=NFC NCI UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias274 = internal constant [19 x i8] c"alias=tty-ldisc-25\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nci_uart_ldisc = internal global %struct.tty_ldisc_ops { ptr @.str.3, i32 25, ptr @nci_uart_tty_open, ptr @nci_uart_tty_close, ptr null, ptr @nci_uart_tty_read, ptr @nci_uart_tty_write, ptr @nci_uart_tty_ioctl, ptr @nci_uart_tty_ioctl, ptr null, ptr @nci_uart_tty_poll, ptr null, ptr @nci_uart_tty_receive, ptr @nci_uart_tty_wakeup, ptr null, ptr null, ptr @__this_module }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"n_nci\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"NFC: receive data from tty but no NCI dev is attached yet, drop buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"NFC: corrupted RX packet\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_license273, ptr @__ksymtab_nci_uart_register, ptr @__ksymtab_nci_uart_set_config, ptr @__ksymtab_nci_uart_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_uart_register(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 1, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 1, i32 3
  store ptr @nci_uart_send, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [1 x ptr], ptr @nci_uart_drivers, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %18) #9
  br label %28

24:                                               ; preds = %15
  store ptr %0, ptr %19, align 4
  %25 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %26, i32 noundef %18) #9
  br label %28

28:                                               ; preds = %24, %22, %11, %7, %3, %1
  %29 = phi i32 [ -16, %22 ], [ 0, %24 ], [ -22, %11 ], [ -22, %7 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_uart_send(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 9
  tail call void @skb_queue_tail(ptr noundef %3, ptr noundef %1) #10
  %4 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 8
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #10
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %9) #10
  br label %12

12:                                               ; preds = %8, %7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_uart_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %5) #9
  %7 = load i32, ptr %4, align 4
  %8 = getelementptr [1 x ptr], ptr @nci_uart_drivers, i32 0, i32 %7
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_uart_set_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ktermios, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.nci_uart, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 11
  tail call void @down_read(ptr noundef %9) #10
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, ptr noundef align 4 dereferenceable(44) %11, i32 44, i1 false)
  %12 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 11
  tail call void @up_read(ptr noundef %12) #10
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %1) #10
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2147483647
  %17 = select i1 %13, i32 0, i32 -2147483648
  %18 = or i32 %16, %17
  store i32 %18, ptr %14, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = call i32 @tty_set_termios(ptr noundef %19, ptr noundef nonnull %4) #10
  br label %21

21:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @nci_uart_ldisc) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @nci_uart_ldisc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_uart_tty_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 65536, ptr %9, align 4
  tail call void @tty_driver_flush_buffer(ptr noundef %0) #10
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ 0, %7 ], [ -95, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_uart_tty_close(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #10
  %8 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #10
  %10 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 9
  tail call void @skb_queue_purge(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef nonnull %3) #10
  %13 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 7
  store ptr null, ptr %13, align 4
  %14 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 6
  %16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %15) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nci_uart_tty_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nci_uart_tty_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_uart_tty_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %1, 1074025728
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %9
  %12 = load ptr, ptr @nci_uart_drivers, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 100) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @nci_uart_drivers, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(100) %16, ptr noundef align 4 dereferenceable(100) %19, i32 100, i1 false) #10
  %20 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 7
  store ptr %0, ptr %20, align 4
  store ptr %16, ptr %6, align 4
  %21 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 9
  %22 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 9, i32 2
  store i32 0, ptr %22, align 8
  store ptr %21, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 9, i32 0, i32 0, i32 1
  store ptr %21, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 9, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 6
  store i32 -32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 6, i32 1
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 6, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 6, i32 2
  store ptr @nci_uart_write_work, ptr %28, align 8
  %29 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 5
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef nonnull %16) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load ptr, ptr %16, align 8
  %36 = tail call zeroext i1 @try_module_get(ptr noundef %35) #10
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.nci_uart, ptr %16, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull %16) #10
  br label %40

40:                                               ; preds = %37, %18
  %41 = phi i32 [ -2, %37 ], [ %32, %18 ]
  store ptr null, ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %16) #10
  br label %44

42:                                               ; preds = %3
  %43 = tail call i32 @n_tty_ioctl_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  br label %44

44:                                               ; preds = %42, %40, %34, %14, %11, %9, %5
  %45 = phi i32 [ %43, %42 ], [ -16, %5 ], [ -22, %9 ], [ -2, %11 ], [ -12, %14 ], [ 0, %34 ], [ %41, %40 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nci_uart_tty_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_uart_tty_receive(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nci_uart, ptr %6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %101

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nci_uart, ptr %6, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.nci_uart, ptr %6, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.nci_uart, ptr %6, i32 0, i32 11
  %21 = getelementptr inbounds %struct.nci_uart, ptr %6, i32 0, i32 12
  %22 = getelementptr inbounds %struct.nci_uart, ptr %6, i32 0, i32 1, i32 2
  br label %27

23:                                               ; preds = %12
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.4) #9
  br label %98

27:                                               ; preds = %61, %19
  %28 = phi i32 [ %3, %19 ], [ %63, %61 ]
  %29 = phi ptr [ %1, %19 ], [ %62, %61 ]
  %30 = load ptr, ptr %20, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  store i32 -1, ptr %21, align 4
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr inbounds %struct.nci_dev, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 258
  %37 = getelementptr inbounds %struct.nci_dev, ptr %33, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %36, %38
  %40 = tail call ptr @__alloc_skb(i32 noundef %39, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store ptr null, ptr %20, align 4
  br label %98

43:                                               ; preds = %32
  %44 = load i32, ptr %34, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  store ptr %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 14
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr i8, ptr %49, i32 %44
  store ptr %50, ptr %48, align 8
  store ptr %40, ptr %20, align 4
  br label %51

51:                                               ; preds = %43, %27
  %52 = phi ptr [ %40, %43 ], [ %30, %27 ]
  %53 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %29, i32 1
  %58 = load i8, ptr %29, align 1
  %59 = tail call ptr @skb_put(ptr noundef nonnull %52, i32 noundef 1) #10
  store i8 %58, ptr %59, align 1
  %60 = add nsw i32 %28, -1
  br label %61

61:                                               ; preds = %97, %76, %56
  %62 = phi ptr [ %57, %56 ], [ %82, %97 ], [ %82, %76 ]
  %63 = phi i32 [ %60, %56 ], [ %83, %97 ], [ %83, %76 ]
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %27, label %98

65:                                               ; preds = %51
  %66 = load i32, ptr %21, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %73, 3
  store i32 %74, ptr %21, align 4
  %75 = load i32, ptr %53, align 8
  br label %76

76:                                               ; preds = %68, %65
  %77 = phi i32 [ %75, %68 ], [ %54, %65 ]
  %78 = phi i32 [ %74, %68 ], [ %66, %65 ]
  %79 = sub i32 %78, %77
  %80 = tail call i32 @llvm.smin.i32(i32 %28, i32 %79) #10
  %81 = tail call ptr @skb_put(ptr noundef nonnull %52, i32 noundef %80) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %81, ptr align 1 %29, i32 %80, i1 false) #10
  %82 = getelementptr i8, ptr %29, i32 %80
  %83 = sub i32 %28, %80
  %84 = load i32, ptr %21, align 4
  %85 = load ptr, ptr %20, align 4
  %86 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %61

89:                                               ; preds = %76
  %90 = load ptr, ptr %22, align 4
  %91 = tail call i32 %90(ptr noundef nonnull %6, ptr noundef %85) #10
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr inbounds %struct.tty_struct, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.5) #9
  br label %97

97:                                               ; preds = %93, %89
  store ptr null, ptr %20, align 4
  br label %61

98:                                               ; preds = %61, %42, %23, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %99 = load i16, ptr %13, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @tty_unthrottle(ptr noundef %0) #10
  br label %101

101:                                              ; preds = %98, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_uart_tty_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 8
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %11) #10
  br label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nci_uart, ptr %3, i32 0, i32 6
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16) #10
  br label %19

19:                                               ; preds = %15, %14, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_uart_write_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = getelementptr i8, ptr %0, i32 40
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 16
  %10 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 4
  br label %11

11:                                               ; preds = %38, %1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #10
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void %12(ptr noundef %2) #10
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %37, %15
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store ptr null, ptr %7, align 4
  br label %23

20:                                               ; preds = %16
  %21 = tail call ptr @skb_dequeue(ptr noundef %8) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %17, %19 ], [ %21, %20 ]
  tail call void @_set_bit(i32 noundef 5, ptr noundef %9) #10
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr inbounds %struct.tty_operations, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 %27(ptr noundef %4, ptr noundef %29, i32 noundef %31) #10
  %33 = tail call ptr @skb_pull(ptr noundef nonnull %24, i32 noundef %32) #10
  %34 = load i32, ptr %30, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store ptr %24, ptr %7, align 4
  br label %38

37:                                               ; preds = %23
  tail call void @kfree_skb_reason(ptr noundef nonnull %24, i32 noundef 0) #10
  br label %16

38:                                               ; preds = %36, %20
  %39 = load volatile i32, ptr %5, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %11

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 -20
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %7, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load ptr, ptr %8, align 4
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void %44(ptr noundef %2) #10
  br label %53

53:                                               ; preds = %52, %49, %46, %42
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 2148934228}
!9 = !{i64 2148930052}
!10 = !{i64 2148930127, i64 2148930154, i64 2148930201, i64 2148930223, i64 2148930251, i64 2148930271}
!11 = !{i64 2148957231}
