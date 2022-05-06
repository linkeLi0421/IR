; ModuleID = '/llk/IR/drivers/pci/pci-driver.c_pt.bc'
source_filename = "../drivers/pci/pci-driver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_add_dynid:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_add_dynid\22\09\09\09\09\09"
module asm "__kstrtabns_pci_add_dynid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_match_id\22\09\09\09\09\09"
module asm "__kstrtabns_pci_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___pci_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_get\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_put\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dynid = type { %struct.list_head, %struct.pci_device_id }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__kstrtab_pci_add_dynid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_add_dynid = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_add_dynid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_add_dynid to i32), ptr @__kstrtab_pci_add_dynid, ptr @__kstrtabns_pci_add_dynid }, section "___ksymtab_gpl+pci_add_dynid", align 4
@__kstrtab_pci_match_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_match_id = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_match_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_match_id to i32), ptr @__kstrtab_pci_match_id, ptr @__kstrtabns_pci_match_id }, section "___ksymtab+pci_match_id", align 4
@pci_bus_type = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr @pci_bus_groups, ptr @pci_dev_groups, ptr @pci_drv_groups, ptr @pci_bus_match, ptr @pci_uevent, ptr @pci_device_probe, ptr null, ptr @pci_device_remove, ptr @pci_device_shutdown, ptr null, ptr null, ptr null, ptr null, ptr @pci_bus_num_vf, ptr @pci_dma_configure, ptr @pci_dev_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab___pci_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_register_driver to i32), ptr @__kstrtab___pci_register_driver, ptr @__kstrtabns___pci_register_driver }, section "___ksymtab+__pci_register_driver", align 4
@__kstrtab_pci_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unregister_driver to i32), ptr @__kstrtab_pci_unregister_driver, ptr @__kstrtabns_pci_unregister_driver }, section "___ksymtab+pci_unregister_driver", align 4
@pci_compat_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@__kstrtab_pci_dev_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_driver to i32), ptr @__kstrtab_pci_dev_driver, ptr @__kstrtabns_pci_dev_driver }, section "___ksymtab+pci_dev_driver", align 4
@__kstrtab_pci_dev_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_get to i32), ptr @__kstrtab_pci_dev_get, ptr @__kstrtabns_pci_dev_get }, section "___ksymtab+pci_dev_get", align 4
@__kstrtab_pci_dev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_put to i32), ptr @__kstrtab_pci_dev_put, ptr @__kstrtabns_pci_dev_put }, section "___ksymtab+pci_dev_put", align 4
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@pci_bus_groups = external dso_local global [0 x ptr], align 4
@pci_dev_groups = external dso_local global [0 x ptr], align 4
@pci_drv_groups = internal global [2 x ptr] [ptr @pci_drv_group, ptr null], align 4
@pci_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr @pci_pm_prepare, ptr @pci_pm_complete, ptr @pci_pm_suspend, ptr @pci_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr @pci_pm_suspend_late, ptr @pci_pm_resume_early, ptr null, ptr null, ptr null, ptr null, ptr @pci_pm_suspend_noirq, ptr @pci_pm_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr @pci_pm_runtime_suspend, ptr @pci_pm_runtime_resume, ptr @pci_pm_runtime_idle }, align 4
@__kstrtab_pci_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_type to i32), ptr @__kstrtab_pci_bus_type, ptr @__kstrtabns_pci_bus_type }, section "___ksymtab+pci_bus_type", align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pci_express\00", align 1
@pcie_port_bus_type = dso_local global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_port_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_pcie_port_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_bus_type to i32), ptr @__kstrtab_pcie_port_bus_type, ptr @__kstrtabns_pcie_port_bus_type }, section "___ksymtab_gpl+pcie_port_bus_type", align 4
@__initcall__kmod_pci_driver__258_1672_pci_driver_init2 = internal global ptr @pci_driver_init, section ".initcall2.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"compat\00", align 1
@pci_drv_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_drv_attrs, ptr null }, align 4
@pci_drv_attrs = internal global [3 x ptr] [ptr @driver_attr_new_id, ptr @driver_attr_remove_id, ptr null], align 4
@driver_attr_new_id = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.3, i16 128 }, ptr null, ptr @new_id_store }, align 4
@driver_attr_remove_id = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.5, i16 128 }, ptr null, ptr @remove_id_store }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"new_id\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%x %x %x %x %x %x %lx\00", align 1
@pci_device_id_any = internal constant %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"remove_id\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%x %x %x %x %x %x\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"PCI_CLASS=%04X\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"PCI_ID=%04X:%04X\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"PCI_SUBSYS_ID=%04X:%04X\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PCI_SLOT_NAME=%s\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"MODALIAS=pci:v%08Xd%08Xsv%08Xsd%08Xbc%02Xsc%02Xi%02X\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Driver probe function unexpectedly returned %d\0A\00", align 1
@kexec_in_progress = external dso_local local_unnamed_addr global i8, align 1
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@__func__.pci_pm_suspend = private unnamed_addr constant [15 x i8] c"pci_pm_suspend\00", align 1
@pci_pm_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"drivers/pci/pci-driver.c\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"%s %s: PCI PM: State of device not saved by %pS\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"%s %s: device %04x:%04x\0A\00", align 1
@__func__.pci_legacy_suspend = private unnamed_addr constant [19 x i8] c"pci_legacy_suspend\00", align 1
@pci_legacy_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"%s %s: PCI PM: Device state not saved by %pS\0A\00", align 1
@__func__.pci_pm_suspend_noirq = private unnamed_addr constant [21 x i8] c"pci_pm_suspend_noirq\00", align 1
@pci_pm_suspend_noirq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"can't suspend (%ps returned %d)\0A\00", align 1
@pci_pm_runtime_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_pci_driver__258_1672_pci_driver_init2, ptr @__ksymtab___pci_register_driver, ptr @__ksymtab_pci_add_dynid, ptr @__ksymtab_pci_bus_type, ptr @__ksymtab_pci_dev_driver, ptr @__ksymtab_pci_dev_get, ptr @__ksymtab_pci_dev_put, ptr @__ksymtab_pci_match_id, ptr @__ksymtab_pci_unregister_driver, ptr @__ksymtab_pcie_port_bus_type], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_add_dynid(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1
  store i32 %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1, i32 1
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1, i32 2
  store i32 %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1, i32 3
  store i32 %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1, i32 4
  store i32 %5, ptr %17, align 8
  %18 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1, i32 5
  store i32 %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pci_dynid, ptr %10, i32 0, i32 1, i32 6
  store i32 %7, ptr %19, align 8
  %20 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15, i32 1
  %22 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %10, ptr %22, align 4
  store ptr %21, ptr %10, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %10, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %25 = load i16, ptr %20, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %27 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14
  %28 = tail call i32 @driver_attach(ptr noundef %27) #13
  br label %29

29:                                               ; preds = %12, %8
  %30 = phi i32 [ %28, %12 ], [ -12, %8 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_match_id(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %7 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %9 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 11
  br label %10

10:                                               ; preds = %60, %4
  %11 = phi ptr [ %61, %60 ], [ %0, %4 ]
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %21 [
    i32 0, label %13
    i32 -1, label %25
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %17, %13, %10
  %22 = load i16, ptr %5, align 8
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %12, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21, %10
  %26 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i16, ptr %6, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i16, ptr %7, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr %8, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %9, align 8
  %53 = xor i32 %52, %51
  %54 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  %58 = icmp eq ptr %11, null
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %62

60:                                               ; preds = %49, %45, %37, %29, %21
  %61 = getelementptr %struct.pci_device_id, ptr %11, i32 1
  br label %10

62:                                               ; preds = %49, %17, %2
  %63 = phi ptr [ null, %2 ], [ %11, %49 ], [ null, %17 ]
  ret ptr %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_alloc_irq(ptr noundef %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_free_irq(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pci_register_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14, i32 1
  store ptr @pci_bus_type, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14, i32 2
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14, i32 3
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14, i32 14
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14, i32 15
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = tail call i32 @driver_register(ptr noundef %6) #13
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_unregister_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 14
  tail call void @driver_unregister(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef %8) #13
  %13 = icmp eq ptr %9, %4
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %15 = load i16, ptr %3, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_dev_driver(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  %33 = select i1 %32, ptr null, ptr @pci_compat_driver
  br label %34

34:                                               ; preds = %29, %25, %21, %17, %13, %9, %5, %1
  %35 = phi ptr [ %3, %1 ], [ @pci_compat_driver, %5 ], [ @pci_compat_driver, %9 ], [ @pci_compat_driver, %13 ], [ @pci_compat_driver, %17 ], [ @pci_compat_driver, %21 ], [ @pci_compat_driver, %25 ], [ %33, %29 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_dev_get(ptr noundef returned %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %5 = tail call ptr @get_device(ptr noundef %4) #13
  br label %6

6:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_dev_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @put_device(ptr noundef %4) #13
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_bus_match(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 832
  %4 = load i8, ptr %3, align 8, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -136
  %8 = icmp eq ptr %1, null
  %9 = getelementptr i8, ptr %1, i32 -60
  %10 = select i1 %8, ptr null, ptr %9
  %11 = tail call fastcc ptr @pci_match_device(ptr noundef %10, ptr noundef %7)
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_uevent(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -96
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -104
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 -102
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %15) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %9
  %19 = getelementptr i8, ptr %0, i32 -100
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %0, i32 -98
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %21, i32 noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %18
  %28 = getelementptr i8, ptr %0, i32 44
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %34) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i16, ptr %10, align 8
  %39 = zext i16 %38 to i32
  %40 = load i16, ptr %13, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, ptr %19, align 4
  %43 = zext i16 %42 to i32
  %44 = load i16, ptr %22, align 2
  %45 = zext i16 %44 to i32
  %46 = load i32, ptr %5, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = lshr i32 %46, 8
  %50 = and i32 %49, 255
  %51 = and i32 %46, 255
  %52 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %48, i32 noundef %50, i32 noundef %51) #13
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 -12
  br label %55

55:                                               ; preds = %37, %33, %18, %9, %4, %2
  %56 = phi i32 [ -19, %2 ], [ -12, %4 ], [ -12, %9 ], [ -12, %18 ], [ -12, %33 ], [ %54, %37 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_device_probe(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -60
  %7 = select i1 %5, ptr null, ptr %6
  tail call void @pci_assign_irq(ptr noundef %2) #13
  %8 = tail call i32 @pcibios_alloc_irq(ptr noundef %2)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %2, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @get_device(ptr noundef %0) #13
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds %struct.pci_driver, ptr %7, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @pci_match_device(ptr noundef %7, ptr noundef %2) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 833
  %23 = load i40, ptr %22, align 1
  %24 = or i40 %23, 8589934592
  store i40 %24, ptr %22, align 1
  tail call void @cpu_hotplug_disable() #13
  %25 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #13
  %26 = getelementptr i8, ptr %0, i32 -64
  store ptr %7, ptr %26, align 8
  %27 = load ptr, ptr %15, align 4
  %28 = tail call i32 %27(ptr noundef %2, ptr noundef nonnull %19) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = icmp slt i32 %28, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  store ptr null, ptr %26, align 8
  %33 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #13
  br label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %28) #14
  br label %35

35:                                               ; preds = %34, %32, %21
  %36 = phi i32 [ %28, %32 ], [ 0, %34 ], [ 0, %21 ]
  %37 = load i40, ptr %22, align 1
  %38 = and i40 %37, -8589934593
  store i40 %38, ptr %22, align 1
  tail call void @cpu_hotplug_enable() #13
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %18
  %41 = phi i32 [ %36, %35 ], [ -19, %18 ]
  tail call void @pcibios_free_irq(ptr noundef %2)
  br i1 %11, label %43, label %42

42:                                               ; preds = %40
  tail call void @put_device(ptr noundef %0) #13
  br label %43

43:                                               ; preds = %42, %40, %35, %14, %1
  %44 = phi i32 [ %8, %1 ], [ 0, %35 ], [ %41, %40 ], [ %41, %42 ], [ 0, %14 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_device_remove(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_driver, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #13
  %10 = load ptr, ptr %5, align 4
  tail call void %10(ptr noundef %2) #13
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #13, !srcloc !15
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  br label %16

16:                                               ; preds = %15, %8, %1
  tail call void @pcibios_free_irq(ptr noundef %2)
  store ptr null, ptr %3, align 8
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #13
  %18 = getelementptr i8, ptr %0, i32 -36
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 5, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = icmp eq ptr %2, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @put_device(ptr noundef %0) #13
  br label %25

25:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_device_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #13
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_driver, ptr %4, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %2) #13
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = load i8, ptr @kexec_in_progress, align 1, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 -36
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @pci_clear_master(ptr noundef %2) #13
  br label %20

20:                                               ; preds = %19, %15, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_bus_num_vf(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_dma_configure(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = tail call ptr @pci_get_host_bridge_device(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @of_dma_configure_id(ptr noundef %0, ptr noundef nonnull %9, i1 noundef zeroext true, ptr noundef null) #13
  br label %13

13:                                               ; preds = %11, %7, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ], [ 0, %1 ]
  tail call void @pci_put_host_bridge_device(ptr noundef %3) #13
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @pcie_port_bus_type
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @pcie_port_bus_type
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %1, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %1, i32 -8
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 24
  %24 = load i16, ptr %23, align 2
  %25 = lshr i16 %24, 4
  %26 = and i16 %25, 15
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %18, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %16
  br label %30

30:                                               ; preds = %29, %20, %10, %6, %2
  %31 = phi i32 [ 1, %29 ], [ 0, %6 ], [ 0, %2 ], [ 0, %10 ], [ 0, %20 ]
  ret i32 %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_driver_init() #7 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @pci_bus_type) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @bus_register(ptr noundef nonnull @pcie_port_bus_type) #13
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %1, %0 ], [ %4, %3 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @new_id_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq ptr %0, null
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.pci_driver, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 -1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 -1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4
  %16 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %90, label %18

18:                                               ; preds = %3
  %19 = icmp eq i32 %16, 7
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 1208) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %90, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 7
  store i16 %26, ptr %27, align 8
  %28 = load i32, ptr %5, align 4
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 8
  store i16 %29, ptr %30, align 2
  %31 = load i32, ptr %6, align 4
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 9
  store i16 %32, ptr %33, align 4
  %34 = load i32, ptr %7, align 4
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 10
  store i16 %35, ptr %36, align 2
  %37 = load i32, ptr %8, align 4
  %38 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 11
  store i32 %37, ptr %38, align 8
  %39 = call fastcc ptr @pci_match_device(ptr noundef %13, ptr noundef nonnull %22)
  %40 = icmp eq ptr %39, null
  call void @kfree(ptr noundef nonnull %22) #13
  br i1 %40, label %41, label %90

41:                                               ; preds = %24, %18
  %42 = icmp eq ptr %15, null
  %43 = load i32, ptr %10, align 4
  br i1 %42, label %61, label %44

44:                                               ; preds = %56, %41
  %45 = phi ptr [ %60, %56 ], [ %15, %41 ]
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pci_device_id, ptr %45, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.pci_device_id, ptr %45, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %52, %48, %44
  %57 = getelementptr inbounds %struct.pci_device_id, ptr %45, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %43, %58
  %60 = getelementptr %struct.pci_device_id, ptr %45, i32 1
  br i1 %59, label %61, label %44

61:                                               ; preds = %56, %41
  %62 = load i32, ptr %4, align 4
  %63 = load i32, ptr %5, align 4
  %64 = load i32, ptr %6, align 4
  %65 = load i32, ptr %7, align 4
  %66 = load i32, ptr %8, align 4
  %67 = load i32, ptr %9, align 4
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %69 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 40) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1
  store i32 %62, ptr %72, align 8
  %73 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1, i32 1
  store i32 %63, ptr %73, align 4
  %74 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1, i32 2
  store i32 %64, ptr %74, align 8
  %75 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1, i32 3
  store i32 %65, ptr %75, align 4
  %76 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1, i32 4
  store i32 %66, ptr %76, align 8
  %77 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1, i32 5
  store i32 %67, ptr %77, align 4
  %78 = getelementptr inbounds %struct.pci_dynid, ptr %69, i32 0, i32 1, i32 6
  store i32 %43, ptr %78, align 8
  %79 = getelementptr inbounds %struct.pci_driver, ptr %13, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %79) #13
  %80 = getelementptr inbounds %struct.pci_driver, ptr %13, i32 0, i32 15, i32 1
  %81 = getelementptr inbounds %struct.pci_driver, ptr %13, i32 0, i32 15, i32 1, i32 1
  %82 = load ptr, ptr %81, align 4
  store ptr %69, ptr %81, align 4
  store ptr %80, ptr %69, align 8
  %83 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  store volatile ptr %69, ptr %82, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %84 = load i16, ptr %79, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %79, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %86 = getelementptr inbounds %struct.pci_driver, ptr %13, i32 0, i32 14
  %87 = call i32 @driver_attach(ptr noundef %86) #13
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 %2, i32 %87
  br label %90

90:                                               ; preds = %71, %61, %52, %24, %20, %3
  %91 = phi i32 [ -17, %24 ], [ -22, %3 ], [ -12, %20 ], [ -12, %61 ], [ %89, %71 ], [ -22, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %91
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pci_match_device(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 64
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %145

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 15, i32 1
  %14 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %15 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %16 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %17 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %18 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 11
  br label %19

19:                                               ; preds = %65, %11
  %20 = phi ptr [ %13, %11 ], [ %21, %65 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %13
  br i1 %22, label %68, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_dynid, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i16, ptr %14, align 8
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.pci_dynid, ptr %21, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i16, ptr %15, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.pci_dynid, ptr %21, i32 0, i32 1, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i16, ptr %16, align 4
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.pci_dynid, ptr %21, i32 0, i32 1, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr %17, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.pci_dynid, ptr %21, i32 0, i32 1, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %18, align 8
  %59 = xor i32 %58, %57
  %60 = getelementptr inbounds %struct.pci_dynid, ptr %21, i32 0, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55, %51, %43, %35, %27
  br label %65

65:                                               ; preds = %64, %55
  %66 = phi ptr [ null, %64 ], [ %24, %55 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %19, label %68

68:                                               ; preds = %65, %19
  %69 = phi ptr [ null, %19 ], [ %24, %65 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %70 = load i16, ptr %12, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %72 = icmp eq ptr %69, null
  br i1 %72, label %73, label %145

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.pci_driver, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %141, label %77

77:                                               ; preds = %129, %73
  %78 = phi ptr [ %130, %129 ], [ %75, %73 ]
  %79 = load i32, ptr %78, align 4
  switch i32 %79, label %88 [
    i32 0, label %80
    i32 -1, label %92
  ]

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %141, label %88

88:                                               ; preds = %84, %80, %77
  %89 = load i16, ptr %14, align 8
  %90 = zext i16 %89 to i32
  %91 = icmp eq i32 %79, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %88, %77
  %93 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i16, ptr %15, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %96, %92
  %101 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i16, ptr %16, align 4
  %106 = zext i16 %105 to i32
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i16, ptr %17, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112, %108
  %117 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %18, align 8
  %120 = xor i32 %119, %118
  %121 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  %125 = icmp eq ptr %78, null
  %126 = or i1 %125, %124
  br i1 %126, label %127, label %131

127:                                              ; preds = %116, %112, %104, %96, %88
  %128 = getelementptr %struct.pci_device_id, ptr %78, i32 1
  br label %129

129:                                              ; preds = %138, %127
  %130 = phi ptr [ %128, %127 ], [ %139, %138 ]
  br label %77

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.pci_device_id, ptr %78, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %3, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = getelementptr %struct.pci_device_id, ptr %78, i32 1
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %129

141:                                              ; preds = %138, %84, %73
  %142 = load ptr, ptr %3, align 4
  %143 = icmp eq ptr %142, null
  %144 = select i1 %143, ptr null, ptr @pci_device_id_any
  br label %145

145:                                              ; preds = %141, %135, %131, %68, %6
  %146 = phi ptr [ null, %6 ], [ %69, %68 ], [ %144, %141 ], [ %78, %135 ], [ %78, %131 ]
  ret ptr %146
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_id_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 -1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 -1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %65, label %12

12:                                               ; preds = %3
  %13 = icmp eq ptr %0, null
  %14 = getelementptr i8, ptr %0, i32 -60
  %15 = select i1 %13, ptr null, ptr %14
  %16 = getelementptr inbounds %struct.pci_driver, ptr %15, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.pci_driver, ptr %15, i32 0, i32 15, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %61, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp eq i32 %23, -1
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, -1
  %27 = load i32, ptr %8, align 4
  %28 = load i32, ptr %9, align 4
  br label %29

29:                                               ; preds = %59, %20
  %30 = phi ptr [ %18, %20 ], [ %31, %59 ]
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.pci_dynid, ptr %30, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %21
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.pci_dynid, ptr %30, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %22
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  br i1 %24, label %44, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.pci_dynid, ptr %30, i32 0, i32 1, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %23
  br i1 %43, label %44, label %59

44:                                               ; preds = %40, %39
  br i1 %26, label %49, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.pci_dynid, ptr %30, i32 0, i32 1, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %25
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %44
  %50 = getelementptr inbounds %struct.pci_dynid, ptr %30, i32 0, i32 1, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %27, %51
  %53 = and i32 %52, %28
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %31, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  call void @kfree(ptr noundef %30) #13
  br label %61

59:                                               ; preds = %49, %45, %40, %35, %29
  %60 = icmp eq ptr %31, %17
  br i1 %60, label %61, label %29

61:                                               ; preds = %59, %55, %12
  %62 = phi i32 [ %2, %55 ], [ -19, %12 ], [ -19, %59 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %63 = load i16, ptr %16, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %65

65:                                               ; preds = %61, %3
  %66 = phi i32 [ %62, %61 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_enable() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_host_bridge_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_put_host_bridge_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_prepare(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef %0) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %16, %10, %6, %1
  %24 = tail call zeroext i1 @pci_dev_need_resume(ptr noundef %2) #13
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @pci_dev_adjust_pme(ptr noundef %2) #13
  br label %26

26:                                               ; preds = %25, %23, %18, %13
  %27 = phi i32 [ 1, %25 ], [ 0, %23 ], [ 0, %18 ], [ %14, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_pm_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  tail call void @pci_dev_complete_resume(ptr noundef %2) #13
  tail call void @pm_generic_complete(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load i32, ptr @pm_suspend_global_flags, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 -36
  %17 = load i32, ptr %16, align 4
  tail call void @pci_refresh_power_state(ptr noundef %2) #13
  %18 = load i32, ptr %16, align 4
  %19 = icmp slt i32 %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 1) #13
  br label %22

22:                                               ; preds = %20, %15, %11, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = getelementptr i8, ptr %0, i32 -30
  %12 = load i32, ptr %11, align 2
  %13 = and i32 %12, -32769
  store i32 %13, ptr %11, align 2
  %14 = getelementptr i8, ptr %0, i32 -64
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %80, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.pci_driver, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_driver, ptr %15, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %80, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.pci_driver, ptr %15, i32 0, i32 14, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29, !prof !18

29:                                               ; preds = %25
  %30 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %31 = getelementptr i8, ptr %0, i32 44
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %35, %34 ], [ %32, %29 ]
  %38 = getelementptr i8, ptr %0, i32 -104
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %0, i32 -102
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %30, ptr noundef %37, i32 noundef %40, i32 noundef %43) #13
  %44 = load ptr, ptr %14, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %79, label %46

46:                                               ; preds = %36, %25
  %47 = phi ptr [ %44, %36 ], [ %15, %25 ]
  %48 = getelementptr inbounds %struct.pci_driver, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %79, label %51

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %0, i32 -36
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 %49(ptr noundef %2, [1 x i32] [i32 2]) #13
  %55 = load ptr, ptr %48, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_legacy_suspend, ptr noundef %55, i32 noundef %54) #13
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %132

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %0, i32 833
  %59 = load i40, ptr %58, align 1
  %60 = and i40 %59, 2097152
  %61 = icmp eq i40 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32, ptr %52, align 4
  switch i32 %63, label %64 [
    i32 0, label %79
    i32 5, label %79
  ]

64:                                               ; preds = %62
  %65 = icmp ne i32 %63, %53
  %66 = load i1, ptr @pci_legacy_suspend.__already_done, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %79, !prof !19

69:                                               ; preds = %64
  store i1 true, ptr @pci_legacy_suspend.__already_done, align 1
  %70 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %71 = getelementptr i8, ptr %0, i32 44
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %0, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi ptr [ %75, %74 ], [ %72, %69 ]
  %78 = load ptr, ptr %48, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 607, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %70, ptr noundef %77, ptr noundef %78) #13
  br label %79

79:                                               ; preds = %76, %64, %62, %62, %57, %46, %36
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %2) #13
  br label %132

80:                                               ; preds = %21, %9
  %81 = icmp eq ptr %10, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = getelementptr i8, ptr %0, i32 -124
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %132

86:                                               ; preds = %82
  tail call void @pci_disable_enabled_device(ptr noundef %2) #13
  br label %132

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = tail call zeroext i1 @pci_dev_need_resume(ptr noundef %2) #13
  br i1 %93, label %94, label %99

94:                                               ; preds = %92, %87
  %95 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #13
  %96 = getelementptr i8, ptr %0, i32 833
  %97 = load i40, ptr %96, align 1
  %98 = and i40 %97, -2097153
  store i40 %98, ptr %96, align 1
  br label %100

99:                                               ; preds = %92
  tail call void @pci_dev_adjust_pme(ptr noundef %2) #13
  br label %100

100:                                              ; preds = %99, %94
  %101 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %132, label %104

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %0, i32 -36
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 %102(ptr noundef %0) #13
  %108 = load ptr, ptr %101, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_suspend, ptr noundef %108, i32 noundef %107) #13
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %0, i32 833
  %112 = load i40, ptr %111, align 1
  %113 = and i40 %112, 2097152
  %114 = icmp eq i40 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load i32, ptr %105, align 4
  switch i32 %116, label %117 [
    i32 0, label %132
    i32 5, label %132
  ]

117:                                              ; preds = %115
  %118 = icmp ne i32 %116, %106
  %119 = load i1, ptr @pci_pm_suspend.__already_done, align 1
  %120 = xor i1 %119, true
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %132, !prof !19

122:                                              ; preds = %117
  store i1 true, ptr @pci_pm_suspend.__already_done, align 1
  %123 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %124 = getelementptr i8, ptr %0, i32 44
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load ptr, ptr %0, align 4
  br label %129

129:                                              ; preds = %127, %122
  %130 = phi ptr [ %128, %127 ], [ %125, %122 ]
  %131 = load ptr, ptr %101, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 786, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %123, ptr noundef %130, ptr noundef %131) #13
  br label %132

132:                                              ; preds = %129, %117, %115, %115, %110, %104, %100, %86, %82, %79, %51
  %133 = phi i32 [ 0, %129 ], [ 0, %100 ], [ %107, %104 ], [ 0, %110 ], [ 0, %115 ], [ 0, %115 ], [ 0, %117 ], [ 0, %79 ], [ %54, %51 ], [ 0, %82 ], [ 0, %86 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = getelementptr i8, ptr %0, i32 833
  %12 = load i40, ptr %11, align 1
  %13 = and i40 %12, 2097152
  %14 = icmp eq i40 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  tail call void @pci_update_current_state(ptr noundef %2, i32 noundef 5) #13
  %16 = getelementptr i8, ptr %0, i32 -36
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @pci_set_power_state(ptr noundef %2, i32 noundef 0) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %15
  tail call void @pci_restore_state(ptr noundef %2) #13
  tail call void @pci_pme_restore(ptr noundef %2) #13
  br label %23

23:                                               ; preds = %22, %19, %9
  %24 = getelementptr i8, ptr %0, i32 -64
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %70, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pci_driver, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.pci_driver, ptr %25, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.pci_driver, ptr %25, i32 0, i32 14, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !18

39:                                               ; preds = %35
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %2) #13
  br label %57

40:                                               ; preds = %35
  %41 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %42 = getelementptr i8, ptr %0, i32 44
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %46, %45 ], [ %43, %40 ]
  %49 = getelementptr i8, ptr %0, i32 -104
  %50 = load i16, ptr %49, align 8
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %0, i32 -102
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %41, ptr noundef %48, i32 noundef %51, i32 noundef %54) #13
  %55 = load ptr, ptr %24, align 8
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %2) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %47, %39
  %58 = phi ptr [ %25, %39 ], [ %55, %47 ]
  %59 = getelementptr inbounds %struct.pci_driver, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call i32 %60(ptr noundef %2) #13
  br label %85

64:                                               ; preds = %57, %47
  %65 = tail call i32 @pci_reenable_device(ptr noundef %2) #13
  %66 = load i40, ptr %11, align 1
  %67 = and i40 %66, 32
  %68 = icmp eq i40 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  tail call void @pci_set_master(ptr noundef %2) #13
  br label %85

70:                                               ; preds = %31, %23
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %2) #13
  %71 = tail call i32 @pci_enable_wake(ptr noundef %2, i32 noundef 0, i1 noundef zeroext false) #13
  %72 = icmp eq ptr %10, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %0) #13
  br label %85

79:                                               ; preds = %70
  %80 = tail call i32 @pci_reenable_device(ptr noundef %2) #13
  %81 = load i40, ptr %11, align 1
  %82 = and i40 %81, 32
  %83 = icmp eq i40 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void @pci_set_master(ptr noundef %2) #13
  br label %85

85:                                               ; preds = %84, %79, %77, %73, %69, %64, %62
  %86 = phi i32 [ %78, %77 ], [ 0, %73 ], [ %63, %62 ], [ %65, %64 ], [ %65, %69 ], [ 0, %79 ], [ 0, %84 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_suspend_late(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %0) #13
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -136
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %4) #13
  %5 = tail call i32 @pm_generic_suspend_late(ptr noundef %0) #13
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_resume_early(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @dev_pm_skip_resume(ptr noundef %0) #13
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @pm_generic_resume_early(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_suspend_noirq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %0) #13
  br i1 %11, label %163, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 -64
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_driver, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_driver, ptr %14, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.pci_driver, ptr %14, i32 0, i32 14, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28, !prof !18

28:                                               ; preds = %24
  %29 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %30 = getelementptr i8, ptr %0, i32 44
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %0, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %37 = getelementptr i8, ptr %0, i32 -104
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %0, i32 -102
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %29, ptr noundef %36, i32 noundef %39, i32 noundef %42) #13
  br label %43

43:                                               ; preds = %35, %24
  %44 = getelementptr i8, ptr %0, i32 833
  %45 = load i40, ptr %44, align 1
  %46 = and i40 %45, 2097152
  %47 = icmp eq i40 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call i32 @pci_save_state(ptr noundef %2) #13
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr i8, ptr %0, i32 -36
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 5, ptr %51, align 4
  br label %55

55:                                               ; preds = %54, %50
  tail call void @pci_fixup_device(i32 noundef 7, ptr noundef %2) #13
  br label %163

56:                                               ; preds = %20, %12
  %57 = icmp eq ptr %10, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = tail call i32 @pci_save_state(ptr noundef %2) #13
  br label %150

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 14
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %92, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %0, i32 -36
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 %62(ptr noundef %0) #13
  %68 = load ptr, ptr %61, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_suspend_noirq, ptr noundef %68, i32 noundef %67) #13
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %163

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %0, i32 833
  %72 = load i40, ptr %71, align 1
  %73 = and i40 %72, 2097152
  %74 = icmp eq i40 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load i32, ptr %65, align 4
  switch i32 %76, label %77 [
    i32 0, label %92
    i32 5, label %92
  ]

77:                                               ; preds = %75
  %78 = icmp ne i32 %76, %66
  %79 = load i1, ptr @pci_pm_suspend_noirq.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %150, !prof !19

82:                                               ; preds = %77
  store i1 true, ptr @pci_pm_suspend_noirq.__already_done, align 1
  %83 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %84 = getelementptr i8, ptr %0, i32 44
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load ptr, ptr %0, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi ptr [ %88, %87 ], [ %85, %82 ]
  %91 = load ptr, ptr %61, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 832, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %83, ptr noundef %90, ptr noundef %91) #13
  br label %150

92:                                               ; preds = %75, %75, %70, %60
  %93 = getelementptr i8, ptr %0, i32 -30
  %94 = load i32, ptr %93, align 2
  %95 = and i32 %94, 32768
  %96 = icmp eq i32 %95, 0
  %97 = getelementptr i8, ptr %0, i32 833
  %98 = load i40, ptr %97, align 1
  %99 = and i40 %98, 2097152
  %100 = icmp eq i40 %99, 0
  br i1 %96, label %104, label %101

101:                                              ; preds = %92
  br i1 %100, label %102, label %116

102:                                              ; preds = %101
  %103 = tail call i32 @pci_save_state(ptr noundef %2) #13
  br label %116

104:                                              ; preds = %92
  br i1 %100, label %105, label %116

105:                                              ; preds = %104
  %106 = tail call i32 @pci_save_state(ptr noundef %2) #13
  %107 = getelementptr i8, ptr %0, i32 -124
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %93, align 2
  %112 = and i32 %111, 1024
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110, %105
  %115 = tail call i32 @pci_prepare_to_sleep(ptr noundef %2) #13
  br label %116

116:                                              ; preds = %114, %110, %104, %102, %101
  %117 = getelementptr i8, ptr %0, i32 -36
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, ptr %93, align 2
  %122 = or i32 %121, 32768
  store i32 %122, ptr %93, align 2
  %123 = getelementptr i8, ptr %0, i32 -128
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.pci_bus, ptr %124, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 33
  %130 = load i32, ptr %129, align 2
  %131 = or i32 %130, 32768
  store i32 %131, ptr %129, align 2
  br label %132

132:                                              ; preds = %128, %120, %116
  %133 = load i32, ptr %93, align 2
  %134 = and i32 %133, 32768
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr @pm_suspend_global_flags, align 4
  %138 = and i32 %137, 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %136, %132
  %141 = load i32, ptr %117, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 5, ptr %117, align 4
  br label %144

144:                                              ; preds = %143, %140
  %145 = getelementptr i8, ptr %0, i32 -96
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, 787232
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = tail call i32 @pci_write_config_word(ptr noundef %2, i32 noundef 4, i16 noundef zeroext 0) #13
  br label %150

150:                                              ; preds = %148, %144, %136, %89, %77, %58
  tail call void @pci_fixup_device(i32 noundef 7, ptr noundef %2) #13
  %151 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %152 = load i16, ptr %151, align 4
  %153 = and i16 %152, 1
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %161 = load i8, ptr %160, align 4
  %162 = and i8 %161, -17
  store i8 %162, ptr %160, align 4
  br label %163

163:                                              ; preds = %159, %155, %150, %64, %55, %9
  %164 = phi i32 [ 0, %55 ], [ 0, %9 ], [ 0, %159 ], [ 0, %155 ], [ 0, %150 ], [ %67, %64 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_resume_noirq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -30
  %14 = load i32, ptr %13, align 2
  %15 = and i32 %14, 32768
  %16 = icmp eq i32 %15, 0
  %17 = tail call zeroext i1 @dev_pm_skip_resume(ptr noundef %0) #13
  br i1 %17, label %79, label %18

18:                                               ; preds = %9
  br i1 %16, label %23, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr @pm_suspend_global_flags, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %18
  %24 = tail call i32 @pci_power_up(ptr noundef %2) #13
  tail call void @pci_update_current_state(ptr noundef %2, i32 noundef 0) #13
  tail call void @pci_restore_state(ptr noundef %2) #13
  tail call void @pci_pme_restore(ptr noundef %2) #13
  br label %25

25:                                               ; preds = %23, %19
  tail call void @pci_fixup_device(i32 noundef 6, ptr noundef %2) #13
  %26 = getelementptr i8, ptr %0, i32 -76
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %0, i32 -70
  %31 = load i16, ptr %30, align 2
  %32 = lshr i16 %31, 4
  %33 = and i16 %32, 15
  %34 = zext i16 %33 to i32
  switch i32 %34, label %36 [
    i32 4, label %35
    i32 10, label %35
  ]

35:                                               ; preds = %29, %29
  tail call void @pcie_clear_root_pme_status(ptr noundef %2) #13
  br label %36

36:                                               ; preds = %35, %29, %25
  %37 = icmp eq i32 %12, 4
  %38 = select i1 %16, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @pci_bridge_wait_for_secondary_bus(ptr noundef %2) #13
  br label %40

40:                                               ; preds = %39, %36
  %41 = getelementptr i8, ptr %0, i32 -64
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.pci_driver, ptr %42, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pci_driver, ptr %42, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.pci_driver, ptr %42, i32 0, i32 14, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %79, label %56, !prof !18

56:                                               ; preds = %52
  %57 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %58 = getelementptr i8, ptr %0, i32 44
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load ptr, ptr %0, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %62, %61 ], [ %59, %56 ]
  %65 = getelementptr i8, ptr %0, i32 -104
  %66 = load i16, ptr %65, align 8
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %0, i32 -102
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %57, ptr noundef %64, i32 noundef %67, i32 noundef %70) #13
  br label %79

71:                                               ; preds = %48, %40
  %72 = icmp eq ptr %10, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %0) #13
  br label %79

79:                                               ; preds = %77, %73, %71, %63, %52, %9
  %80 = phi i32 [ %78, %77 ], [ 0, %9 ], [ 0, %71 ], [ 0, %73 ], [ 0, %63 ], [ 0, %52 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -64
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = tail call i32 @pci_save_state(ptr noundef %2) #13
  br label %63

18:                                               ; preds = %9
  %19 = getelementptr i8, ptr %0, i32 833
  %20 = load i40, ptr %19, align 1
  %21 = and i40 %20, -2097153
  store i40 %21, ptr %19, align 1
  %22 = icmp eq ptr %10, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0) #13
  switch i32 %28, label %29 [
    i32 -11, label %63
    i32 -16, label %63
    i32 0, label %31
  ]

29:                                               ; preds = %27
  %30 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %30, i32 noundef %28) #14
  br label %63

