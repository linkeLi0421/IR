; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_em.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_em.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.serial8250_em_priv = type { ptr, i32 }

@__initcall__kmod_8250_em__226_159_serial8250_em_platform_driver_init6 = internal global ptr @serial8250_em_platform_driver_init, section ".initcall6.init", align 4
@serial8250_em_platform_driver = internal global %struct.platform_driver { ptr @serial8250_em_probe, ptr @serial8250_em_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @serial8250_em_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_serial8250_em_platform_driver_exit = internal global ptr @serial8250_em_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author227 = internal constant [27 x i8] c"8250_em.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [52 x i8] c"8250_em.description=Renesas Emma Mobile 8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [45 x i8] c"8250_em.file=drivers/tty/serial/8250/8250_em\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"8250_em.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"serial8250-em\00", align 1
@serial8250_em_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,em-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"missing registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to register 8250 port\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_serial8250_em_platform_driver_exit, ptr @__initcall__kmod_8250_em__226_159_serial8250_em_platform_driver_init6, ptr @serial8250_em_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @serial8250_em_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @serial8250_em_platform_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @serial8250_em_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial8250_em_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_em_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #6
  %3 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %7, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  br label %47

10:                                               ; preds = %5
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 8, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.2) #6
  store ptr %14, ptr %11, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %17 = ptrtoint ptr %14 to i32
  br label %47

18:                                               ; preds = %13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false)
  %19 = load i32, ptr %6, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 -1342177280, ptr %22, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %8, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %11, ptr %24, align 4
  %25 = tail call i32 @clk_prepare(ptr noundef %14) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = tail call i32 @clk_enable(ptr noundef %14) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %31

31:                                               ; preds = %30, %27, %18
  %32 = load ptr, ptr %11, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #6
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 3, ptr %35, align 2
  %36 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  store ptr @serial8250_em_serial_in, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  store ptr @serial8250_em_serial_out, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 21
  store ptr @serial8250_em_serial_dl_read, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 22
  store ptr @serial8250_em_serial_dl_write, ptr %39, align 4
  %40 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #6
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.4) #7
  %43 = load ptr, ptr %11, align 4
  call void @clk_disable(ptr noundef %43) #6
  call void @clk_unprepare(ptr noundef %43) #6
  br label %47

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.serial8250_em_priv, ptr %11, i32 0, i32 1
  store i32 %40, ptr %45, align 4
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %46, align 8
  br label %47

47:                                               ; preds = %44, %42, %16, %10, %9, %1
  %48 = phi i32 [ %17, %16 ], [ %40, %42 ], [ 0, %44 ], [ -22, %9 ], [ %3, %1 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #6
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_em_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.serial8250_em_priv, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #6
  %6 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_em_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %21 [
    i32 0, label %3
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 1, label %15
    i32 2, label %15
    i32 9, label %15
    i32 10, label %15
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = zext i8 %6 to i32
  br label %21

8:                                                ; preds = %2, %2, %2, %2
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw nsw i32 %1, 2
  %12 = add nuw nsw i32 %11, 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  br label %21

15:                                               ; preds = %2, %2, %2, %2
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = shl nuw nsw i32 %1, 2
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  br label %21

21:                                               ; preds = %15, %8, %3, %2
  %22 = phi i32 [ %20, %15 ], [ %14, %8 ], [ %7, %3 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_em_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %1, label %22 [
    i32 0, label %4
    i32 2, label %8
    i32 3, label %8
    i32 4, label %8
    i32 7, label %8
    i32 1, label %14
    i32 9, label %16
    i32 10, label %16
  ]

4:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %5 = trunc i32 %2 to i8
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #6, !srcloc !14
  br label %22

8:                                                ; preds = %3, %3, %3, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw nsw i32 %1, 2
  %12 = add nuw nsw i32 %11, 4
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %2) #6, !srcloc !16
  br label %22

14:                                               ; preds = %3
  %15 = and i32 %2, 15
  br label %16

16:                                               ; preds = %14, %3, %3
  %17 = phi i32 [ %2, %3 ], [ %2, %3 ], [ %15, %14 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = shl nuw nsw i32 %1, 2
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #6, !srcloc !16
  br label %22

22:                                               ; preds = %16, %8, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_em_serial_dl_read(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 9) #6
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 10) #6
  %7 = shl i32 %6, 8
  %8 = or i32 %7, %4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_em_serial_dl_write(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 255
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef 9, i32 noundef %3) #6
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 255
  %8 = load ptr, ptr %4, align 4
  tail call void %8(ptr noundef %0, i32 noundef 10, i32 noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 3608608}
!9 = !{i64 2153248283}
!10 = !{i64 3608828}
!11 = !{i64 2153248670}
!12 = !{i64 2153249040}
!13 = !{i64 2153247306}
!14 = !{i64 3608213}
!15 = !{i64 2153247566}
!16 = !{i64 3608410}
!17 = !{i64 2153247950}
