; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_mtk.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_mtk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mtk8250_data = type { i32, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_8250_mtk__229_674_mtk8250_platform_driver_init6 = internal global ptr @mtk8250_platform_driver_init, section ".initcall6.init", align 4
@mtk8250_platform_driver = internal global %struct.platform_driver { ptr @mtk8250_probe, ptr @mtk8250_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk8250_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk8250_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mtk8250_platform_driver_exit = internal global ptr @mtk8250_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID___earlycon_mtk8250230 = internal constant %struct.earlycon_id { [15 x i8] c"mtk8250\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"mediatek,mt6577-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_mtk8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_author231 = internal constant [33 x i8] c"8250_mtk.author=Matthias Brugger\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [47 x i8] c"8250_mtk.file=drivers/tty/serial/8250/8250_mtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [21 x i8] c"8250_mtk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [54 x i8] c"8250_mtk.description=Mediatek 8250 serial port driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"mt6577-uart\00", align 1
@mtk8250_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mtk8250_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk8250_suspend, ptr @mtk8250_resume, ptr @mtk8250_suspend, ptr @mtk8250_resume, ptr @mtk8250_suspend, ptr @mtk8250_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk8250_runtime_suspend, ptr @mtk8250_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"no registers defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Can't get uart clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@__const.mtk8250_set_termios.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 1, i16 5, i16 21, i16 85, i16 87, i16 87, i16 119, i16 127, i16 255, i16 255], align 2
@__const.mtk8250_set_termios.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@.str.6 = private unnamed_addr constant [38 x i8] c"\013failed to configure rx dma channel\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\013failed to configure tx dma channel\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\013failed to prepare rx slave single\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Can't enable bus clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"failed to enable irq wake on IRQ %d: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___earlycon_mtk8250230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_mtk8250_platform_driver_exit, ptr @__initcall__kmod_8250_mtk__229_674_mtk8250_platform_driver_init6, ptr @mtk8250_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk8250_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk8250_platform_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk8250_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk8250_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_mtk8250_setup(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 26
  store i8 3, ptr %7, align 2
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 25
  store i8 2, ptr %8, align 1
  %9 = tail call i32 @early_serial8250_setup(ptr noundef %0, ptr noundef null) #7
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %3, i8 0, i32 456, i1 false)
  %4 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %109, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %8, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #8
  br label %109

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @devm_ioremap(ptr noundef %9, i32 noundef %12, i32 noundef %16) #7
  %18 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %109, label %20

20:                                               ; preds = %11
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 32, i32 noundef 3520) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %109, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mtk8250_data, ptr %21, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %109, label %28

28:                                               ; preds = %23
  %29 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.2) #7
  %30 = getelementptr inbounds %struct.mtk8250_data, ptr %21, i32 0, i32 3
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef null) #7
  store ptr %33, ptr %30, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  br label %53

36:                                               ; preds = %28
  %37 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %38 = getelementptr inbounds %struct.mtk8250_data, ptr %21, i32 0, i32 4
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mtk8250_data, ptr %21, i32 0, i32 5
  store ptr null, ptr %41, align 4
  %42 = load ptr, ptr %25, align 8
  %43 = tail call i32 @of_property_read_string_helper(ptr noundef %42, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 164, i32 noundef 3520) #7
  store ptr %46, ptr %41, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %109, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.uart_8250_dma, ptr %46, i32 0, i32 2
  store ptr @mtk8250_dma_filter, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uart_8250_dma, ptr %46, i32 0, i32 16
  store i32 32768, ptr %50, align 4
  %51 = getelementptr inbounds %struct.uart_8250_dma, ptr %46, i32 0, i32 5, i32 5
  store i32 32768, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_8250_dma, ptr %46, i32 0, i32 6, i32 6
  store i32 1, ptr %52, align 4
  br label %58

53:                                               ; preds = %36, %35
  %54 = phi ptr [ %33, %35 ], [ %29, %36 ]
  %55 = phi ptr [ %33, %35 ], [ %37, %36 ]
  %56 = ptrtoint ptr %55 to i32
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %109

