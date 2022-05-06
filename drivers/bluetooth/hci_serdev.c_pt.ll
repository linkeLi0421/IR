; ModuleID = '/llk/IR/drivers/bluetooth/hci_serdev.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_serdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_uart_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_uart_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_hci_uart_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_uart_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_uart_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_hci_uart_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.serdev_device_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
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

@hci_serdev_client_ops = internal constant %struct.serdev_device_ops { ptr @hci_uart_receive_buf, ptr @hci_uart_write_wakeup }, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't allocate HCI device\0A\00", align 1
@hci_uart_register_device.rwsem_key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&hu->proto_lock\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't register HCI device\0A\00", align 1
@__kstrtab_hci_uart_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_uart_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_uart_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_uart_register_device to i32), ptr @__kstrtab_hci_uart_register_device, ptr @__kstrtabns_hci_uart_register_device }, section "___ksymtab_gpl+hci_uart_register_device", align 4
@__kstrtab_hci_uart_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_uart_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_uart_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_uart_unregister_device to i32), ptr @__kstrtab_hci_uart_unregister_device, ptr @__kstrtabns_hci_uart_unregister_device }, section "___ksymtab_gpl+hci_uart_unregister_device", align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"drivers/bluetooth/hci_serdev.c\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: Failed to set baudrate\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: Reading local version info failed (%ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: Event length mismatch for version info\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_hci_uart_register_device, ptr @__ksymtab_hci_uart_unregister_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_uart_register_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.serdev_device, ptr %4, i32 0, i32 3
  store ptr @hci_serdev_client_ops, ptr %5, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @serdev_device_open(ptr noundef %6) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %91

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hci_uart_proto, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %88

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 7
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %16) #2
  %17 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #2
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #2
  br label %83

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  store ptr %17, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 5
  store i8 3, ptr %22, align 2
  %23 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 204, i32 8
  store ptr %0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 5
  store i32 -32, ptr %24, align 4
  %25 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 5, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 5, i32 2
  store ptr @hci_uart_init_work, ptr %27, align 4
  %28 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 6
  store i32 -32, ptr %28, align 4
  %29 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 6, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 6, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 6, i32 2
  store ptr @hci_uart_write_work, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 8
  %33 = tail call i32 @__percpu_init_rwsem(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @hci_uart_register_device.rwsem_key) #2
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.hci_uart_proto, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.hci_uart_proto, ptr %34, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 31
  store i16 %41, ptr %42, align 2
  br label %43

43:                                               ; preds = %38, %20
  %44 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 226
  store ptr @hci_uart_open, ptr %44, align 8
  %45 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 227
  store ptr @hci_uart_close, ptr %45, align 4
  %46 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 228
  store ptr @hci_uart_flush, ptr %46, align 8
  %47 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 231
  store ptr @hci_uart_send_frame, ptr %47, align 4
  %48 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 229
  store ptr @hci_uart_setup, ptr %48, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 204, i32 1
  store ptr %49, ptr %50, align 4
  %51 = load volatile i32, ptr %16, align 4
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 16, ptr noundef %55) #2
  br label %56

56:                                               ; preds = %54, %43
  %57 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 4
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 1, ptr noundef %62) #2
  br label %63

63:                                               ; preds = %61, %56
  %64 = load volatile i32, ptr %57, align 4
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 6, ptr noundef %68) #2
  br label %69

69:                                               ; preds = %67, %63
  %70 = load volatile i32, ptr %57, align 4
  %71 = trunc i32 %70 to i8
  %72 = lshr i8 %71, 2
  %73 = and i8 %72, 1
  %74 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 6
  store i8 %73, ptr %74, align 1
  %75 = load volatile i32, ptr %57, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = tail call i32 @hci_register_dev(ptr noundef nonnull %17) #2
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #2
  tail call void @hci_free_dev(ptr noundef nonnull %17) #2
  br label %83

82:                                               ; preds = %78
  tail call void @_set_bit(i32 noundef 1, ptr noundef %16) #2
  br label %91

83:                                               ; preds = %81, %19
  %84 = phi i32 [ -19, %81 ], [ -12, %19 ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %16) #2
  %85 = getelementptr inbounds %struct.hci_uart_proto, ptr %1, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %86(ptr noundef %0) #2
  br label %88

88:                                               ; preds = %83, %9
  %89 = phi i32 [ %12, %9 ], [ %84, %83 ]
  %90 = load ptr, ptr %3, align 4
  tail call void @serdev_device_close(ptr noundef %90) #2
  br label %91

