; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_dma.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_rx_dma_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_rx_dma_flush\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_rx_dma_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_request_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_request_dma\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_request_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_release_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_release_dma\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_release_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.1 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.62, %struct.atomic_t }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }

@__kstrtab_serial8250_rx_dma_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_rx_dma_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_rx_dma_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_rx_dma_flush to i32), ptr @__kstrtab_serial8250_rx_dma_flush, ptr @__kstrtabns_serial8250_rx_dma_flush }, section "___ksymtab_gpl+serial8250_rx_dma_flush", align 4
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@__kstrtab_serial8250_request_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_request_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_request_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_request_dma to i32), ptr @__kstrtab_serial8250_request_dma, ptr @__kstrtabns_serial8250_request_dma }, section "___ksymtab_gpl+serial8250_request_dma", align 4
@__kstrtab_serial8250_release_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_release_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_release_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_release_dma to i32), ptr @__kstrtab_serial8250_release_dma, ptr @__kstrtabns_serial8250_release_dma }, section "___ksymtab_gpl+serial8250_release_dma", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_serial8250_release_dma, ptr @__ksymtab_serial8250_request_dma, ptr @__ksymtab_serial8250_rx_dma_flush], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_tx_dma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %86

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 19, i32 1
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %18, %14
  tail call void @serial8250_rpm_put_tx(ptr noundef %0) #6
  br label %86

29:                                               ; preds = %22
  %30 = sub i32 4096, %26
  %31 = add i32 %30, %24
  %32 = and i32 %31, 4095
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %30)
  %34 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 17
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %25, align 4
  %40 = add i32 %39, %38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #6, !annotation !9
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #6
  %41 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %33, ptr %42, align 4
  %43 = icmp eq ptr %36, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %29
  %45 = load ptr, ptr %36, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44, %29
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %55

52:                                               ; preds = %47
  %53 = call ptr %49(ptr noundef nonnull %36, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %51
  %56 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 19
  store i8 1, ptr %56, align 1
  br label %86

57:                                               ; preds = %52
  store i8 1, ptr %7, align 4
  %58 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 6
  store ptr @__dma_tx_complete, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 8
  store ptr %0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef nonnull %53) #6
  %63 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 14
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr %35, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %37, align 4
  call void @dma_sync_single_for_device(ptr noundef %67, i32 noundef %68, i32 noundef 4096, i32 noundef 1) #6
  %69 = load ptr, ptr %35, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 50
  %72 = load ptr, ptr %71, align 4
  call void %72(ptr noundef %69) #6
  %73 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 19
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %57
  store i8 0, ptr %73, align 1
  %77 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %78 = load i8, ptr %77, align 2
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = and i8 %78, -3
  store i8 %82, ptr %77, align 2
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  call void %85(ptr noundef %0, i32 noundef 1, i32 noundef %83) #6
  br label %86

86:                                               ; preds = %81, %76, %57, %55, %28, %1
  %87 = phi i32 [ 0, %28 ], [ -16, %55 ], [ 0, %1 ], [ 0, %57 ], [ 0, %76 ], [ 0, %81 ]
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rpm_put_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__dma_tx_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %10, i32 noundef %12, i32 noundef 4096, i32 noundef 1) #6
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #6
  %14 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 18
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = and i32 %19, 4095
  store i32 %20, ptr %17, align 4
  %21 = load i32, ptr %15, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %17, align 4
  %28 = sub i32 %26, %27
  %29 = and i32 %28, 3840
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  tail call void @uart_write_wakeup(ptr noundef %0) #6
  br label %32

32:                                               ; preds = %31, %1
  %33 = tail call i32 @serial8250_tx_dma(ptr noundef %0)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = or i8 %37, 2
  store i8 %41, ptr %36, align 2
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %0, i32 noundef 1, i32 noundef %42) #6
  br label %45

45:                                               ; preds = %40, %35, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_rx_dma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 20
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #6, !annotation !9
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #6
  %15 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %14, ptr %16, align 4
  %17 = icmp eq ptr %10, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %8
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 39
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18, %8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %40

26:                                               ; preds = %21
  %27 = call ptr %23(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  store i8 1, ptr %5, align 2
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 6
  store ptr @__dma_rx_complete, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 8
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef nonnull %27) #6
  %35 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 50
  %39 = load ptr, ptr %38, align 4
  call void %39(ptr noundef %36) #6
  br label %40

