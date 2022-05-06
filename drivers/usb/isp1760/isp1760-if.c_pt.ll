; ModuleID = '/llk/IR/drivers/usb/isp1760/isp1760-if.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-if.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__initcall__kmod_isp1760__256_294_isp1760_init6 = internal global ptr @isp1760_init, section ".initcall6.init", align 4
@isp1760_plat_driver = internal global %struct.platform_driver { ptr @isp1760_plat_probe, ptr @isp1760_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isp1760_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@isp1761_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @isp1760_plx, ptr @isp1761_pci_probe, ptr @isp1761_pci_remove, ptr null, ptr null, ptr @isp1761_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_isp1760_exit = internal global ptr @isp1760_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [8 x i8] c"isp1760\00", align 1
@isp1760_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,usb-isp1760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,usb-isp1761\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,usb-isp1763\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"nxp,usb-isp1761\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nxp,usb-isp1763\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"analog-oc\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dack-polarity\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dreq-polarity\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\013isp1760: no platform data\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\016ISP1760 USB device initialised\0A\00", align 1
@isp1760_plx = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 21510, i32 4277, i32 36948, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"\013memory length for this resource is wrong\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"ISP-PCI\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\013host controller already in use\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"\013Error ioremap failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"scratch register mismatch %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ISP1761 IO MEM\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"\013request region #1\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\013ioremap #1\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\013ips1761_pci_shutdown\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__exitcall_isp1760_exit, ptr @__initcall__kmod_isp1760__256_294_isp1760_init6, ptr @isp1760_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @isp1760_init() #0 section ".init.text" {
  %1 = tail call i32 @isp1760_init_kmem_once() #5
  %2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @isp1760_plat_driver, ptr noundef null) #5
  %3 = icmp eq i32 %2, 0
  %4 = tail call i32 @__pci_register_driver(ptr noundef nonnull @isp1761_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i1 true, i1 %3
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  tail call void @isp1760_deinit_kmem_cache() #5
  br label %8

8:                                                ; preds = %7, %0
  %9 = phi i32 [ -19, %7 ], [ 0, %0 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @isp1760_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @isp1760_plat_driver) #5
  tail call void @pci_unregister_driver(ptr noundef nonnull @isp1761_pci_driver) #5
  tail call void @isp1760_deinit_kmem_cache() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_deinit_kmem_cache() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_init_kmem_once() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_plat_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %4 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %58, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @irq_get_irq_data(i32 noundef %4) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.irq_data, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 15
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i32 [ %13, %9 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  %21 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %18, ptr noundef nonnull @.str.1) #5
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 64
  %24 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %18, ptr noundef nonnull @.str.2) #5
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %23, 512
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %29 = load i32, ptr %2, align 4
  switch i32 %29, label %34 [
    i32 16, label %30
    i32 8, label %32
  ]

30:                                               ; preds = %20
  %31 = or i32 %27, 2
  br label %34

32:                                               ; preds = %20
  %33 = or i32 %27, 1024
  br label %34