58:                                               ; preds = %53, %48, %40, %32
  %59 = phi ptr [ %29, %40 ], [ %29, %48 ], [ %33, %32 ], [ %54, %53 ]
  store i32 0, ptr %2, align 4
  %60 = load i32, ptr %7, align 4
  %61 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %4, ptr %62, align 4
  %63 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @mtk8250_do_pm, ptr %63, align 4
  %64 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 3, ptr %64, align 4
  %65 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 805306368, ptr %65, align 4
  %66 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %9, ptr %66, align 4
  %67 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 3, ptr %67, align 2
  %68 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %68, align 1
  %69 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %21, ptr %69, align 4
  %70 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @mtk8250_shutdown, ptr %70, align 4
  %71 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @mtk8250_startup, ptr %71, align 4
  %72 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 5
  store ptr @mtk8250_set_termios, ptr %72, align 4
  %73 = tail call i32 @clk_get_rate(ptr noundef %59) #7
  %74 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.mtk8250_data, ptr %21, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %58
  %79 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 19
  store ptr %76, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %81 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #7, !srcloc !9
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %82, align 8
  tail call void @pm_runtime_enable(ptr noundef %9) #7
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.mtk8250_data, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.mtk8250_data, ptr %83, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @clk_prepare(ptr noundef %89) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = tail call i32 @clk_enable(ptr noundef %89) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @clk_unprepare(ptr noundef %89) #7
  br label %99

96:                                               ; preds = %92
  %97 = load i32, ptr %84, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %84, align 4
  br label %101

99:                                               ; preds = %95, %87
  %100 = phi i32 [ %93, %95 ], [ %90, %87 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.9) #8
  br label %107

101:                                              ; preds = %96, %80
  %102 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #7
  store i32 %102, ptr %21, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #7
  %106 = getelementptr inbounds %struct.mtk8250_data, ptr %21, i32 0, i32 7
  store i32 %105, ptr %106, align 4
  br label %109

107:                                              ; preds = %101, %99
  %108 = phi i32 [ %100, %99 ], [ %102, %101 ]
  call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #7
  br label %109

109:                                              ; preds = %107, %104, %53, %45, %23, %20, %11, %10, %1
  %110 = phi i32 [ %108, %107 ], [ 0, %104 ], [ -22, %10 ], [ %4, %1 ], [ -12, %11 ], [ -12, %20 ], [ %56, %53 ], [ -19, %23 ], [ -12, %45 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #7
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %6 = load i32, ptr %3, align 4
  tail call void @serial8250_unregister_port(i32 noundef %6) #7
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #7, !srcloc !12
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 8
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @serial8250_get_port(i32 noundef %18) #7
  %20 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 3
  br label %21

21:                                               ; preds = %21, %16
  %22 = load ptr, ptr %20, align 4
  %23 = tail call i32 %22(ptr noundef %19, i32 noundef 24) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mtk8250_data, ptr %17, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mtk8250_data, ptr %17, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  %32 = load i32, ptr %26, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %26, align 4
  br label %34

34:                                               ; preds = %29, %25, %12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk8250_do_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mtk8250_data, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mtk8250_data, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %54

22:                                               ; preds = %18
  %23 = load i32, ptr %10, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %10, align 4
  %25 = load ptr, ptr %6, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = phi ptr [ %7, %5 ], [ %25, %22 ]
  %28 = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 4) #7
  tail call void @serial8250_do_pm(ptr noundef %0, i32 noundef 0, i32 noundef %2) #7
  br label %55

29:                                               ; preds = %3
  tail call void @serial8250_do_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 4) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr @serial8250_get_port(i32 noundef %38) #7
  %40 = getelementptr inbounds %struct.uart_port, ptr %39, i32 0, i32 3
  br label %41

41:                                               ; preds = %41, %34
  %42 = load ptr, ptr %40, align 4
  %43 = tail call i32 %42(ptr noundef %39, i32 noundef 24) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mtk8250_data, ptr %37, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mtk8250_data, ptr %37, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %51) #7
  tail call void @clk_unprepare(ptr noundef %51) #7
  %52 = load i32, ptr %46, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %46, align 4
  br label %55

54:                                               ; preds = %21, %13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.9) #8
  tail call void @serial8250_do_pm(ptr noundef %0, i32 noundef 0, i32 noundef %2) #7
  br label %55

55:                                               ; preds = %54, %49, %45, %29, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk8250_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk8250_data, ptr %7, i32 0, i32 6
  store i32 2, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %1
  tail call void @serial8250_do_shutdown(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  store ptr null, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %7, %1
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.uart_state, ptr %23, i32 0, i32 2, i32 2
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 2, i32 1
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %28, i8 0, i32 44, i1 false)
  %29 = tail call i32 @serial8250_do_startup(ptr noundef %0) #7
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk8250_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.scatterlist, align 4
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %109, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.console, ptr %10, i32 0, i32 9
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %21 = load ptr, ptr %20, align 4
  tail call void @devm_kfree(ptr noundef %21, ptr noundef nonnull %6) #7
  store ptr null, ptr %5, align 4
  br label %109