40:                                               ; preds = %29, %26, %25, %1
  %41 = phi i32 [ 0, %29 ], [ 0, %1 ], [ -16, %26 ], [ -16, %25 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__dma_rx_complete(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 20
  store i8 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %2) #6
  %16 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %6, ptr noundef %22, i8 noundef zeroext 0, i32 noundef %20) #6
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %20
  store i32 %26, ptr %24, align 4
  call void @tty_flip_buffer_push(ptr noundef %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_rx_dma_flush(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 20
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 45
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = tail call i32 %13(ptr noundef %10) #6
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.uart_8250_dma, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi ptr [ %10, %8 ], [ %19, %15 ]
  %22 = phi ptr [ %4, %8 ], [ %17, %15 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #6, !annotation !9
  %25 = getelementptr inbounds %struct.uart_8250_dma, ptr %22, i32 0, i32 20
  store i8 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.uart_8250_dma, ptr %22, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 49
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %21, i32 noundef %27, ptr noundef nonnull %2) #6
  %32 = getelementptr inbounds %struct.uart_8250_dma, ptr %22, i32 0, i32 16
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %struct.uart_8250_dma, ptr %22, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %24, ptr noundef %38, i8 noundef zeroext 0, i32 noundef %36) #6
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %36
  store i32 %42, ptr %40, align 4
  call void @tty_flip_buffer_push(ptr noundef %24) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  %43 = load ptr, ptr %9, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 47
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %20
  %49 = call i32 %46(ptr noundef %43) #6
  br label %50

50:                                               ; preds = %48, %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @serial8250_request_dma(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = alloca %struct.dma_cap_mask_t, align 4
  %5 = alloca %struct.dma_slave_caps, align 4
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ %9, %1 ]
  %16 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ %21, %19 ], [ %17, %14 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false), !annotation !9
  %24 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 5
  store i32 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 5, i32 3
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 5, i32 1
  store i32 %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 6
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 6, i32 4
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 6, i32 2
  store i32 %23, ptr %29, align 4
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %4) #6
  %30 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %36, ptr %3, align 4
  %37 = call ptr @dma_request_chan(ptr noundef %35, ptr noundef nonnull @.str) #6
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %39 = icmp eq ptr %37, null
  %40 = or i1 %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %42 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 7
  store ptr %37, ptr %42, align 4
  br label %53

43:                                               ; preds = %22
  %44 = icmp ne ptr %31, null
  %45 = icmp ne ptr %33, null
  %46 = and i1 %44, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %48 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 7
  store ptr null, ptr %48, align 4
  br label %157

49:                                               ; preds = %43
  %50 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull %31, ptr noundef nonnull %33, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %51 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 7
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %157, label %53

53:                                               ; preds = %49, %41
  %54 = phi ptr [ %42, %41 ], [ %51, %49 ]
  %55 = phi ptr [ %37, %41 ], [ %50, %49 ]
  %56 = call i32 @dma_get_slave_caps(ptr noundef nonnull %55, ptr noundef nonnull %5) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %154

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 6
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %154, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 8
  %64 = load i8, ptr %63, align 2, !range !8
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %65, i1 true, i1 %68
  br i1 %69, label %154, label %70

70:                                               ; preds = %62
  %71 = load ptr, ptr %54, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 44
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = call i32 %74(ptr noundef %71, ptr noundef %24) #6
  br label %78

78:                                               ; preds = %76, %70
  %79 = load ptr, ptr %30, align 4
  %80 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %34, align 4
  %83 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %83, ptr %2, align 4
  %84 = call ptr @dma_request_chan(ptr noundef %82, ptr noundef nonnull @.str.1) #6
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %86 = icmp eq ptr %84, null
  %87 = or i1 %85, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %89 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 8
  store ptr %84, ptr %89, align 4
  br label %100

90:                                               ; preds = %78
  %91 = icmp ne ptr %79, null
  %92 = icmp ne ptr %81, null
  %93 = and i1 %91, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %95 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 8
  store ptr null, ptr %95, align 4
  br label %154