31:                                               ; preds = %27, %23
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %2) #13
  %32 = load ptr, ptr %24, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %31
  %35 = load i40, ptr %19, align 1
  %36 = and i40 %35, 2097152
  %37 = icmp eq i40 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, ptr %11, align 4
  switch i32 %39, label %40 [
    i32 0, label %56
    i32 5, label %56
  ]

40:                                               ; preds = %38
  %41 = icmp ne i32 %39, %12
  %42 = load i1, ptr @pci_pm_runtime_suspend.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %63, !prof !19

45:                                               ; preds = %40
  store i1 true, ptr @pci_pm_runtime_suspend.__already_done, align 1
  %46 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %47 = getelementptr i8, ptr %0, i32 44
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %0, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi ptr [ %51, %50 ], [ %48, %45 ]
  %54 = load ptr, ptr %24, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1280, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %46, ptr noundef %53, ptr noundef %54) #13
  br label %63

55:                                               ; preds = %18
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %2) #13
  br label %56

56:                                               ; preds = %55, %38, %38, %34, %31
  %57 = load i40, ptr %19, align 1
  %58 = and i40 %57, 2097152
  %59 = icmp eq i40 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = tail call i32 @pci_save_state(ptr noundef %2) #13
  %62 = tail call i32 @pci_finish_runtime_suspend(ptr noundef %2) #13
  br label %63

