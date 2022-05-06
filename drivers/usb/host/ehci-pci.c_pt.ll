; ModuleID = '/llk/IR/drivers/usb/host/ehci-pci.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-pci.c"
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
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.66, %union.anon.68, [2 x i32], i32 }
%union.anon.66 = type { [15 x i32] }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, [15 x i32] }
%struct.ehci_caps = type { i32, i32, i32, [8 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__initcall__kmod_ehci_pci__233_423_ehci_pci_init6 = internal global ptr @ehci_pci_init, section ".initcall6.init", align 4
@ehci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @hcd_name, ptr @pci_ids, ptr @ehci_pci_probe, ptr @ehci_pci_remove, ptr null, ptr null, ptr @usb_hcd_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_hcd_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_ehci_pci_cleanup = internal global ptr @ehci_pci_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [46 x i8] c"ehci_pci.description=EHCI PCI platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [31 x i8] c"ehci_pci.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [27 x i8] c"ehci_pci.author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [40 x i8] c"ehci_pci.file=drivers/usb/host/ehci-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [21 x i8] c"ehci_pci.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"\016%s: EHCI PCI platform driver\0A\00", align 1
@hcd_name = internal constant [9 x i8] c"ehci-pci\00", align 1
@ehci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@pci_overrides = internal constant %struct.ehci_driver_overrides { i32 0, ptr @ehci_pci_setup, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ehci_pci\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unsupported big endian Toshiba quirk\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"can't enable NVidia workaround for >2GB RAM\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ignoring AMD8111 (errata)\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"applying AMD SB600/SB700 USB freeze workaround\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"applying MosChip frame-index workaround\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"applying Synopsys HC workaround\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"debug port %d%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" IN USE\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"disable ppcd for nvidia mcp89\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Enabling legacy PCI PM\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"selective suspend/wakeup unavailable\0A\00", align 1
@pci_ids = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787232, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4170, i32 52224, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@usb_hcd_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@bypass_pci_id_table = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2065, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2089, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 57350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ehci_pci_cleanup, ptr @__initcall__kmod_ehci_pci__233_423_ehci_pci_init6, ptr @ehci_pci_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_pci_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #6
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_pci_hc_driver, ptr noundef nonnull @pci_overrides) #5
  store ptr @ehci_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @ehci_pci_hc_driver, i32 0, i32 7), align 4
  store ptr @ehci_pci_resume, ptr getelementptr inbounds (%struct.hc_driver, ptr @ehci_pci_hc_driver, i32 0, i32 8), align 4
  %5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ehci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_pci_cleanup() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @ehci_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_pci_resume(ptr noundef %0, i1 noundef zeroext %1) #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @ehci_resume(ptr noundef %0, i1 noundef zeroext %1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %3, i32 -136
  %8 = tail call i32 @pci_set_mwi(ptr noundef %7) #5
  %9 = getelementptr i8, ptr %3, i32 -104
  %10 = load i16, ptr %9, align 8
  %11 = icmp eq i16 %10, -32634
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %3, i32 -102
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 2361
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ehci_regs, ptr %23, i32 0, i32 12, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 8323199) #5, !srcloc !9
  br label %25

25:                                               ; preds = %21, %16, %12, %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_pci_setup(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  store ptr %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %6, i32 -104
  %12 = load i16, ptr %11, align 8
  switch i16 %12, label %122 [
    i16 4143, label %13
    i16 4318, label %18
    i16 -32634, label %34
    i16 6446, label %42
    i16 4130, label %50
    i16 4358, label %66
    i16 4098, label %84
    i16 -26864, label %110
    i16 6629, label %114
  ]

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %6, i32 -102
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 437
  br i1 %16, label %17, label %122

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.2) #6
  br label %122

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %6, i32 -102
  %20 = load i16, ptr %19, align 2
  switch i16 %20, label %122 [
    i16 60, label %21
    i16 91, label %21
    i16 216, label %21
    i16 232, label %21
    i16 104, label %26
  ]

21:                                               ; preds = %18, %18, %18, %18
  %22 = tail call i32 @dma_set_coherent_mask(ptr noundef %6, i64 noundef 2147483647) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %122

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.3) #6
  br label %122

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %6, i32 -92
  %28 = load i8, ptr %27, align 4
  %29 = icmp ult i8 %28, -92
  br i1 %29, label %30, label %122

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %122

34:                                               ; preds = %1
  %35 = getelementptr i8, ptr %6, i32 -102
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 11888
  br i1 %37, label %38, label %122

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %40 = load i16, ptr %39, align 8
  %41 = or i16 %40, 128
  store i16 %41, ptr %39, align 8
  br label %122

42:                                               ; preds = %1
  %43 = getelementptr i8, ptr %6, i32 -102
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 257
  br i1 %45, label %46, label %122

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %48 = load i16, ptr %47, align 8
  %49 = or i16 %48, 128
  store i16 %49, ptr %47, align 8
  br label %122

