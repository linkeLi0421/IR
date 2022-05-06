; ModuleID = '/llk/IR/drivers/pci/pcie/pme.c_pt.bc'
source_filename = "../drivers/pci/pcie/pme.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pcie_pme_service_data = type { %struct.spinlock, ptr, %struct.work_struct, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__setup_str_pcie_pme_setup = internal constant [10 x i8] c"pcie_pme=\00", section ".init.rodata", align 1
@__setup_pcie_pme_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_pme_setup, ptr @pcie_pme_setup, i32 0 }, section ".init.setup", align 4
@pcie_pme_driver = internal global %struct.pcie_port_service_driver { ptr @.str.1, ptr @pcie_pme_probe, ptr @pcie_pme_remove, ptr @pcie_pme_suspend, ptr null, ptr @pcie_pme_resume, ptr null, ptr null, ptr null, i32 -1, i32 1, %struct.device_driver zeroinitializer }, align 4
@pcie_pme_msi_disabled = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"nomsi\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pcie_pme\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PCIe PME\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"PME: Signaling with IRQ %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"PME: interrupt generated for non-existent device %02x:%02x.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"PME: Spurious native interrupt!\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_pcie_pme_setup], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @pcie_pme_setup(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i8 1, ptr @pcie_pme_msi_disabled, align 1
  br label %5

5:                                                ; preds = %4, %1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_pme_interrupt_enable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  br i1 %1, label %3, label %5

3:                                                ; preds = %2
  %4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %7

5:                                                ; preds = %2
  %6 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @pcie_pme_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @pcie_port_service_register(ptr noundef nonnull @pcie_pme_driver) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_service_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_pme_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 24
  %5 = load i16, ptr %4, align 2
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 15
  %8 = zext i16 %7 to i32
  switch i32 %8, label %39 [
    i32 10, label %9
    i32 4, label %9
  ]

9:                                                ; preds = %1, %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  store i32 0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 2
  store i32 -32, ptr %14, align 8
  %15 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 2, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 2, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 2, i32 2
  store ptr @pcie_pme_work_fn, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 3
  store ptr %11, ptr %19, align 4
  %20 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  tail call void @pcie_clear_root_pme_status(ptr noundef %3) #9
  %21 = load i32, ptr %0, align 8
  %22 = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @pcie_pme_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #9
  br label %39

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %27 = load i32, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef %27) #11
  tail call void @device_set_wakeup_capable(ptr noundef %26, i1 noundef zeroext true) #9
  %28 = load i16, ptr %4, align 2
  %29 = and i16 %28, 240
  %30 = icmp eq i16 %29, 160
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call void @pcie_walk_rcec(ptr noundef %3, ptr noundef nonnull @pcie_pme_can_wakeup, ptr noundef null) #9
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @pci_walk_bus(ptr noundef nonnull %34, ptr noundef nonnull @pcie_pme_can_wakeup, ptr noundef null) #9
  br label %37

37:                                               ; preds = %36, %32, %31
  %38 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %39

39:                                               ; preds = %37, %24, %9, %1
  %40 = phi i32 [ %22, %24 ], [ 0, %37 ], [ -19, %1 ], [ -12, %9 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcie_pme_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %6 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %5, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  tail call void @pcie_clear_root_pme_status(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %3, i32 0, i32 3
  store i8 1, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %8 = load i16, ptr %3, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %10 = load i32, ptr %0, align 8
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %3, i32 0, i32 2
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_pme_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %1
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %15 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call fastcc zeroext i1 @pcie_pme_check_wakeup(ptr noundef %16)
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  %19 = load i32, ptr %0, align 8
  %20 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 1) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18, %14
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %23 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %5, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  tail call void @pcie_clear_root_pme_status(ptr noundef %5) #9
  %24 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %3, i32 0, i32 3
  store i8 1, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %25 = load i16, ptr %3, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %27 = load i32, ptr %0, align 8
  tail call void @synchronize_irq(i32 noundef %27) #9
  br label %28

28:                                               ; preds = %22, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_pme_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @pcie_clear_root_pme_status(ptr noundef %9) #9
  %10 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %9, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  store i8 0, ptr %4, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, ptr %0, align 8
  %13 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 0) #9
  br label %14

14:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %15 = load i16, ptr %3, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcie_pme_work_fn(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pcie_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !14
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = load i8, ptr %8, align 4, !range !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %139

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %13 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %15 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 33
  %16 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 2
  br label %17

17:                                               ; preds = %125, %11
  %18 = call i32 @pcie_capability_read_dword(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %2) #9
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %134, label %21

21:                                               ; preds = %17
  %22 = and i32 %19, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %128, label %24

24:                                               ; preds = %21
  call void @pcie_clear_root_pme_status(ptr noundef %7) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %25 = load i16, ptr %3, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %27 = load i32, ptr %2, align 4
  %28 = trunc i32 %27 to i16
  %29 = lshr i16 %28, 8
  %30 = trunc i32 %27 to i8
  %31 = load i32, ptr %12, align 4
  %32 = and i32 %27, 255
  %33 = icmp eq i32 %31, %32
  %34 = load ptr, ptr %13, align 8
  br i1 %33, label %35, label %53

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 12
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  %39 = icmp eq i16 %29, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, ptr %15, align 2
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = and i32 %41, -33
  store i32 %45, ptr %15, align 2
  br label %46

46:                                               ; preds = %44, %40
  %47 = call zeroext i1 @pci_check_pme_status(ptr noundef %7) #9
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 1) #9
  br label %125

50:                                               ; preds = %46
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %51 = load ptr, ptr %16, align 4
  %52 = call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef %51) #9
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  br i1 %52, label %125, label %124

53:                                               ; preds = %35, %24
  %54 = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 16
  %55 = load i32, ptr %54, align 8
  %56 = zext i16 %29 to i32
  %57 = call ptr @pci_find_bus(i32 noundef %55, i32 noundef %56) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %124, label %59

59:                                               ; preds = %53
  %60 = icmp eq i8 %30, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = call ptr @pci_dev_get(ptr noundef %63) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 18
  %68 = load i8, ptr %67, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 24
  %72 = load i16, ptr %71, align 2
  %73 = and i16 %72, 240
  %74 = icmp eq i16 %73, 112
  br i1 %74, label %76, label %75

75:                                               ; preds = %70, %66
  call void @pci_dev_put(ptr noundef nonnull %64) #9
  br label %78

76:                                               ; preds = %70
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %77 = call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef nonnull %57) #9
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  call void @pci_dev_put(ptr noundef nonnull %64) #9
  br i1 %77, label %125, label %78

78:                                               ; preds = %76, %75, %61, %59
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %79 = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %93, label %82

82:                                               ; preds = %90, %78
  %83 = phi ptr [ %91, %90 ], [ %80, %78 ]
  %84 = call ptr @pci_dev_get(ptr noundef %83) #9
  %85 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, %32
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  %89 = call zeroext i1 @pci_check_pme_status(ptr noundef %83) #9
  br i1 %89, label %94, label %104

90:                                               ; preds = %82
  call void @pci_dev_put(ptr noundef %83) #9
  %91 = load ptr, ptr %83, align 4
  %92 = icmp eq ptr %91, %79
  br i1 %92, label %93, label %82

93:                                               ; preds = %90, %78
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  br i1 %60, label %124, label %105

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 33
  %96 = load i32, ptr %95, align 2
  %97 = and i32 %96, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = and i32 %96, -33
  store i32 %100, ptr %95, align 2
  br label %101

101:                                              ; preds = %99, %94
  %102 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  call void @pm_wakeup_dev_event(ptr noundef %102, i32 noundef 100, i1 noundef zeroext false) #9
  %103 = call i32 @__pm_runtime_resume(ptr noundef %102, i32 noundef 1) #9
  call void @pci_dev_put(ptr noundef %83) #9
  br label %125