63:                                               ; preds = %60, %56, %52, %40, %29, %27, %27, %16
  %64 = phi i32 [ %28, %29 ], [ 0, %16 ], [ %28, %27 ], [ %28, %27 ], [ 0, %52 ], [ 0, %40 ], [ 0, %60 ], [ 0, %56 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = load i32, ptr %11, align 4
  tail call void @pci_update_current_state(ptr noundef %2, i32 noundef 5) #13
  %13 = load i32, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @pci_set_power_state(ptr noundef %2, i32 noundef 0) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %9
  tail call void @pci_restore_state(ptr noundef %2) #13
  tail call void @pci_pme_restore(ptr noundef %2) #13
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr i8, ptr %0, i32 -64
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  tail call void @pci_fixup_device(i32 noundef 6, ptr noundef %2) #13
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %2) #13
  %24 = tail call i32 @pci_enable_wake(ptr noundef %2, i32 noundef 0, i1 noundef zeroext false) #13
  %25 = icmp eq i32 %12, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @pci_bridge_wait_for_secondary_bus(ptr noundef %2) #13
  br label %27

27:                                               ; preds = %26, %23
  %28 = icmp eq ptr %10, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %33, %29, %27
  %36 = phi i32 [ %34, %33 ], [ 0, %29 ], [ 0, %27 ]
  %37 = getelementptr i8, ptr %0, i32 -30
  %38 = load i32, ptr %37, align 2
  %39 = and i32 %38, -16385
  store i32 %39, ptr %37, align 2
  br label %40