91:                                               ; preds = %88, %82, %69, %2
  %92 = phi i32 [ %89, %88 ], [ 0, %82 ], [ %7, %2 ], [ 0, %69 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_init_work(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_uart_write_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 80
  %8 = getelementptr i8, ptr %0, i32 76
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = getelementptr i8, ptr %0, i32 16
  %11 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 199, i32 9
  br label %12

12:                                               ; preds = %55, %1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %7) #2
  br label %13

13:                                               ; preds = %54, %12
  %14 = load ptr, ptr %8, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load volatile i32, ptr %9, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %21

20:                                               ; preds = %13
  store ptr null, ptr %8, align 4
  br label %27

21:                                               ; preds = %16
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr inbounds %struct.hci_uart_proto, ptr %22, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr %24(ptr noundef %2) #2
  %26 = icmp eq ptr %25, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %21, %20
  %28 = phi ptr [ %14, %20 ], [ %25, %21 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @serdev_device_write_buf(ptr noundef %4, ptr noundef %30, i32 noundef %32) #2
  %34 = load i32, ptr %11, align 4
  %35 = add i32 %34, %33
  store i32 %35, ptr %11, align 4
  %36 = tail call ptr @skb_pull(ptr noundef nonnull %28, i32 noundef %33) #2
  %37 = load i32, ptr %31, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  store ptr %28, ptr %8, align 4
  br label %55

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3
  %42 = load i8, ptr %41, align 8
  %43 = load ptr, ptr %5, align 4
  switch i8 %42, label %54 [
    i8 1, label %44
    i8 2, label %46
    i8 3, label %48
  ]

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 199, i32 2
  br label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 199, i32 4
  br label %50

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 199, i32 6
  br label %50

50:                                               ; preds = %48, %46, %44
  %51 = phi ptr [ %49, %48 ], [ %47, %46 ], [ %45, %44 ]
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %40
  tail call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #2
  br label %13

55:                                               ; preds = %39, %21, %16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #2
  %56 = load volatile i32, ptr %7, align 4
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %12

59:                                               ; preds = %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_open(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @serdev_device_open(ptr noundef %10) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #2
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 228
  store ptr @hci_uart_flush, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ 0, %14 ], [ %11, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #2
  store ptr null, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @serdev_device_write_flush(ptr noundef %15) #2
  %16 = load volatile i32, ptr %4, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hci_uart_proto, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %3) #2
  br label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 228
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 4096
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %4) #2
  %32 = load ptr, ptr %14, align 4
  tail call void @serdev_device_close(ptr noundef %32) #2
  br label %33

33:                                               ; preds = %31, %25, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_flush(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #2
  store ptr null, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @serdev_device_write_flush(ptr noundef %10) #2
  %11 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hci_uart_proto, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %3) #2
  br label %21

21:                                               ; preds = %15, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_send_frame(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hci_uart_proto, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %1) #2
  %10 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %4) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hci_uart_proto, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %11, %7 ], [ %5, %1 ]
  %15 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @serdev_device_set_baudrate(ptr noundef %16, i32 noundef %14) #2
  br label %18

18:                                               ; preds = %13, %7
  %19 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hci_uart_proto, ptr %23, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %26, %24 ], [ %20, %18 ]
  %29 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 7
  %30 = getelementptr inbounds %struct.hci_uart_proto, ptr %23, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ne ptr %31, null
  %33 = icmp ne i32 %28, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = tail call i32 %31(ptr noundef %3, i32 noundef %28) #2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %39) #2
  br label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @serdev_device_set_baudrate(ptr noundef %42, i32 noundef %28) #2
  br label %44

44:                                               ; preds = %40, %38, %27
  %45 = load ptr, ptr %29, align 4
  %46 = getelementptr inbounds %struct.hci_uart_proto, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 %47(ptr noundef %3) #2
  br label %69

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 4
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #2
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %61 = ptrtoint ptr %57 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %60, i32 noundef %61) #2
  br label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 9
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %67) #2
  br label %68

68:                                               ; preds = %66, %62
  tail call void @kfree_skb_reason(ptr noundef %57, i32 noundef 0) #2
  br label %69

69:                                               ; preds = %68, %59, %51, %49
  %70 = phi i32 [ %50, %49 ], [ 0, %59 ], [ 0, %68 ], [ 0, %51 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_uart_unregister_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 5
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #2
  %6 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @hci_unregister_dev(ptr noundef %3) #2
  br label %11

11:                                               ; preds = %10, %1
  tail call void @hci_free_dev(ptr noundef %3) #2
  %12 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 6
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #2
  %14 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hci_uart_proto, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0) #2
  %19 = load volatile i32, ptr %6, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %6) #2
  %23 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @serdev_device_close(ptr noundef %24) #2
  br label %25

25:                                               ; preds = %22, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_uart_receive_buf(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #2
  br label %30

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hci_uart_proto, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #2
  %23 = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 199, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %2
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %17, %12, %11
  %31 = phi i32 [ 0, %11 ], [ 0, %12 ], [ %2, %26 ], [ %2, %17 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_uart_write_wakeup(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 247, i32 noundef 9, ptr noundef null) #2
  br label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @hci_uart_tx_wakeup(ptr noundef nonnull %3) #2
  br label %17

17:                                               ; preds = %15, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