104:                                              ; preds = %88
  call void @pci_dev_put(ptr noundef %83) #9
  br label %124

105:                                              ; preds = %93
  %106 = lshr i32 %32, 3
  %107 = and i32 %27, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.4, i32 noundef %56, i32 noundef %106, i32 noundef %107) #11
  %108 = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = call ptr @pci_dev_get(ptr noundef %109) #9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 18
  %114 = load i8, ptr %113, align 4
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 24
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 240
  %120 = icmp eq i16 %119, 112
  br i1 %120, label %122, label %121

121:                                              ; preds = %116, %112
  call void @pci_dev_put(ptr noundef nonnull %110) #9
  br label %124

122:                                              ; preds = %116
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %123 = call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef nonnull %57) #9
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  call void @pci_dev_put(ptr noundef nonnull %110) #9
  br i1 %123, label %125, label %124

124:                                              ; preds = %122, %121, %105, %104, %93, %53, %50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.5) #11
  br label %125

125:                                              ; preds = %131, %124, %122, %101, %76, %50, %48
  call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %126 = load i8, ptr %8, align 4, !range !13
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %17, label %139

128:                                              ; preds = %21
  %129 = and i32 %19, 131072
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %132 = load i16, ptr %3, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !16
  br label %125

134:                                              ; preds = %128, %17
  %135 = load i8, ptr %8, align 4
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %7, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %139

139:                                              ; preds = %137, %134, %125, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %140 = load i16, ptr %3, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_root_pme_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_pme_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !14
  %4 = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = call i32 @pcie_capability_read_dword(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %3) #9
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, -1
  %12 = and i32 %10, 65536
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  br label %21

16:                                               ; preds = %2
  %17 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %5, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  %18 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %7, i32 0, i32 2
  %19 = load ptr, ptr @system_wq, align 4
  %20 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18) #9
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi i32 [ 0, %15 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_check_pme_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %35, label %5

5:                                                ; preds = %31, %1
  %6 = phi ptr [ %33, %31 ], [ %3, %1 ]
  %7 = phi i1 [ %32, %31 ], [ false, %1 ]
  %8 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 18
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = tail call zeroext i1 @pci_check_pme_status(ptr noundef %6) #9
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 33
  %15 = load i32, ptr %14, align 2
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = and i32 %15, -33
  store i32 %19, ptr %14, align 2
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void @pm_wakeup_dev_event(ptr noundef %21, i32 noundef 100, i1 noundef zeroext false) #9
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 1) #9
  br label %23

23:                                               ; preds = %20, %11, %5
  %24 = phi i1 [ %7, %5 ], [ true, %20 ], [ %7, %11 ]
  %25 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef nonnull %26)
  %30 = select i1 %29, i1 true, i1 %24
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i1 [ %24, %23 ], [ %30, %28 ]
  %33 = load ptr, ptr %6, align 4
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %5

35:                                               ; preds = %31, %1
  %36 = phi i1 [ false, %1 ], [ %32, %31 ]
  ret i1 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_pme_can_wakeup(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_walk_rcec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pcie_pme_check_wakeup(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %18, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %18 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call fastcc zeroext i1 @pcie_pme_check_wakeup(ptr noundef %20)
  br i1 %21, label %22, label %5

22:                                               ; preds = %18, %14, %5
  %23 = xor i1 %8, true
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i1 [ false, %1 ], [ %23, %22 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2149132186}
!9 = !{i64 2149128010}
!10 = !{i64 2149128085, i64 2149128112, i64 2149128159, i64 2149128181, i64 2149128209, i64 2149128229}
!11 = !{i64 715154}
!12 = !{i64 2149156330}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
!15 = !{i64 2153223150}
!16 = !{i64 2153222992}