34:                                               ; preds = %32, %30, %20
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ], [ %27, %20 ]
  %36 = call i32 @usb_get_dr_mode(ptr noundef %16) #5
  %37 = icmp eq i32 %36, 2
  %38 = or i32 %35, 4
  %39 = select i1 %37, i32 %38, i32 %35
  %40 = call ptr @of_find_property(ptr noundef nonnull %18, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %41 = icmp eq ptr %40, null
  %42 = or i32 %39, 8
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = call ptr @of_find_property(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %45 = icmp eq ptr %44, null
  %46 = or i32 %43, 16
  %47 = select i1 %45, i32 %43, i32 %46
  %48 = call ptr @of_find_property(ptr noundef nonnull %18, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %49 = icmp eq ptr %48, null
  %50 = or i32 %47, 32
  %51 = select i1 %49, i32 %47, i32 %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %52 = call i32 @isp1760_register(ptr noundef %3, i32 noundef %4, i32 noundef %15, ptr noundef %16, i32 noundef %51) #5
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %56

54:                                               ; preds = %14
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  br label %58

56:                                               ; preds = %34
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %58

58:                                               ; preds = %56, %54, %34, %1
  %59 = phi i32 [ 0, %56 ], [ -6, %54 ], [ %4, %1 ], [ %52, %34 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_plat_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @isp1760_unregister(ptr noundef %2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1761_pci_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %90, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @pci_enable_device(ptr noundef %0) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %90, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = sub i32 1, %14
  %19 = add i32 %18, %16
  %20 = select i1 %17, i32 0, i32 %19
  %21 = icmp ult i32 %20, 65535
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  br label %78

24:                                               ; preds = %11
  %25 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %20, ptr noundef nonnull @.str.10, i32 noundef 0) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  br label %78

29:                                               ; preds = %24
  %30 = tail call ptr @ioremap(i32 noundef %14, i32 noundef %20) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #6
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %20) #5
  br label %78

34:                                               ; preds = %29
  %35 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 13, ptr noundef nonnull %3) #5
  %36 = load i8, ptr %3, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 63, ptr noundef nonnull %4) #5
  %40 = load i8, ptr %4, align 1
  %41 = icmp ne i8 %40, 0
  %42 = load i8, ptr %3, align 1
  %43 = icmp ult i8 %40, %42
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 13, i8 noundef zeroext %40) #5
  br label %47

47:                                               ; preds = %45, %38, %34
  %48 = getelementptr i8, ptr %30, i32 776
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ 20, %47 ], [ %54, %49 ]
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 64206) #5, !srcloc !10
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 21474800) #5
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %50, -1
  %55 = icmp ne i32 %53, 64206
  %56 = icmp ne i32 %54, 0
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %49, label %58

58:                                               ; preds = %49
  call void @iounmap(ptr noundef nonnull %30) #5
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %20) #5
  br i1 %55, label %59, label %61

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.13, i32 noundef %53) #6
  br label %78

61:                                               ; preds = %58
  %62 = load i32, ptr %12, align 8
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = sub i32 1, %62
  %67 = add i32 %66, %64
  %68 = select i1 %65, i32 0, i32 %67
  %69 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %68, ptr noundef nonnull @.str.14, i32 noundef 0) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #6
  br label %78

73:                                               ; preds = %61
  %74 = call ptr @ioremap(i32 noundef %62, i32 noundef %68) #5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #6
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %68) #5
  br label %78

78:                                               ; preds = %76, %71, %59, %32, %27, %22
  %79 = phi i32 [ -16, %27 ], [ -12, %32 ], [ -16, %71 ], [ -12, %76 ], [ -12, %59 ], [ -12, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %88

80:                                               ; preds = %73
  %81 = getelementptr i8, ptr %74, i32 104
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %83 = or i32 %82, 2304
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %83) #5, !srcloc !10
  call void @iounmap(ptr noundef nonnull %74) #5
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %68) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  call void @pci_set_master(ptr noundef %0) #5
  %84 = load i32, ptr %5, align 4
  %85 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %86 = call i32 @isp1760_register(ptr noundef %13, i32 noundef %84, i32 noundef 0, ptr noundef %85, i32 noundef 0) #5
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80, %78
  %89 = phi i32 [ %86, %80 ], [ %79, %78 ]
  call void @pci_disable_device(ptr noundef %0) #5
  br label %90

90:                                               ; preds = %88, %80, %8, %2
  %91 = phi i32 [ %89, %88 ], [ -19, %2 ], [ -19, %8 ], [ 0, %80 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1761_pci_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @isp1760_unregister(ptr noundef %2) #5
  tail call void @pci_disable_device(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1761_pci_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2154262464}
!10 = !{i64 3217310}
!11 = !{i64 3217728}
!12 = !{i64 2154263475}
!13 = !{i64 2154265540}
!14 = !{i64 2154265731}
