; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_pericom.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_pericom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pericom8250 = type { ptr, i32, [0 x i32] }

@__initcall__kmod_8250_pericom__232_211_pericom8250_pci_driver_init6 = internal global ptr @pericom8250_pci_driver_init, section ".initcall6.init", align 4
@pericom8250_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pericom8250_pci_ids, ptr @pericom8250_probe, ptr @pericom8250_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_pericom8250_pci_driver_exit = internal global ptr @pericom8250_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [55 x i8] c"8250_pericom.file=drivers/tty/serial/8250/8250_pericom\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"8250_pericom.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [45 x i8] c"8250_pericom.description=Pericom UART driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"8250_pericom\00", align 1
@pericom8250_pci_ids = internal constant [38 x %struct.pci_device_id] [%struct.pci_device_id { i32 4824, i32 31057, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 31058, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 31060, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 31064, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4179, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4186, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4187, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4188, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4190, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4202, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4203, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4243, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4248, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4251, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4265, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4305, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4307, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4313, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4314, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4316, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4329, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4360, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4368, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4369, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4376, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4377, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4434, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4442, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4497, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4504, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4505, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4560, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 4568, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Couldn't register serial port %lx, irq %d, type %d, error %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_pericom8250_pci_driver_exit, ptr @__initcall__kmod_8250_pericom__232_211_pericom8250_pci_driver_init6, ptr @pericom8250_pci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pericom8250_pci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pericom8250_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pericom8250_pci_driver_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @pericom8250_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pericom8250_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %3) #7
  %4 = tail call i32 @pcim_enable_device(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %87

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 8
  %13 = add i32 %9, 1
  %14 = sub i32 %13, %12
  %15 = lshr i32 %14, 3
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ 0, %6 ]
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %19 = load i16, ptr %18, align 8
  switch i16 %19, label %33 [
    i16 4824, label %20
    i16 18767, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %22 = load i16, ptr %21, align 2
  %23 = and i16 %22, 15
  %24 = zext i16 %23 to i32
  br label %33

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %27 = load i16, ptr %26, align 2
  %28 = lshr i16 %27, 3
  %29 = and i16 %28, 7
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = shl nuw nsw i32 1, %31
  br label %33

33:                                               ; preds = %25, %20, %16
  %34 = phi i32 [ %24, %20 ], [ %32, %25 ], [ 1, %16 ]
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #7
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  %39 = tail call i32 @llvm.uadd.sat.i32(i32 %38, i32 8) #7
  %40 = select i1 %37, i32 -1, i32 %39
  %41 = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef %40, i32 noundef 3520) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %87, label %43

43:                                               ; preds = %33
  %44 = tail call ptr @pcim_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 0) #7
  store ptr %44, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %87, label %46

46:                                               ; preds = %43
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %3, i8 0, i32 460, i1 false)
  %47 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  store ptr %35, ptr %47, align 4
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  store ptr %41, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %53 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 22
  store i32 14745600, ptr %53, align 4
  %54 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 33
  store i32 285212736, ptr %54, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 10
  store ptr @pericom_do_set_divisor, ptr %55, align 4
  %56 = icmp ne i32 %34, 0
  %57 = icmp ne i32 %17, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %83

59:                                               ; preds = %46
  %60 = icmp eq i32 %34, 4
  %61 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 1
  br label %62

62:                                               ; preds = %78, %59
  %63 = phi i32 [ 0, %59 ], [ %79, %78 ]
  %64 = icmp eq i32 %63, 3
  %65 = and i1 %60, %64
  %66 = shl i32 %63, 3
  %67 = select i1 %65, i32 56, i32 %66
  %68 = load i32, ptr %7, align 8
  %69 = add i32 %68, %67
  store i32 %69, ptr %61, align 4
  %70 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %3) #7
  %71 = getelementptr %struct.pericom8250, ptr %41, i32 0, i32 2, i32 %63
  store i32 %70, ptr %71, align 4
  %72 = icmp slt i32 %70, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load i32, ptr %61, align 4
  %75 = load i32, ptr %50, align 4
  %76 = load i8, ptr %52, align 2
  %77 = zext i8 %76 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1, i32 noundef %74, i32 noundef %75, i32 noundef %77, i32 noundef %70) #8
  br label %83

78:                                               ; preds = %62
  %79 = add nuw nsw i32 %63, 1
  %80 = icmp ult i32 %79, %34
  %81 = icmp ult i32 %79, %17
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %62, label %83

83:                                               ; preds = %78, %73, %46
  %84 = phi i32 [ %63, %73 ], [ 0, %46 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.pericom8250, ptr %41, i32 0, i32 1
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %41, ptr %86, align 8
  br label %87

87:                                               ; preds = %83, %43, %33, %2
  %88 = phi i32 [ 0, %83 ], [ %4, %2 ], [ -12, %33 ], [ -12, %43 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %3) #7
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pericom8250_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pericom8250, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.pericom8250, ptr %3, i32 0, i32 2, i32 %8
  %10 = load i32, ptr %9, align 4
  tail call void @serial8250_unregister_port(i32 noundef %10) #7
  %11 = add nuw i32 %8, 1
  %12 = load i32, ptr %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pericom_do_set_divisor(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %1, 50
  br label %8

8:                                                ; preds = %39, %4
  %9 = phi i32 [ 16, %4 ], [ %40, %39 ]
  %10 = udiv i32 %6, %9
  %11 = add nuw nsw i32 %10, %7
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %39, label %13

13:                                               ; preds = %8
  %14 = udiv i32 %10, %1
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 1)
  %16 = udiv i32 %10, %15
  %17 = sub i32 %16, %1
  %18 = icmp ugt i32 %17, %7
  %19 = zext i1 %18 to i32
  %20 = add nuw nsw i32 %15, %19
  %21 = icmp ugt i32 %20, 65535
  br i1 %21, label %39, label %22

22:                                               ; preds = %13
  %23 = udiv i32 %10, %20
  %24 = sub i32 %23, %1
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 false)
  %26 = icmp ult i32 %25, %7
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef 3) #7
  %31 = or i32 %30, 128
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %0, i32 noundef 3, i32 noundef %31) #7
  %34 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %0, i32 noundef %20) #7
  %36 = sub nsw i32 16, %9
  %37 = load ptr, ptr %32, align 4
  tail call void %37(ptr noundef %0, i32 noundef 2, i32 noundef %36) #7
  %38 = load ptr, ptr %32, align 4
  tail call void %38(ptr noundef %0, i32 noundef 3, i32 noundef %30) #7
  br label %42

39:                                               ; preds = %22, %13, %8
  %40 = add nsw i32 %9, -1
  %41 = icmp ugt i32 %9, 5
  br i1 %41, label %8, label %42

42:                                               ; preds = %39, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