22:                                               ; preds = %12, %8
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, i32 noundef 3) #7
  %28 = getelementptr inbounds %struct.mtk8250_data, ptr %24, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %109

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 16
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 5, i32 7
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 5, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 6
  %39 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 6, i32 8
  store i32 4096, ptr %39, align 4
  %40 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 6, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %0, i32 noundef 2, i32 noundef 7) #7
  %45 = load ptr, ptr %43, align 4
  tail call void %45(ptr noundef %0, i32 noundef 19, i32 noundef 7) #7
  %46 = load ptr, ptr %43, align 4
  tail call void %46(ptr noundef %0, i32 noundef 3, i32 noundef 191) #7
  %47 = load ptr, ptr %43, align 4
  tail call void %47(ptr noundef %0, i32 noundef 2, i32 noundef 16) #7
  %48 = load ptr, ptr %43, align 4
  tail call void %48(ptr noundef %0, i32 noundef 3, i32 noundef %27) #7
  %49 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 44
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %31
  %56 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 5
  %57 = tail call i32 %53(ptr noundef %50, ptr noundef %56) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %31
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %64, i32 0, i32 44
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = tail call i32 %66(ptr noundef %63, ptr noundef %38) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %61
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %73

73:                                               ; preds = %71, %68
  store i32 1, ptr %28, align 4
  %74 = getelementptr inbounds %struct.mtk8250_data, ptr %24, i32 0, i32 1
  store i32 0, ptr %74, align 4
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr inbounds %struct.uart_8250_dma, ptr %75, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.uart_8250_dma, ptr %75, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.uart_8250_dma, ptr %75, i32 0, i32 16
  %81 = load i32, ptr %80, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #7, !annotation !14
  call void @sg_init_table(ptr noundef nonnull %4, i32 noundef 1) #7
  %82 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  store i32 %79, ptr %82, align 4
  %83 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 4
  store i32 %81, ptr %83, align 4
  %84 = icmp eq ptr %77, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %73
  %86 = load ptr, ptr %77, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 39
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %85, %73
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %96

93:                                               ; preds = %88
  %94 = call ptr %90(ptr noundef nonnull %77, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %92
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %109

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %94, i32 0, i32 6
  store ptr @mtk8250_dma_rx_complete, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %94, i32 0, i32 8
  store ptr %0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %94, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 %102(ptr noundef nonnull %94) #7
  %104 = getelementptr inbounds %struct.uart_8250_dma, ptr %75, i32 0, i32 13
  store i32 %103, ptr %104, align 4
  %105 = load ptr, ptr %76, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 50
  %108 = load ptr, ptr %107, align 4
  call void %108(ptr noundef %105) #7
  br label %109

109:                                              ; preds = %98, %96, %22, %19, %3
  %110 = call i32 @tty_termios_baud_rate(ptr noundef %1) #7
  call void @serial8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef null) #7
  call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %110, i32 noundef %110) #7
  %111 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %112 = load i32, ptr %111, align 4
  %113 = udiv i32 %112, 1048560
  %114 = call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %113, i32 noundef %112) #7
  %115 = icmp ult i32 %114, 115200
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  br i1 %115, label %118, label %120

118:                                              ; preds = %109
  call void %117(ptr noundef %0, i32 noundef 9, i32 noundef 0) #7
  %119 = call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %114) #7
  br label %126

120:                                              ; preds = %109
  call void %117(ptr noundef %0, i32 noundef 9, i32 noundef 3) #7
  %121 = load i32, ptr %111, align 4
  %122 = shl i32 %114, 8
  %123 = add i32 %122, -1
  %124 = add i32 %123, %121
  %125 = udiv i32 %124, %122
  br label %126

126:                                              ; preds = %120, %118
  %127 = phi i32 [ %119, %118 ], [ %125, %120 ]
  %128 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %129 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  call void @uart_update_timeout(ptr noundef %0, i32 noundef %130, i32 noundef %114) #7
  %131 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %132 = load i8, ptr %131, align 1
  %133 = or i8 %132, -128
  %134 = zext i8 %133 to i32
  %135 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  call void %136(ptr noundef %0, i32 noundef 3, i32 noundef %134) #7
  %137 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %138 = load ptr, ptr %137, align 4
  call void %138(ptr noundef %0, i32 noundef %127) #7
  %139 = load i8, ptr %131, align 1
  %140 = zext i8 %139 to i32
  %141 = load ptr, ptr %135, align 4
  call void %141(ptr noundef %0, i32 noundef 3, i32 noundef %140) #7
  %142 = icmp ugt i32 %114, 115199
  br i1 %142, label %143, label %169