50:                                               ; preds = %1
  %51 = tail call zeroext i1 @usb_amd_quirk_pll_check() #5
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 512
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %52, %50
  %57 = getelementptr i8, ptr %6, i32 -102
  %58 = load i16, ptr %57, align 2
  switch i16 %58, label %122 [
    i16 29795, label %59
    i16 30728, label %61
  ]

59:                                               ; preds = %56
  %60 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.4) #6
  br label %244

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 1024
  store i32 %64, ptr %62, align 4
  %65 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.5) #6
  br label %122

66:                                               ; preds = %1
  %67 = getelementptr i8, ptr %6, i32 -102
  %68 = load i16, ptr %67, align 2
  %69 = icmp eq i16 %68, 12548
  br i1 %69, label %70, label %122

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %6, i32 -92
  %72 = load i8, ptr %71, align 4
  %73 = and i8 %72, -16
  %74 = icmp eq i8 %73, 96
  br i1 %74, label %75, label %122

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !10
  %76 = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 75, ptr noundef nonnull %3) #5
  %77 = load i8, ptr %3, align 1
  %78 = and i8 %77, 32
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = or i8 %77, 32
  %82 = call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 75, i8 noundef zeroext %81) #5
  br label %83

83:                                               ; preds = %80, %75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %122

84:                                               ; preds = %1
  %85 = tail call zeroext i1 @usb_amd_quirk_pll_check() #5
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, 512
  store i32 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %86, %84
  %91 = getelementptr i8, ptr %6, i32 -102
  %92 = load i16, ptr %91, align 2
  %93 = icmp eq i16 %92, 17302
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 1024
  store i32 %97, ptr %95, align 4
  %98 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.5) #6
  %99 = load i16, ptr %91, align 2
  br label %100

100:                                              ; preds = %94, %90
  %101 = phi i16 [ %99, %94 ], [ %92, %90 ]
  switch i16 %101, label %122 [
    i16 17286, label %102
    i16 17302, label %102
  ]

102:                                              ; preds = %100, %100
  %103 = tail call zeroext i1 @usb_amd_hang_symptom_quirk() #5
  br i1 %103, label %104, label %122

104:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !10
  %105 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.6) #6
  %106 = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 83, ptr noundef nonnull %4) #5
  %107 = load i8, ptr %4, align 1
  %108 = or i8 %107, 8
  %109 = call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 83, i8 noundef zeroext %108) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %122

110:                                              ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.7) #6
  %111 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %112 = load i32, ptr %111, align 4
  %113 = or i32 %112, 4096
  store i32 %113, ptr %111, align 4
  br label %122

114:                                              ; preds = %1
  %115 = getelementptr i8, ptr %6, i32 -102
  %116 = load i16, ptr %115, align 2
  %117 = icmp eq i16 %116, -24007
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.8) #6
  %119 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %120, 2048
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %118, %114, %110, %104, %102, %100, %83, %70, %66, %61, %56, %46, %42, %38, %34, %30, %26, %24, %21, %18, %17, %13, %1
  %123 = call zeroext i8 @pci_find_capability(ptr noundef %7, i32 noundef 10) #5
  %124 = zext i8 %123 to i32
  store i32 %124, ptr %2, align 4
  %125 = icmp eq i8 %123, 0
  br i1 %125, label %152, label %126

126:                                              ; preds = %122
  %127 = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef %124, ptr noundef nonnull %2) #5
  %128 = load i32, ptr %2, align 4
  %129 = lshr i32 %128, 16
  store i32 %129, ptr %2, align 4
  %130 = and i32 %128, -536870912
  %131 = icmp eq i32 %130, 536870912
  br i1 %131, label %132, label %152

132:                                              ; preds = %126
  %133 = load ptr, ptr %10, align 4
  %134 = getelementptr inbounds %struct.ehci_caps, ptr %133, i32 0, i32 1
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %136 = load i32, ptr %2, align 4
  %137 = and i32 %136, 8191
  store i32 %137, ptr %2, align 4
  %138 = load ptr, ptr %8, align 8
  %139 = getelementptr i8, ptr %138, i32 %137
  %140 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1, i32 1
  store ptr %139, ptr %140, align 4
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  store i32 %141, ptr %2, align 4
  %142 = load ptr, ptr %0, align 8
  %143 = lshr i32 %135, 20
  %144 = and i32 %143, 15
  %145 = and i32 %141, 268435456
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr @.str.11, ptr @.str.10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.9, i32 noundef %144, ptr noundef nonnull %147) #6
  %148 = load i32, ptr %2, align 4
  %149 = and i32 %148, 268435456
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %132
  store ptr null, ptr %140, align 4
  br label %152

