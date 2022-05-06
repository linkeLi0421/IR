; ModuleID = '/llk/IR/drivers/input/serio/ambakmi.c_pt.bc'
source_filename = "../drivers/input/serio/ambakmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.amba_kmi_port = type { ptr, ptr, ptr, i32, i32, i32 }

@__initcall__kmod_ambakmi__247_206_ambakmi_driver_init6 = internal global ptr @ambakmi_driver_init, section ".initcall6.init", align 4
@ambakmi_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amba_kmi_dev_pm_ops, ptr null, ptr null }, ptr @amba_kmi_probe, ptr @amba_kmi_remove, ptr null, ptr @amba_kmi_idtable }, align 4
@__exitcall_ambakmi_driver_exit = internal global ptr @ambakmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [51 x i8] c"ambakmi.author=Russell King <rmk@arm.linux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [47 x i8] c"ambakmi.description=AMBA KMI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [41 x i8] c"ambakmi.file=drivers/input/serio/ambakmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [20 x i8] c"ambakmi.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"kmi-pl050\00", align 1
@amba_kmi_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @amba_kmi_resume, ptr null, ptr @amba_kmi_resume, ptr null, ptr @amba_kmi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@amba_kmi_idtable = internal constant [2 x %struct.amba_id] [%struct.amba_id { i32 266320, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"KMIREFCLK\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\013kmi: failed to claim IRQ%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_ambakmi_driver_exit, ptr @__initcall__kmod_ambakmi__247_206_ambakmi_driver_init6, ptr @ambakmi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ambakmi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @ambakmi_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ambakmi_driver_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @ambakmi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_kmi_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @amba_request_regions(ptr noundef %0, ptr noundef null) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %60

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #7
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 768) #7
  %10 = icmp ne ptr %7, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %58

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 5
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  store ptr @amba_kmi_write, ptr %15, align 8
  %16 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 8
  store ptr @amba_kmi_open, ptr %16, align 4
  %17 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 9
  store ptr @amba_kmi_close, ptr %17, align 8
  %18 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 1
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %23, %22 ], [ %20, %13 ]
  %26 = tail call i32 @strlcpy(ptr noundef %18, ptr noundef %25, i32 noundef 32) #6
  %27 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 2
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %31, %30 ], [ %28, %24 ]
  %34 = tail call i32 @strlcpy(ptr noundef %27, ptr noundef %33, i32 noundef 32) #6
  store ptr %7, ptr %9, align 8
  %35 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18, i32 1
  store ptr %0, ptr %35, align 4
  store ptr %9, ptr %7, align 8
  %36 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 1, %37
  %41 = add i32 %40, %39
  %42 = tail call ptr @ioremap(i32 noundef %37, i32 noundef %41) #6
  %43 = getelementptr inbounds %struct.amba_kmi_port, ptr %7, i32 0, i32 2
  store ptr %42, ptr %43, align 8
  %44 = icmp eq ptr %42, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %32
  %46 = tail call ptr @clk_get(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %47 = getelementptr inbounds %struct.amba_kmi_port, ptr %7, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  %51 = load ptr, ptr %43, align 8
  tail call void @iounmap(ptr noundef %51) #6
  br label %58

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.amba_kmi_port, ptr %7, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %56, align 8
  %57 = load ptr, ptr %7, align 8
  tail call void @__serio_register_port(ptr noundef %57, ptr noundef null) #6
  br label %60

58:                                               ; preds = %49, %32, %5
  %59 = phi i32 [ %50, %49 ], [ -12, %5 ], [ -12, %32 ]
  tail call void @kfree(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %9) #6
  tail call void @amba_release_regions(ptr noundef %0) #6
  br label %60

60:                                               ; preds = %58, %52, %2
  %61 = phi i32 [ %59, %58 ], [ 0, %52 ], [ %3, %2 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amba_kmi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @serio_unregister_port(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.amba_kmi_port, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_put(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.amba_kmi_port, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @iounmap(ptr noundef %8) #6
  tail call void @kfree(ptr noundef %3) #6
  tail call void @amba_release_regions(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_kmi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @serio_reconnect(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_reconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_kmi_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.amba_kmi_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %14, %2
  %11 = phi i32 [ %12, %14 ], [ 10000, %2 ]
  %12 = add nsw i32 %11, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #6
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = and i8 %18, 64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %14, %2
  %22 = phi i8 [ %8, %2 ], [ %19, %14 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %1) #6, !srcloc !11
  br label %25

25:                                               ; preds = %21, %10
  %26 = phi i8 [ %22, %21 ], [ 0, %10 ]
  %27 = lshr exact i8 %26, 6
  %28 = xor i8 %27, 1
  %29 = zext i8 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_kmi_open(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.amba_kmi_port, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %32

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 4
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  %14 = udiv i32 %13, 8000000
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %15 = trunc i32 %14 to i8
  %16 = add i8 %15, -1
  %17 = getelementptr inbounds %struct.amba_kmi_port, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %16) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 4) #6, !srcloc !11
  %21 = getelementptr inbounds %struct.amba_kmi_port, ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @amba_kmi_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %2) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %11
  %26 = load i32, ptr %21, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %26) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %28 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 0) #6, !srcloc !11
  %29 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %32

30:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %31 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 20) #6, !srcloc !11
  br label %32

32:                                               ; preds = %30, %25, %10, %1
  %33 = phi i32 [ 0, %30 ], [ %23, %25 ], [ %8, %10 ], [ %5, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amba_kmi_close(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %3 = getelementptr inbounds %struct.amba_kmi_port, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 0) #6, !srcloc !11
  %5 = getelementptr inbounds %struct.amba_kmi_port, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %2) #6
  %8 = getelementptr inbounds %struct.amba_kmi_port, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_kmi_int(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %2
  %10 = load ptr, ptr %1, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %14 = tail call i32 @serio_interrupt(ptr noundef %10, i8 noundef zeroext %13, i32 noundef 0) #6
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %2
  %21 = phi i32 [ 0, %2 ], [ 1, %9 ]
  ret i32 %21
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{i64 3465467}
!9 = !{i64 2153451107}
!10 = !{i64 2153451877}
!11 = !{i64 3465072}
!12 = !{i64 2153452233}
!13 = !{i64 2153452529}
!14 = !{i64 2153453154}
!15 = !{i64 2153453464}
!16 = !{i64 2153453756}
!17 = !{i64 2153450375}
!18 = !{i64 2153450625}
!19 = !{i64 2153450866}