143:                                              ; preds = %126
  %144 = load i32, ptr %111, align 4
  %145 = mul i32 %127, %114
  %146 = udiv i32 %144, %145
  %147 = add i32 %146, -1
  %148 = load ptr, ptr %135, align 4
  call void %148(ptr noundef %0, i32 noundef 10, i32 noundef %147) #7
  %149 = lshr i32 %147, 1
  %150 = add nsw i32 %149, -1
  %151 = load ptr, ptr %135, align 4
  call void %151(ptr noundef %0, i32 noundef 11, i32 noundef %150) #7
  %152 = load i32, ptr %111, align 4
  %153 = mul i32 %152, 100
  %154 = udiv i32 %153, %114
  %155 = udiv i32 %154, %127
  %156 = trunc i32 %155 to i16
  %157 = urem i16 %156, 100
  %158 = trunc i16 %157 to i8
  %159 = add nuw nsw i8 %158, 5
  %160 = udiv i8 %159, 10
  %161 = zext i8 %160 to i32
  %162 = getelementptr [11 x i16], ptr @__const.mtk8250_set_termios.fraction_L_mapping, i32 0, i32 %161
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = load ptr, ptr %135, align 4
  call void %165(ptr noundef %0, i32 noundef 21, i32 noundef %164) #7
  %166 = getelementptr [11 x i16], ptr @__const.mtk8250_set_termios.fraction_M_mapping, i32 0, i32 %161
  %167 = load i16, ptr %166, align 2
  %168 = zext i16 %167 to i32
  br label %173

169:                                              ; preds = %126
  %170 = load ptr, ptr %135, align 4
  call void %170(ptr noundef %0, i32 noundef 10, i32 noundef 0) #7
  %171 = load ptr, ptr %135, align 4
  call void %171(ptr noundef %0, i32 noundef 11, i32 noundef 255) #7
  %172 = load ptr, ptr %135, align 4
  call void %172(ptr noundef %0, i32 noundef 21, i32 noundef 0) #7
  br label %173

173:                                              ; preds = %169, %143
  %174 = phi i32 [ 0, %169 ], [ %168, %143 ]
  %175 = load ptr, ptr %135, align 4
  call void %175(ptr noundef %0, i32 noundef 22, i32 noundef %174) #7
  %176 = load i32, ptr %129, align 4
  %177 = load i32, ptr %1, align 4
  %178 = lshr i32 %177, 31
  %179 = icmp sgt i32 %177, -1
  %180 = select i1 %179, i32 2, i32 1
  %181 = icmp slt i32 %176, 0
  %182 = select i1 %181, i32 %180, i32 %178
  %183 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  %185 = call i32 %184(ptr noundef %0, i32 noundef 3) #7
  %186 = load ptr, ptr %135, align 4
  call void %186(ptr noundef %0, i32 noundef 3, i32 noundef 191) #7
  %187 = load ptr, ptr %135, align 4
  call void %187(ptr noundef %0, i32 noundef 2, i32 noundef 16) #7
  %188 = load ptr, ptr %135, align 4
  call void %188(ptr noundef %0, i32 noundef 3, i32 noundef %185) #7
  %189 = load ptr, ptr %183, align 4
  %190 = call i32 %189(ptr noundef %0, i32 noundef 3) #7
  switch i32 %182, label %256 [
    i32 0, label %191
    i32 2, label %203
    i32 1, label %221
  ]

191:                                              ; preds = %173
  %192 = load ptr, ptr %135, align 4
  call void %192(ptr noundef %0, i32 noundef 16, i32 noundef 119) #7
  %193 = load ptr, ptr %135, align 4
  call void %193(ptr noundef %0, i32 noundef 17, i32 noundef 0) #7
  %194 = load ptr, ptr %135, align 4
  call void %194(ptr noundef %0, i32 noundef 3, i32 noundef 191) #7
  %195 = load ptr, ptr %183, align 4
  %196 = call i32 %195(ptr noundef %0, i32 noundef 2) #7
  %197 = and i32 %196, -208
  %198 = load ptr, ptr %135, align 4
  call void %198(ptr noundef %0, i32 noundef 2, i32 noundef %197) #7
  %199 = load ptr, ptr %135, align 4
  call void %199(ptr noundef %0, i32 noundef 3, i32 noundef %190) #7
  %200 = load ptr, ptr %183, align 4
  %201 = call i32 %200(ptr noundef %0, i32 noundef 1) #7
  %202 = and i32 %201, -225
  br label %253