152:                                              ; preds = %151, %132, %126, %122
  %153 = call i32 @ehci_setup(ptr noundef %0) #5
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %244

155:                                              ; preds = %152
  %156 = load i16, ptr %11, align 8
  switch i16 %156, label %173 [
    i16 4147, label %157
    i16 -32634, label %157
    i16 4130, label %157
    i16 4318, label %161
  ]

157:                                              ; preds = %155, %155, %155
  %158 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, -257
  store i32 %160, ptr %158, align 4
  br label %173

161:                                              ; preds = %155
  %162 = getelementptr i8, ptr %6, i32 -102
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, 3485
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %166, ptr noundef nonnull @.str.12) #6
  %167 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %168 = load i8, ptr %167, align 4
  %169 = and i8 %168, -5
  store i8 %169, ptr %167, align 4
  %170 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 4
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, -32769
  store i32 %172, ptr %170, align 8
  br label %173

173:                                              ; preds = %165, %161, %157, %155
  %174 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %175 = load i32, ptr %174, align 8
  %176 = lshr i32 %175, 12
  %177 = lshr i32 %175, 8
  %178 = mul i32 %176, %177
  %179 = and i32 %178, 15
  store i32 %179, ptr %2, align 4
  %180 = icmp ne i32 %179, 0
  %181 = and i32 %175, 15
  %182 = icmp ugt i32 %181, %179
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %190

184:                                              ; preds = %173
  %185 = load i16, ptr %11, align 8
  %186 = icmp eq i16 %185, 6048
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = and i32 %175, -16
  %189 = or i32 %179, %188
  store i32 %189, ptr %2, align 4
  store i32 %189, ptr %174, align 8
  br label %190

190:                                              ; preds = %187, %173
  %191 = load i16, ptr %11, align 8
  br label %192

192:                                              ; preds = %190, %184
  %193 = phi i16 [ %191, %190 ], [ %185, %184 ]
  switch i16 %193, label %202 [
    i16 4170, label %194
    i16 6629, label %198
  ]

194:                                              ; preds = %192
  %195 = getelementptr i8, ptr %6, i32 -102
  %196 = load i16, ptr %195, align 2
  %197 = icmp eq i16 %196, -13312
  br i1 %197, label %205, label %202

198:                                              ; preds = %192
  %199 = getelementptr i8, ptr %6, i32 -102
  %200 = load i16, ptr %199, align 2
  %201 = icmp eq i16 %200, -24007
  br i1 %201, label %205, label %202

202:                                              ; preds = %198, %194, %192
  %203 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 17
  %204 = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 96, ptr noundef %203) #5
  br label %205

205:                                              ; preds = %202, %198, %194
  %206 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 1
  %207 = load i16, ptr %206, align 4
  %208 = and i16 %207, 1
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !10
  %211 = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 98, ptr noundef nonnull %5) #5
  %212 = load i16, ptr %5, align 2
  %213 = and i16 %212, 1
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.13) #6
  call void @device_set_wakeup_capable(ptr noundef %6, i1 noundef zeroext true) #5
  br label %216

216:                                              ; preds = %215, %210
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  br label %217

217:                                              ; preds = %216, %205
  %218 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %217
  %223 = load i16, ptr %206, align 4
  %224 = and i16 %223, 1
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  %227 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %227, ptr noundef nonnull @.str.14) #6
  br label %228

228:                                              ; preds = %226, %222, %217
  %229 = call i32 @pci_set_mwi(ptr noundef %7) #5
  %230 = load i16, ptr %11, align 8
  %231 = icmp eq i16 %230, -32634
  br i1 %231, label %232, label %244

232:                                              ; preds = %228
  %233 = getelementptr i8, ptr %6, i32 -102
  %234 = load i16, ptr %233, align 2
  %235 = icmp eq i16 %234, 2361
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load i32, ptr %218, align 4
  %238 = and i32 %237, 16384
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.ehci_regs, ptr %242, i32 0, i32 12, i32 0, i32 1
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 8323199) #5, !srcloc !9
  br label %244

244:                                              ; preds = %240, %236, %232, %228, %152, %59
  %245 = phi i32 [ %153, %152 ], [ -5, %59 ], [ 0, %228 ], [ 0, %232 ], [ 0, %236 ], [ 0, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %245
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_quirk_pll_check() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_hang_symptom_quirk() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_pci_probe(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call ptr @pci_match_id(ptr noundef nonnull @bypass_pci_id_table, ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @usb_hcd_pci_probe(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ehci_pci_hc_driver) #5
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -19, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_pci_remove(ptr noundef %0) #3 {
  tail call void @pci_clear_mwi(ptr noundef %0) #5
  tail call void @usb_hcd_pci_remove(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_pci_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 2153414883}
!9 = !{i64 3825538}
!10 = !{!"auto-init"}
!11 = !{i64 3825956}
!12 = !{i64 2153414373}