96:                                               ; preds = %90
  %97 = call ptr @__dma_request_channel(ptr noundef nonnull %2, ptr noundef nonnull %79, ptr noundef nonnull %81, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %98 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 8
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %154, label %100

100:                                              ; preds = %96, %88
  %101 = phi ptr [ %89, %88 ], [ %98, %96 ]
  %102 = phi ptr [ %84, %88 ], [ %97, %96 ]
  %103 = call i32 @dma_get_slave_caps(ptr noundef nonnull %102, ptr noundef nonnull %5) #6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %151

105:                                              ; preds = %100
  %106 = load i8, ptr %63, align 2, !range !8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %151, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %101, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 44
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = call i32 %112(ptr noundef %109, ptr noundef %27) #6
  br label %116

116:                                              ; preds = %114, %108
  %117 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 16
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 4096, ptr %117, align 4
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32 [ 4096, %120 ], [ %118, %116 ]
  %123 = load ptr, ptr %54, align 4
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 15
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 11
  %128 = call ptr @dma_alloc_attrs(ptr noundef %126, i32 noundef %122, ptr noundef %127, i32 noundef 3264, i32 noundef 0) #6
  %129 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 15
  store ptr %128, ptr %129, align 4
  %130 = icmp eq ptr %128, null
  br i1 %130, label %151, label %131

131:                                              ; preds = %121
  %132 = load ptr, ptr %101, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.dma_device, ptr %133, i32 0, i32 15
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.uart_state, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = call fastcc i32 @dma_map_single_attrs(ptr noundef %135, ptr noundef %139)
  %141 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 12
  store i32 %140, ptr %141, align 4
  %142 = icmp eq i32 %140, -1
  br i1 %142, label %143, label %157

143:                                              ; preds = %131
  %144 = load ptr, ptr %54, align 4
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.dma_device, ptr %145, i32 0, i32 15
  %147 = load ptr, ptr %146, align 4
  %148 = load i32, ptr %117, align 4
  %149 = load ptr, ptr %129, align 4
  %150 = load i32, ptr %127, align 4
  call void @dma_free_attrs(ptr noundef %147, i32 noundef %148, ptr noundef %149, i32 noundef %150, i32 noundef 0) #6
  br label %151

151:                                              ; preds = %143, %121, %105, %100
  %152 = phi i32 [ %103, %100 ], [ -12, %143 ], [ -22, %105 ], [ -12, %121 ]
  %153 = load ptr, ptr %101, align 4
  call void @dma_release_channel(ptr noundef %153) #6
  br label %154

154:                                              ; preds = %151, %96, %94, %62, %58, %53
  %155 = phi i32 [ %56, %53 ], [ %152, %151 ], [ -22, %62 ], [ -22, %58 ], [ -19, %96 ], [ -19, %94 ]
  %156 = load ptr, ptr %54, align 4
  call void @dma_release_channel(ptr noundef %156) #6
  br label %157

157:                                              ; preds = %154, %131, %49, %47
  %158 = phi i32 [ %155, %154 ], [ -19, %49 ], [ 0, %131 ], [ -19, %47 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %158
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #6
  %4 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %16, !prof !10

7:                                                ; preds = %2
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %8 = tail call ptr @dev_driver_string(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %8, ptr noundef %15) #6
  br label %16

16:                                               ; preds = %14, %2
  br i1 %3, label %25, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %1 to i32
  %20 = add i32 %19, 1073741824
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %19, 4095
  %24 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %22, i32 noundef %23, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  br label %25

25:                                               ; preds = %17, %16
  %26 = phi i32 [ %24, %17 ], [ -1, %16 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @serial8250_release_dma(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = tail call i32 %10(ptr noundef %7) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 48
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void %18(ptr noundef %7) #6
  br label %21

21:                                               ; preds = %20, %15, %12, %5
  %22 = load ptr, ptr %6, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #6
  %32 = load ptr, ptr %6, align 4
  tail call void @dma_release_channel(ptr noundef %32) #6
  store ptr null, ptr %6, align 4
  %33 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 47
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %21
  %40 = tail call i32 %37(ptr noundef %34) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load ptr, ptr %34, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 48
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void %45(ptr noundef %34) #6
  br label %48

48:                                               ; preds = %47, %42, %39, %21
  %49 = load ptr, ptr %33, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %54, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %55 = load ptr, ptr %33, align 4
  tail call void @dma_release_channel(ptr noundef %55) #6
  store ptr null, ptr %33, align 4
  %56 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 18
  store i8 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