203:                                              ; preds = %173
  %204 = load ptr, ptr %135, align 4
  call void %204(ptr noundef %0, i32 noundef 16, i32 noundef 119) #7
  %205 = load ptr, ptr %135, align 4
  call void %205(ptr noundef %0, i32 noundef 17, i32 noundef 0) #7
  %206 = load ptr, ptr %135, align 4
  call void %206(ptr noundef %0, i32 noundef 4, i32 noundef 2) #7
  %207 = load ptr, ptr %135, align 4
  call void %207(ptr noundef %0, i32 noundef 3, i32 noundef 191) #7
  %208 = load ptr, ptr %183, align 4
  %209 = call i32 %208(ptr noundef %0, i32 noundef 2) #7
  %210 = and i32 %209, -208
  %211 = or i32 %210, 192
  %212 = load ptr, ptr %135, align 4
  call void %212(ptr noundef %0, i32 noundef 2, i32 noundef %211) #7
  %213 = load ptr, ptr %135, align 4
  call void %213(ptr noundef %0, i32 noundef 3, i32 noundef %190) #7
  %214 = load ptr, ptr %183, align 4
  %215 = call i32 %214(ptr noundef %0, i32 noundef 1) #7
  %216 = and i32 %215, -33
  %217 = load ptr, ptr %135, align 4
  call void %217(ptr noundef %0, i32 noundef 1, i32 noundef %216) #7
  %218 = load ptr, ptr %183, align 4
  %219 = call i32 %218(ptr noundef %0, i32 noundef 1) #7
  %220 = or i32 %219, 192
  br label %253

221:                                              ; preds = %173
  %222 = load ptr, ptr %135, align 4
  call void %222(ptr noundef %0, i32 noundef 16, i32 noundef 119) #7
  %223 = load ptr, ptr %135, align 4
  call void %223(ptr noundef %0, i32 noundef 17, i32 noundef 1) #7
  %224 = load ptr, ptr %135, align 4
  call void %224(ptr noundef %0, i32 noundef 3, i32 noundef 191) #7
  %225 = load ptr, ptr %183, align 4
  %226 = call i32 %225(ptr noundef %0, i32 noundef 2) #7
  %227 = and i32 %226, -208
  %228 = or i32 %227, 10
  %229 = load ptr, ptr %135, align 4
  call void %229(ptr noundef %0, i32 noundef 2, i32 noundef %228) #7
  %230 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.tty_port, ptr %231, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr %struct.tty_struct, ptr %233, i32 0, i32 13, i32 5, i32 8
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load ptr, ptr %135, align 4
  call void %237(ptr noundef %0, i32 noundef 4, i32 noundef %236) #7
  %238 = load ptr, ptr %230, align 4
  %239 = getelementptr inbounds %struct.tty_port, ptr %238, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr %struct.tty_struct, ptr %240, i32 0, i32 13, i32 5, i32 9
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load ptr, ptr %135, align 4
  call void %244(ptr noundef %0, i32 noundef 6, i32 noundef %243) #7
  %245 = load ptr, ptr %135, align 4
  call void %245(ptr noundef %0, i32 noundef 3, i32 noundef %190) #7
  %246 = load ptr, ptr %183, align 4
  %247 = call i32 %246(ptr noundef %0, i32 noundef 1) #7
  %248 = and i32 %247, -193
  %249 = load ptr, ptr %135, align 4
  call void %249(ptr noundef %0, i32 noundef 1, i32 noundef %248) #7
  %250 = load ptr, ptr %183, align 4
  %251 = call i32 %250(ptr noundef %0, i32 noundef 1) #7
  %252 = or i32 %251, 32
  br label %253

253:                                              ; preds = %221, %203, %191
  %254 = phi i32 [ %252, %221 ], [ %220, %203 ], [ %202, %191 ]
  %255 = load ptr, ptr %135, align 4
  call void %255(ptr noundef %0, i32 noundef 1, i32 noundef %254) #7
  br label %256

256:                                              ; preds = %253, %173
  %257 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %270, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.console, ptr %258, i32 0, i32 9
  %262 = load i16, ptr %261, align 2
  %263 = sext i16 %262 to i32
  %264 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, %263
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = load i32, ptr %129, align 4
  %269 = getelementptr inbounds %struct.console, ptr %258, i32 0, i32 10
  store i32 %268, ptr %269, align 4
  br label %270