40:                                               ; preds = %35, %19
  %41 = phi i32 [ %36, %35 ], [ 0, %19 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_runtime_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -64
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %16

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -64
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 0, i32 -38
  br label %24

16:                                               ; preds = %5
  %17 = icmp eq ptr %7, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0) #13
  br label %24

24:                                               ; preds = %22, %18, %16, %11, %5
  %25 = phi i32 [ %23, %22 ], [ 0, %5 ], [ -38, %16 ], [ 0, %18 ], [ %15, %11 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dev_need_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_adjust_pme(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_complete_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_generic_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_refresh_power_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__suspend_report_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_device(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_enabled_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_update_current_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pme_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_skip_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_late(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_skip_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_early(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_wait_for_secondary_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_root_pme_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_finish_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!8 = !{i64 2149163514}
!9 = !{i64 2149159338}
!10 = !{i64 2149159413, i64 2149159440, i64 2149159487, i64 2149159509, i64 2149159537, i64 2149159557}
!11 = !{i64 2149186517}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148342249}
!14 = !{i64 840559, i64 2148330530, i64 2148330556, i64 2148330603, i64 2148330625, i64 2148330653, i64 2148330673}
!15 = !{i64 827128, i64 827153, i64 827175, i64 827191, i64 827203, i64 827223, i64 827247, i64 827263, i64 827275}
!16 = !{i64 2148342375}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