270:                                              ; preds = %267, %260, %256
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %128) #7
  %271 = call i32 @tty_termios_baud_rate(ptr noundef %1) #7
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %114, i32 noundef %114) #7
  br label %274

274:                                              ; preds = %273, %270
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %16

16:                                               ; preds = %15, %7
  %17 = phi i32 [ %13, %15 ], [ %10, %7 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9) #8
  br label %21

18:                                               ; preds = %12
  %19 = load i32, ptr %4, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %4, align 4
  br label %21

21:                                               ; preds = %18, %16, %1
  %22 = phi i32 [ %17, %16 ], [ 0, %1 ], [ 0, %18 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mtk8250_dma_filter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_pm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @serial8250_get_port(i32 noundef %4) #7
  %6 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %1
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 %8(ptr noundef %5, i32 noundef 24) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %18 = load i32, ptr %12, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %15, %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk8250_dma_rx_complete(ptr noundef %0) #2 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = alloca %struct.dma_tx_state, align 4
  %4 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !14
  %10 = getelementptr inbounds %struct.mtk8250_data, ptr %7, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %86, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 49
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %3) #7
  %23 = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = getelementptr inbounds %struct.mtk8250_data, ptr %7, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = icmp ugt i32 %30, %24
  %32 = sub i32 %24, %29
  %33 = select i1 %31, i32 %32, i32 %27
  %34 = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %29
  %37 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %9, ptr noundef %36, i8 noundef zeroext 0, i32 noundef %33) #7
  %38 = load i32, ptr %28, align 4
  %39 = add i32 %38, %33
  store i32 %39, ptr %28, align 4
  %40 = icmp sgt i32 %27, %33
  br i1 %40, label %41, label %46

41:                                               ; preds = %13
  %42 = load ptr, ptr %34, align 4
  %43 = sub i32 %27, %33
  %44 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %9, ptr noundef %42, i8 noundef zeroext 0, i32 noundef %43) #7
  %45 = add i32 %44, %37
  store i32 %43, ptr %28, align 4
  br label %46

46:                                               ; preds = %41, %13
  %47 = phi i32 [ %45, %41 ], [ %37, %13 ]
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  store i32 %50, ptr %48, align 4
  call void @tty_flip_buffer_push(ptr noundef %9) #7
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.uart_8250_dma, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.uart_8250_dma, ptr %51, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uart_8250_dma, ptr %51, i32 0, i32 16
  %57 = load i32, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #7, !annotation !14
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #7
  %58 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %55, ptr %58, align 4
  %59 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %57, ptr %59, align 4
  %60 = icmp eq ptr %53, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %46
  %62 = load ptr, ptr %53, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 39
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %61, %46
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %72

69:                                               ; preds = %64
  %70 = call ptr %66(ptr noundef nonnull %53, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69, %68
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %85

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %70, i32 0, i32 6
  store ptr @mtk8250_dma_rx_complete, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %70, i32 0, i32 8
  store ptr %0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %70, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef nonnull %70) #7
  %80 = getelementptr inbounds %struct.uart_8250_dma, ptr %51, i32 0, i32 13
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %52, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 50
  %84 = load ptr, ptr %83, align 4
  call void %84(ptr noundef %81) #7
  br label %85

85:                                               ; preds = %74, %72
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #7
  br label %86

86:                                               ; preds = %85, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  tail call void @serial8250_suspend_port(i32 noundef %6) #7
  %7 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #7
  %8 = icmp sgt i32 %5, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 1) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef %10) #8
  %13 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #7
  %14 = load i32, ptr %3, align 4
  tail call void @serial8250_resume_port(i32 noundef %14) #7
  br label %15

15:                                               ; preds = %12, %9, %1
  %16 = phi i32 [ %10, %12 ], [ 0, %9 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk8250_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #7
  %11 = load i32, ptr %3, align 4
  tail call void @serial8250_resume_port(i32 noundef %11) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial8250_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2153493404}
!9 = !{i64 1735576}
!10 = !{i64 2147958889}
!11 = !{i64 457199, i64 2147947170, i64 2147947196, i64 2147947243, i64 2147947265, i64 2147947293, i64 2147947313}
!12 = !{i64 443768, i64 443793, i64 443815, i64 443831, i64 443843, i64 443863, i64 443887, i64 443903, i64 443915}
!13 = !{i64 2147959015}
!14 = !{!"auto-init"}
