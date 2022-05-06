; ModuleID = '/llk/IR/drivers/pci/pcie/aspm.c_pt.bc'
source_filename = "../drivers/pci/pcie/aspm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_link_state_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_link_state_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_link_state_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_link_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_aspm_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_aspm_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_aspm_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_aspm_support_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_aspm_support_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_aspm_support_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pcie_link_state = type { ptr, ptr, ptr, ptr, %struct.list_head, i32, i16 }

@aspm_support_enabled = internal unnamed_addr global i1 false, align 1
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@aspm_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @aspm_lock, i64 12), ptr getelementptr (i8, ptr @aspm_lock, i64 12) } }, align 4
@aspm_policy = internal unnamed_addr global i32 0, align 4
@aspm_disabled = internal unnamed_addr global i1 false, align 4
@__kstrtab_pci_disable_link_state_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_link_state_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_link_state_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_link_state_locked to i32), ptr @__kstrtab_pci_disable_link_state_locked, ptr @__kstrtabns_pci_disable_link_state_locked }, section "___ksymtab+pci_disable_link_state_locked", align 4
@__kstrtab_pci_disable_link_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_link_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_link_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_link_state to i32), ptr @__kstrtab_pci_disable_link_state, ptr @__kstrtabns_pci_disable_link_state }, section "___ksymtab+pci_disable_link_state", align 4
@__param_str_policy = internal constant [17 x i8] c"pcie_aspm.policy\00", align 1
@__param_ops_policy = internal constant %struct.kernel_param_ops { i32 0, ptr @pcie_aspm_set_policy, ptr @pcie_aspm_get_policy, ptr null }, align 4
@__param_policy = internal constant %struct.kernel_param { ptr @__param_str_policy, ptr null, ptr @__param_ops_policy, i16 420, i8 -1, i8 0, %union.anon.60 zeroinitializer }, section "__param", align 4
@__kstrtab_pcie_aspm_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_aspm_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_aspm_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_aspm_enabled to i32), ptr @__kstrtab_pcie_aspm_enabled, ptr @__kstrtabns_pcie_aspm_enabled }, section "___ksymtab_gpl+pcie_aspm_enabled", align 4
@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@aspm_ctrl_attrs = internal global [8 x ptr] [ptr @dev_attr_clkpm, ptr @dev_attr_l0s_aspm, ptr @dev_attr_l1_aspm, ptr @dev_attr_l1_1_aspm, ptr @dev_attr_l1_2_aspm, ptr @dev_attr_l1_1_pcipm, ptr @dev_attr_l1_2_pcipm, ptr null], align 4
@aspm_ctrl_attr_group = dso_local constant %struct.attribute_group { ptr @.str, ptr @aspm_ctrl_attrs_are_visible, ptr null, ptr @aspm_ctrl_attrs, ptr null }, align 4
@__setup_str_pcie_aspm_disable = internal constant [11 x i8] c"pcie_aspm=\00", section ".init.rodata", align 1
@__setup_pcie_aspm_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_aspm_disable, ptr @pcie_aspm_disable, i32 0 }, section ".init.setup", align 4
@aspm_force = internal unnamed_addr global i1 false, align 4
@__kstrtab_pcie_aspm_support_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_aspm_support_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_aspm_support_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_aspm_support_enabled to i32), ptr @__kstrtab_pcie_aspm_support_enabled, ptr @__kstrtabns_pcie_aspm_support_enabled }, section "___ksymtab+pcie_aspm_support_enabled", align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"disabling ASPM on pre-1.1 PCIe device.  You can enable it with 'pcie_aspm=force'\0A\00", align 1
@link_list = internal global %struct.list_head { ptr @link_list, ptr @link_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"ASPM: current common clock configuration is inconsistent, reconfiguring\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ASPM: Could not configure common clock\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: Invalid T_PwrOn scale: %u\0A\00", align 1
@__func__.calc_l1ss_pwron = private unnamed_addr constant [16 x i8] c"calc_l1ss_pwron\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"can't disable ASPM; OS doesn't have ASPM control\0A\00", align 1
@policy_str = internal global [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"powersave\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"powersupersave\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@aspm_ctrl_attrs_are_visible.aspm_state_map = internal unnamed_addr constant [6 x i8] c"\03\04\08\10 @", align 1
@dev_attr_clkpm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @clkpm_show, ptr @clkpm_store }, align 4
@dev_attr_l0s_aspm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @l0s_aspm_show, ptr @l0s_aspm_store }, align 4
@dev_attr_l1_aspm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @l1_aspm_show, ptr @l1_aspm_store }, align 4
@dev_attr_l1_1_aspm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @l1_1_aspm_show, ptr @l1_1_aspm_store }, align 4
@dev_attr_l1_2_aspm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @l1_2_aspm_show, ptr @l1_2_aspm_store }, align 4
@dev_attr_l1_1_pcipm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @l1_1_pcipm_show, ptr @l1_1_pcipm_store }, align 4
@dev_attr_l1_2_pcipm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @l1_2_pcipm_show, ptr @l1_2_pcipm_store }, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"clkpm\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"l0s_aspm\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"l1_aspm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"l1_1_aspm\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"l1_2_aspm\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"l1_1_pcipm\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"l1_2_pcipm\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"\016PCIe ASPM is disabled\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\016PCIe ASPM is forcibly enabled\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_pci_disable_link_state, ptr @__ksymtab_pci_disable_link_state_locked, ptr @__ksymtab_pcie_aspm_enabled, ptr @__ksymtab_pcie_aspm_support_enabled, ptr @__param_policy, ptr @__setup_pcie_aspm_disable], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_aspm_init_link_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8

8:                                                ; preds = %27, %1
  %9 = phi ptr [ %28, %27 ], [ %4, %1 ]
  %10 = phi ptr [ %29, %27 ], [ %6, %1 ]
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 18
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = load i1, ptr @aspm_disabled, align 4
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = call i32 @pcie_capability_read_dword(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %2) #13
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, 32768
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @aspm_force, align 4
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load ptr, ptr %3, align 4
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.1) #14
  br label %32

27:                                               ; preds = %23, %14
  %28 = phi ptr [ %24, %23 ], [ %9, %14 ]
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 3
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %8

32:                                               ; preds = %27, %25, %8, %1
  %33 = phi i32 [ 0, %1 ], [ 1, %25 ], [ 0, %27 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %34 = load i1, ptr @aspm_support_enabled, align 1
  br i1 %34, label %124, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %124

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 208
  %43 = icmp eq i16 %42, 64
  %44 = and i16 %41, 240
  %45 = icmp eq i16 %44, 128
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %124

47:                                               ; preds = %39
  %48 = icmp eq i16 %44, 64
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.pci_bus, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %124

55:                                               ; preds = %49, %47
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.pci_bus, ptr %56, i32 0, i32 3
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %123, label %60

60:                                               ; preds = %55
  call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %62 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 32) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %122, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pcie_link_state, ptr %62, i32 0, i32 4
  store volatile ptr %65, ptr %65, align 8
  %66 = getelementptr inbounds %struct.pcie_link_state, ptr %62, i32 0, i32 4, i32 1
  store ptr %65, ptr %66, align 4
  store ptr %0, ptr %62, align 8
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.pci_bus, ptr %67, i32 0, i32 3
  br label %69

69:                                               ; preds = %73, %64
  %70 = phi ptr [ %68, %64 ], [ %71, %73 ]
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %68
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %69

78:                                               ; preds = %73, %69
  %79 = phi ptr [ %71, %73 ], [ null, %69 ]
  %80 = getelementptr inbounds %struct.pcie_link_state, ptr %62, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  %81 = load i16, ptr %40, align 2
  %82 = lshr i16 %81, 4
  %83 = and i16 %82, 15
  %84 = zext i16 %83 to i32
  switch i32 %84, label %85 [
    i32 4, label %102
    i32 8, label %102
  ]

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.pci_bus, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.pci_bus, ptr %89, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 37
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  call void @kfree(ptr noundef nonnull %62) #13
  br label %122

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.pcie_link_state, ptr %62, i32 0, i32 3
  store ptr %95, ptr %99, align 4
  %100 = getelementptr inbounds %struct.pcie_link_state, ptr %95, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %98, %85, %78, %78
  %103 = phi ptr [ %101, %98 ], [ %62, %78 ], [ %62, %78 ], [ %62, %85 ]
  %104 = getelementptr inbounds %struct.pcie_link_state, ptr %62, i32 0, i32 2
  store ptr %103, ptr %104, align 8
  %105 = load ptr, ptr @link_list, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %65, ptr %106, align 4
  store ptr %105, ptr %65, align 8
  store ptr @link_list, ptr %66, align 4
  store volatile ptr %65, ptr @link_list, align 4
  store ptr %62, ptr %36, align 8
  call fastcc void @pcie_aspm_cap_init(ptr noundef nonnull %62, i32 noundef %33)
  call fastcc void @pcie_clkpm_cap_init(ptr noundef nonnull %62, i32 noundef %33)
  %107 = load i32, ptr @aspm_policy, align 4
  %108 = add i32 %107, -4
  %109 = icmp ult i32 %108, -2
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  call fastcc void @pcie_config_aspm_path(ptr noundef nonnull %62)
  %111 = load i32, ptr @aspm_policy, align 4
  switch i32 %111, label %119 [
    i32 0, label %113
    i32 2, label %112
    i32 3, label %112
  ]

112:                                              ; preds = %110, %110
  br label %119

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.pcie_link_state, ptr %62, i32 0, i32 6
  %115 = load i16, ptr %114, align 4
  %116 = lshr i16 %115, 9
  %117 = and i16 %116, 1
  %118 = zext i16 %117 to i32
  br label %119

119:                                              ; preds = %113, %112, %110
  %120 = phi i32 [ %118, %113 ], [ 1, %112 ], [ 0, %110 ]
  call fastcc void @pcie_set_clkpm(ptr noundef nonnull %62, i32 noundef %120)
  br label %121

121:                                              ; preds = %119, %102
  call fastcc void @pcie_aspm_update_sysfs_visibility(ptr noundef %0)
  br label %122

122:                                              ; preds = %121, %97, %60
  call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  br label %123

123:                                              ; preds = %122, %55
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %124

124:                                              ; preds = %123, %49, %39, %35, %32
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_aspm_cap_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca [8 x i16], align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  store i32 0, ptr %17, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  store i32 0, ptr %18, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i16 0, ptr %19, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i16 0, ptr %20, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #13
  store i32 0, ptr %21, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #13
  store i32 0, ptr %22, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #13
  store i32 0, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #13
  store i32 0, ptr %24, align 4
  %28 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 16256
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 6
  %36 = load i16, ptr %35, align 4
  %37 = or i16 %36, 127
  store i16 %37, ptr %35, align 4
  br label %509

38:                                               ; preds = %2
  %39 = call i32 @pcie_capability_read_dword(ptr noundef %27, i32 noundef 12, ptr noundef nonnull %17) #13
  %40 = call i32 @pcie_capability_read_dword(ptr noundef %26, i32 noundef 12, ptr noundef nonnull %18) #13
  %41 = load i32, ptr %17, align 4
  %42 = load i32, ptr %18, align 4
  %43 = and i32 %41, 3072
  %44 = and i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %509, label %46

46:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i16 0, ptr %15, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %16, i8 0, i32 16, i1 false) #13, !annotation !8
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.pci_bus, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 18
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56, !prof !9

55:                                               ; preds = %46
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pcie/aspm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

56:                                               ; preds = %46
  %57 = call i32 @pcie_capability_read_word(ptr noundef %51, i32 noundef 18, ptr noundef nonnull %15) #13
  %58 = load i16, ptr %15, align 2
  %59 = call i32 @pcie_capability_read_word(ptr noundef %47, i32 noundef 18, ptr noundef nonnull %15) #13
  %60 = load i16, ptr %15, align 2
  %61 = and i16 %60, 4096
  %62 = icmp eq i16 %61, 0
  %63 = call i32 @pcie_capability_read_word(ptr noundef %47, i32 noundef 16, ptr noundef nonnull %15) #13
  %64 = and i16 %58, 4096
  %65 = icmp eq i16 %64, 0
  %66 = select i1 %62, i1 true, i1 %65
  br i1 %66, label %82, label %67

67:                                               ; preds = %56
  %68 = load i16, ptr %15, align 2
  %69 = and i16 %68, 64
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %75, %67
  %72 = phi ptr [ %73, %75 ], [ %50, %67 ]
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %50
  br i1 %74, label %151, label %75

75:                                               ; preds = %71
  %76 = call i32 @pcie_capability_read_word(ptr noundef %73, i32 noundef 16, ptr noundef nonnull %15) #13
  %77 = load i16, ptr %15, align 2
  %78 = and i16 %77, 64
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %71

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.2) #14
  br label %82

82:                                               ; preds = %80, %67, %56
  %83 = phi i16 [ 64, %80 ], [ 64, %67 ], [ 0, %56 ]
  %84 = load ptr, ptr %50, align 4
  %85 = icmp eq ptr %84, %50
  br i1 %85, label %99, label %86

86:                                               ; preds = %86, %82
  %87 = phi ptr [ %97, %86 ], [ %84, %82 ]
  %88 = call i32 @pcie_capability_read_word(ptr noundef %87, i32 noundef 16, ptr noundef nonnull %15) #13
  %89 = load i16, ptr %15, align 2
  %90 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 7
  %93 = getelementptr [8 x i16], ptr %16, i32 0, i32 %92
  store i16 %89, ptr %93, align 2
  %94 = and i16 %89, -65
  %95 = or i16 %94, %83
  store i16 %95, ptr %15, align 2
  %96 = call i32 @pcie_capability_write_word(ptr noundef %87, i32 noundef 16, i16 noundef zeroext %95) #13
  %97 = load ptr, ptr %87, align 4
  %98 = icmp eq ptr %97, %50
  br i1 %98, label %99, label %86

99:                                               ; preds = %86, %82
  %100 = call i32 @pcie_capability_read_word(ptr noundef %47, i32 noundef 16, ptr noundef nonnull %15) #13
  %101 = load i16, ptr %15, align 2
  %102 = and i16 %101, -65
  %103 = or i16 %102, %83
  store i16 %103, ptr %15, align 2
  %104 = call i32 @pcie_capability_write_word(ptr noundef %47, i32 noundef 16, i16 noundef zeroext %103) #13
  %105 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i16 0, ptr %14, align 2, !annotation !8
  %106 = call i32 @pcie_capability_read_word(ptr noundef %105, i32 noundef 16, ptr noundef nonnull %14) #13
  %107 = load i16, ptr %14, align 2
  %108 = or i16 %107, 32
  store i16 %108, ptr %14, align 2
  %109 = call i32 @pcie_capability_write_word(ptr noundef %105, i32 noundef 16, i16 noundef zeroext %108) #13
  %110 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 33
  %111 = load i32, ptr %110, align 2
  %112 = and i32 %111, 262144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %99
  %115 = load i16, ptr %14, align 2
  %116 = and i16 %115, -33
  store i16 %116, ptr %14, align 2
  %117 = call i32 @pcie_capability_write_word(ptr noundef %105, i32 noundef 16, i16 noundef zeroext %116) #13
  br label %118

118:                                              ; preds = %114, %99
  %119 = load volatile i32, ptr @jiffies, align 64
  %120 = sub i32 -100, %119
  br label %121

121:                                              ; preds = %127, %118
  %122 = call i32 @pcie_capability_read_word(ptr noundef %105, i32 noundef 18, ptr noundef nonnull %14) #13
  %123 = load i16, ptr %14, align 2
  %124 = and i16 %123, 2048
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  br label %151

127:                                              ; preds = %121
  call void @msleep(i32 noundef 1) #13
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = add i32 %120, %128
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %121, label %131

131:                                              ; preds = %127
  %132 = load i16, ptr %14, align 2
  %133 = and i16 %132, 2048
  %134 = icmp eq i16 %133, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  br i1 %134, label %151, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.3) #14
  %137 = load ptr, ptr %50, align 4
  %138 = icmp eq ptr %137, %50
  br i1 %138, label %149, label %139

139:                                              ; preds = %139, %135
  %140 = phi ptr [ %147, %139 ], [ %137, %135 ]
  %141 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 7
  %144 = getelementptr [8 x i16], ptr %16, i32 0, i32 %143
  %145 = load i16, ptr %144, align 2
  %146 = call i32 @pcie_capability_write_word(ptr noundef %140, i32 noundef 16, i16 noundef zeroext %145) #13
  %147 = load ptr, ptr %140, align 4
  %148 = icmp eq ptr %147, %50
  br i1 %148, label %149, label %139

149:                                              ; preds = %139, %135
  %150 = call i32 @pcie_capability_write_word(ptr noundef %47, i32 noundef 16, i16 noundef zeroext %101) #13
  br label %151

151:                                              ; preds = %149, %131, %126, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %152 = call i32 @pcie_capability_read_dword(ptr noundef %27, i32 noundef 12, ptr noundef nonnull %17) #13
  %153 = call i32 @pcie_capability_read_dword(ptr noundef %26, i32 noundef 12, ptr noundef nonnull %18) #13
  %154 = call i32 @pcie_capability_read_word(ptr noundef %27, i32 noundef 16, ptr noundef nonnull %19) #13
  %155 = call i32 @pcie_capability_read_word(ptr noundef %26, i32 noundef 16, ptr noundef nonnull %20) #13
  %156 = load i32, ptr %17, align 4
  %157 = load i32, ptr %18, align 4
  %158 = and i32 %157, %156
  %159 = and i32 %158, 1024
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, 3
  store i32 %164, ptr %162, align 4
  br label %165

165:                                              ; preds = %161, %151
  %166 = load i16, ptr %20, align 2
  %167 = and i16 %166, 1
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = or i32 %171, 128
  store i32 %172, ptr %170, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i16, ptr %19, align 2
  %175 = and i16 %174, 1
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = or i32 %179, 256
  store i32 %180, ptr %178, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = and i32 %158, 2048
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = or i32 %186, 4
  store i32 %187, ptr %185, align 4
  br label %188

188:                                              ; preds = %184, %181
  %189 = and i16 %166, 2
  %190 = and i16 %189, %174
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = or i32 %194, 512
  store i32 %195, ptr %193, align 4
  br label %196

196:                                              ; preds = %192, %188
  %197 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 40
  %198 = load i16, ptr %197, align 2
  %199 = zext i16 %198 to i32
  %200 = add nuw nsw i32 %199, 4
  %201 = call i32 @pci_read_config_dword(ptr noundef %27, i32 noundef %200, ptr noundef nonnull %21) #13
  %202 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 40
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = add nuw nsw i32 %204, 4
  %206 = call i32 @pci_read_config_dword(ptr noundef %26, i32 noundef %205, ptr noundef nonnull %22) #13
  %207 = load i32, ptr %21, align 4
  %208 = and i32 %207, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %196
  store i32 0, ptr %21, align 4
  br label %211

211:                                              ; preds = %210, %196
  %212 = phi i32 [ 0, %210 ], [ %207, %196 ]
  %213 = load i32, ptr %22, align 4
  %214 = and i32 %213, 16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 0, ptr %22, align 4
  br label %217

217:                                              ; preds = %216, %211
  %218 = phi i32 [ 0, %216 ], [ %213, %211 ]
  %219 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 38
  %220 = load i8, ptr %219, align 4
  %221 = and i8 %220, 1
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = and i32 %218, -5
  store i32 %224, ptr %22, align 4
  br label %225

225:                                              ; preds = %223, %217
  %226 = phi i32 [ %224, %223 ], [ %218, %217 ]
  %227 = and i32 %226, %212
  %228 = and i32 %227, 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = or i32 %232, 8
  store i32 %233, ptr %231, align 4
  br label %234

234:                                              ; preds = %230, %225
  %235 = and i32 %227, 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = or i32 %239, 16
  store i32 %240, ptr %238, align 4
  br label %241

241:                                              ; preds = %237, %234
  %242 = and i32 %227, 2
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %246 = load i32, ptr %245, align 4
  %247 = or i32 %246, 32
  store i32 %247, ptr %245, align 4
  br label %248

248:                                              ; preds = %244, %241
  %249 = and i32 %227, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %253 = load i32, ptr %252, align 4
  %254 = or i32 %253, 64
  store i32 %254, ptr %252, align 4
  br label %255

255:                                              ; preds = %251, %248
  %256 = icmp eq i32 %212, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %255
  %258 = load i16, ptr %197, align 2
  %259 = zext i16 %258 to i32
  %260 = add nuw nsw i32 %259, 8
  %261 = call i32 @pci_read_config_dword(ptr noundef %27, i32 noundef %260, ptr noundef nonnull %23) #13
  %262 = load i32, ptr %22, align 4
  br label %263

263:                                              ; preds = %257, %255
  %264 = phi i32 [ %262, %257 ], [ %226, %255 ]
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %263
  %267 = load i16, ptr %202, align 2
  %268 = zext i16 %267 to i32
  %269 = add nuw nsw i32 %268, 8
  %270 = call i32 @pci_read_config_dword(ptr noundef %26, i32 noundef %269, ptr noundef nonnull %24) #13
  br label %271

271:                                              ; preds = %266, %263
  %272 = load i32, ptr %23, align 4
  %273 = load i32, ptr %24, align 4
  %274 = and i32 %273, %272
  %275 = and i32 %274, 8
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %279 = load i32, ptr %278, align 4
  %280 = or i32 %279, 1024
  store i32 %280, ptr %278, align 4
  br label %281

281:                                              ; preds = %277, %271
  %282 = and i32 %274, 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %286 = load i32, ptr %285, align 4
  %287 = or i32 %286, 2048
  store i32 %287, ptr %285, align 4
  br label %288

288:                                              ; preds = %284, %281
  %289 = and i32 %274, 2
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %293 = load i32, ptr %292, align 4
  %294 = or i32 %293, 4096
  store i32 %294, ptr %292, align 4
  br label %295

295:                                              ; preds = %291, %288
  %296 = and i32 %274, 1
  %297 = icmp eq i32 %296, 0
  %298 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %299 = load i32, ptr %298, align 4
  br i1 %297, label %302, label %300

300:                                              ; preds = %295
  %301 = or i32 %299, 8192
  store i32 %301, ptr %298, align 4
  br label %302

302:                                              ; preds = %300, %295
  %303 = phi i32 [ %301, %300 ], [ %299, %295 ]
  %304 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %305 = and i32 %303, 120
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %488, label %307

307:                                              ; preds = %302
  %308 = load i32, ptr %21, align 4
  %309 = load i32, ptr %22, align 4
  %310 = load ptr, ptr %25, align 4
  %311 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !annotation !8
  %312 = and i32 %303, 80
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %486, label %314

314:                                              ; preds = %307
  %315 = lshr i32 %308, 8
  %316 = and i32 %315, 255
  %317 = lshr i32 %309, 8
  %318 = and i32 %317, 255
  %319 = call i32 @llvm.umax.i32(i32 %316, i32 %318) #13
  %320 = lshr i32 %308, 19
  %321 = and i32 %320, 31
  %322 = lshr i32 %308, 16
  %323 = and i32 %322, 3
  %324 = lshr i32 %309, 19
  %325 = and i32 %324, 31
  %326 = lshr i32 %309, 16
  %327 = and i32 %326, 3
  switch i32 %323, label %334 [
    i32 0, label %328
    i32 1, label %330
    i32 2, label %332
  ]

328:                                              ; preds = %314
  %329 = shl nuw nsw i32 %321, 1
  br label %336

330:                                              ; preds = %314
  %331 = mul nuw nsw i32 %321, 10
  br label %336

332:                                              ; preds = %314
  %333 = mul nuw nsw i32 %321, 100
  br label %336

334:                                              ; preds = %314
  %335 = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.calc_l1ss_pwron, i32 noundef %323) #14
  br label %336

336:                                              ; preds = %334, %332, %330, %328
  %337 = phi i32 [ 0, %334 ], [ %333, %332 ], [ %331, %330 ], [ %329, %328 ]
  switch i32 %327, label %344 [
    i32 0, label %338
    i32 1, label %340
    i32 2, label %342
  ]

338:                                              ; preds = %336
  %339 = shl nuw nsw i32 %325, 1
  br label %346

340:                                              ; preds = %336
  %341 = mul nuw nsw i32 %325, 10
  br label %346

342:                                              ; preds = %336
  %343 = mul nuw nsw i32 %325, 100
  br label %346

344:                                              ; preds = %336
  %345 = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %345, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.calc_l1ss_pwron, i32 noundef %327) #14
  br label %346

346:                                              ; preds = %344, %342, %340, %338
  %347 = phi i32 [ 0, %344 ], [ %343, %342 ], [ %341, %340 ], [ %339, %338 ]
  %348 = icmp ugt i32 %337, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %346
  %350 = shl nuw nsw i32 %321, 3
  %351 = or i32 %350, %323
  switch i32 %323, label %358 [
    i32 0, label %352
    i32 1, label %354
    i32 2, label %356
  ]

352:                                              ; preds = %349
  %353 = shl nuw nsw i32 %321, 1
  br label %371

354:                                              ; preds = %349
  %355 = mul nuw nsw i32 %321, 10
  br label %371

356:                                              ; preds = %349
  %357 = mul nuw nsw i32 %321, 100
  br label %371

358:                                              ; preds = %349
  %359 = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %359, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.calc_l1ss_pwron, i32 noundef %323) #14
  br label %371

360:                                              ; preds = %346
  %361 = shl nuw nsw i32 %325, 3
  %362 = or i32 %361, %327
  switch i32 %327, label %369 [
    i32 0, label %363
    i32 1, label %365
    i32 2, label %367
  ]

363:                                              ; preds = %360
  %364 = shl nuw nsw i32 %325, 1
  br label %371

365:                                              ; preds = %360
  %366 = mul nuw nsw i32 %325, 10
  br label %371

367:                                              ; preds = %360
  %368 = mul nuw nsw i32 %325, 100
  br label %371

369:                                              ; preds = %360
  %370 = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %370, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.calc_l1ss_pwron, i32 noundef %327) #14
  br label %371

371:                                              ; preds = %369, %367, %365, %363, %358, %356, %354, %352
  %372 = phi i32 [ 0, %358 ], [ %357, %356 ], [ %355, %354 ], [ %353, %352 ], [ 0, %369 ], [ %368, %367 ], [ %366, %365 ], [ %364, %363 ]
  %373 = phi i32 [ %351, %358 ], [ %351, %356 ], [ %351, %354 ], [ %351, %352 ], [ %362, %369 ], [ %362, %367 ], [ %362, %365 ], [ %362, %363 ]
  %374 = add nuw nsw i32 %319, 6
  %375 = add nuw nsw i32 %374, %372
  %376 = mul nuw nsw i32 %375, 1000
  %377 = icmp ult i32 %376, 32768
  %378 = icmp ult i32 %376, 1048576
  %379 = select i1 %378, i32 1610612736, i32 -2147483648
  %380 = select i1 %378, i32 15, i32 20
  %381 = select i1 %377, i32 1073741824, i32 %379
  %382 = select i1 %377, i32 10, i32 %380
  %383 = lshr i32 %376, %382
  %384 = shl nuw nsw i32 %319, 8
  %385 = or i32 %381, %384
  %386 = shl nuw nsw i32 %383, 16
  %387 = or i32 %386, %385
  %388 = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 40
  %389 = load i16, ptr %388, align 2
  %390 = zext i16 %389 to i32
  %391 = add nuw nsw i32 %390, 8
  %392 = call i32 @pci_read_config_dword(ptr noundef %311, i32 noundef %391, ptr noundef nonnull %10) #13
  %393 = load i16, ptr %388, align 2
  %394 = zext i16 %393 to i32
  %395 = add nuw nsw i32 %394, 12
  %396 = call i32 @pci_read_config_dword(ptr noundef %311, i32 noundef %395, ptr noundef nonnull %11) #13
  %397 = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 40
  %398 = load i16, ptr %397, align 2
  %399 = zext i16 %398 to i32
  %400 = add nuw nsw i32 %399, 8
  %401 = call i32 @pci_read_config_dword(ptr noundef %310, i32 noundef %400, ptr noundef nonnull %12) #13
  %402 = load i16, ptr %397, align 2
  %403 = zext i16 %402 to i32
  %404 = add nuw nsw i32 %403, 12
  %405 = call i32 @pci_read_config_dword(ptr noundef %310, i32 noundef %404, ptr noundef nonnull %13) #13
  %406 = load i32, ptr %10, align 4
  %407 = icmp eq i32 %387, %406
  %408 = load i32, ptr %12, align 4
  %409 = icmp eq i32 %387, %408
  %410 = select i1 %407, i1 %409, i1 false
  %411 = load i32, ptr %11, align 4
  %412 = icmp eq i32 %373, %411
  %413 = select i1 %410, i1 %412, i1 false
  %414 = load i32, ptr %13, align 4
  %415 = icmp eq i32 %373, %414
  %416 = select i1 %413, i1 %415, i1 false
  br i1 %416, label %486, label %417

417:                                              ; preds = %371
  %418 = and i32 %406, 5
  %419 = and i32 %408, 5
  %420 = icmp ne i32 %418, 0
  %421 = icmp ne i32 %419, 0
  %422 = select i1 %420, i1 true, i1 %421
  br i1 %422, label %423, label %438

423:                                              ; preds = %417
  %424 = load i16, ptr %397, align 2
  %425 = zext i16 %424 to i32
  %426 = add nuw nsw i32 %425, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !8
  %427 = call i32 @pci_read_config_dword(ptr noundef %310, i32 noundef %426, ptr noundef nonnull %9) #13
  %428 = load i32, ptr %9, align 4
  %429 = and i32 %428, -6
  store i32 %429, ptr %9, align 4
  %430 = call i32 @pci_write_config_dword(ptr noundef %310, i32 noundef %426, i32 noundef %429) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  %431 = load i16, ptr %388, align 2
  %432 = zext i16 %431 to i32
  %433 = add nuw nsw i32 %432, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !8
  %434 = call i32 @pci_read_config_dword(ptr noundef %311, i32 noundef %433, ptr noundef nonnull %8) #13
  %435 = load i32, ptr %8, align 4
  %436 = and i32 %435, -6
  store i32 %436, ptr %8, align 4
  %437 = call i32 @pci_write_config_dword(ptr noundef %311, i32 noundef %433, i32 noundef %436) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %438

438:                                              ; preds = %423, %417
  %439 = load i16, ptr %388, align 2
  %440 = zext i16 %439 to i32
  %441 = add nuw nsw i32 %440, 12
  %442 = call i32 @pci_write_config_dword(ptr noundef %311, i32 noundef %441, i32 noundef %373) #13
  %443 = load i16, ptr %397, align 2
  %444 = zext i16 %443 to i32
  %445 = add nuw nsw i32 %444, 12
  %446 = call i32 @pci_write_config_dword(ptr noundef %310, i32 noundef %445, i32 noundef %373) #13
  %447 = load i16, ptr %388, align 2
  %448 = zext i16 %447 to i32
  %449 = add nuw nsw i32 %448, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  %450 = call i32 @pci_read_config_dword(ptr noundef %311, i32 noundef %449, ptr noundef nonnull %7) #13
  %451 = load i32, ptr %7, align 4
  %452 = and i32 %451, -65281
  %453 = or i32 %452, %387
  store i32 %453, ptr %7, align 4
  %454 = call i32 @pci_write_config_dword(ptr noundef %311, i32 noundef %449, i32 noundef %453) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %455 = load i16, ptr %388, align 2
  %456 = zext i16 %455 to i32
  %457 = add nuw nsw i32 %456, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %458 = call i32 @pci_read_config_dword(ptr noundef %311, i32 noundef %457, ptr noundef nonnull %6) #13
  %459 = load i32, ptr %6, align 4
  %460 = and i32 %459, 469827583
  %461 = or i32 %460, %387
  store i32 %461, ptr %6, align 4
  %462 = call i32 @pci_write_config_dword(ptr noundef %311, i32 noundef %457, i32 noundef %461) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %463 = load i16, ptr %397, align 2
  %464 = zext i16 %463 to i32
  %465 = add nuw nsw i32 %464, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %466 = call i32 @pci_read_config_dword(ptr noundef %310, i32 noundef %465, ptr noundef nonnull %5) #13
  %467 = load i32, ptr %5, align 4
  %468 = and i32 %467, 469827583
  %469 = or i32 %468, %387
  store i32 %469, ptr %5, align 4
  %470 = call i32 @pci_write_config_dword(ptr noundef %310, i32 noundef %465, i32 noundef %469) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br i1 %422, label %471, label %486

471:                                              ; preds = %438
  %472 = load i16, ptr %388, align 2
  %473 = zext i16 %472 to i32
  %474 = add nuw nsw i32 %473, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %475 = call i32 @pci_read_config_dword(ptr noundef %311, i32 noundef %474, ptr noundef nonnull %4) #13
  %476 = load i32, ptr %4, align 4
  %477 = or i32 %476, %418
  store i32 %477, ptr %4, align 4
  %478 = call i32 @pci_write_config_dword(ptr noundef %311, i32 noundef %474, i32 noundef %477) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %479 = load i16, ptr %397, align 2
  %480 = zext i16 %479 to i32
  %481 = add nuw nsw i32 %480, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %482 = call i32 @pci_read_config_dword(ptr noundef %310, i32 noundef %481, ptr noundef nonnull %3) #13
  %483 = load i32, ptr %3, align 4
  %484 = or i32 %483, %419
  store i32 %484, ptr %3, align 4
  %485 = call i32 @pci_write_config_dword(ptr noundef %310, i32 noundef %481, i32 noundef %484) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %486

486:                                              ; preds = %471, %438, %371, %307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  %487 = load i32, ptr %304, align 4
  br label %488

488:                                              ; preds = %486, %302
  %489 = phi i32 [ %487, %486 ], [ %303, %302 ]
  %490 = shl i32 %489, 14
  %491 = and i32 %490, 266338304
  %492 = and i32 %489, -268419073
  %493 = or i32 %491, %492
  %494 = and i32 %490, 2080768
  %495 = or i32 %493, %494
  store i32 %495, ptr %304, align 4
  %496 = getelementptr inbounds %struct.pci_bus, ptr %29, i32 0, i32 3
  %497 = load ptr, ptr %496, align 4
  %498 = icmp eq ptr %497, %496
  br i1 %498, label %509, label %499

499:                                              ; preds = %506, %488
  %500 = phi ptr [ %507, %506 ], [ %497, %488 ]
  %501 = getelementptr inbounds %struct.pci_dev, ptr %500, i32 0, i32 24
  %502 = load i16, ptr %501, align 2
  %503 = and i16 %502, 224
  %504 = icmp eq i16 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %499
  call fastcc void @pcie_aspm_check_latency(ptr noundef %500)
  br label %506

506:                                              ; preds = %505, %499
  %507 = load ptr, ptr %500, align 4
  %508 = icmp eq ptr %507, %496
  br i1 %508, label %509, label %499

509:                                              ; preds = %506, %488, %38, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_clkpm_cap_init(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %26, label %11

11:                                               ; preds = %18, %2
  %12 = phi ptr [ %24, %18 ], [ %9, %2 ]
  %13 = phi i32 [ %23, %18 ], [ 1, %2 ]
  %14 = call i32 @pcie_capability_read_dword(ptr noundef %12, i32 noundef 12, ptr noundef nonnull %3) #13
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 262144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = call i32 @pcie_capability_read_word(ptr noundef %12, i32 noundef 16, ptr noundef nonnull %4) #13
  %20 = load i16, ptr %4, align 2
  %21 = and i16 %20, 256
  %22 = icmp eq i16 %21, 0
  %23 = select i1 %22, i32 0, i32 %13
  %24 = load ptr, ptr %12, align 4
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %11

26:                                               ; preds = %18, %11, %2
  %27 = phi i32 [ 1, %2 ], [ 0, %11 ], [ %23, %18 ]
  %28 = phi i16 [ 128, %2 ], [ 0, %11 ], [ 128, %18 ]
  %29 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 6
  %30 = trunc i32 %27 to i16
  %31 = load i16, ptr %29, align 4
  %32 = and i16 %30, 1
  %33 = shl nuw nsw i16 %32, 8
  %34 = and i16 %31, -1921
  %35 = or i16 %34, %33
  %36 = shl nuw nsw i16 %32, 9
  %37 = or i16 %35, %36
  %38 = or i16 %37, %28
  %39 = icmp eq i32 %1, 0
  %40 = select i1 %39, i16 0, i16 1024
  %41 = or i16 %38, %40
  store i16 %41, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_config_aspm_path(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %13, %1
  %4 = phi ptr [ %16, %13 ], [ %0, %1 ]
  %5 = load i32, ptr @aspm_policy, align 4
  switch i32 %5, label %13 [
    i32 0, label %8
    i32 2, label %6
    i32 3, label %7
  ]

6:                                                ; preds = %3
  br label %13

7:                                                ; preds = %3
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pcie_link_state, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 21
  %12 = and i32 %11, 127
  br label %13

13:                                               ; preds = %8, %7, %6, %3
  %14 = phi i32 [ %12, %8 ], [ 127, %7 ], [ 7, %6 ], [ 0, %3 ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %4, i32 noundef %14)
  %15 = getelementptr inbounds %struct.pcie_link_state, ptr %4, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_set_clkpm(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 6
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1152
  %6 = icmp eq i16 %5, 128
  %7 = select i1 %6, i32 %1, i32 0
  %8 = lshr i16 %4, 8
  %9 = and i16 %8, 1
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq i32 %7, 0
  %17 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  %20 = select i1 %16, i16 0, i16 256
  br i1 %19, label %28, label %21

21:                                               ; preds = %21, %12
  %22 = phi ptr [ %24, %21 ], [ %18, %12 ]
  %23 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %22, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %20) #13
  %24 = load ptr, ptr %22, align 4
  %25 = icmp eq ptr %24, %17
  br i1 %25, label %26, label %21

26:                                               ; preds = %21
  %27 = load i16, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = phi i16 [ %27, %26 ], [ %4, %12 ]
  %30 = and i16 %29, -257
  %31 = or i16 %30, %20
  store i16 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_aspm_update_sysfs_visibility(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %11, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %10 = tail call i32 @sysfs_update_group(ptr noundef %9, ptr noundef nonnull @aspm_ctrl_attr_group) #13
  %11 = load ptr, ptr %8, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 3
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_aspm_exit_link_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %100, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 37
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %11

11:                                               ; preds = %7
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  tail call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  %12 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %99

17:                                               ; preds = %11
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds %struct.pcie_link_state, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pcie_link_state, ptr %18, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call fastcc void @pcie_config_aspm_link(ptr noundef %18, i32 noundef 0)
  %23 = getelementptr inbounds %struct.pcie_link_state, ptr %18, i32 0, i32 4
  %24 = getelementptr inbounds %struct.pcie_link_state, ptr %18, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 37
  store ptr null, ptr %29, align 8
  tail call void @kfree(ptr noundef %18) #13
  %30 = icmp eq ptr %22, null
  br i1 %30, label %99, label %31

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.pcie_link_state, ptr %20, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38, !prof !11

35:                                               ; preds = %31
  %36 = load ptr, ptr @link_list, align 4
  %37 = icmp eq ptr %36, @link_list
  br i1 %37, label %83, label %42

38:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pcie/aspm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 957, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

39:                                               ; preds = %54
  %40 = load ptr, ptr @link_list, align 4
  %41 = icmp eq ptr %40, @link_list
  br i1 %41, label %83, label %57

42:                                               ; preds = %54, %35
  %43 = phi ptr [ %55, %54 ], [ %36, %35 ]
  %44 = getelementptr i8, ptr %43, i32 -8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %20
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %43, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 14
  %51 = and i32 %50, 2080768
  %52 = and i32 %49, -2080769
  %53 = or i32 %51, %52
  store i32 %53, ptr %48, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load ptr, ptr %43, align 4
  %56 = icmp eq ptr %55, @link_list
  br i1 %56, label %39, label %42

57:                                               ; preds = %80, %39
  %58 = phi ptr [ %81, %80 ], [ %40, %39 ]
  %59 = getelementptr i8, ptr %58, i32 -8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %20
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %58, i32 -16
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.pci_bus, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %80, label %70

70:                                               ; preds = %77, %62
  %71 = phi ptr [ %78, %77 ], [ %68, %62 ]
  %72 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 24
  %73 = load i16, ptr %72, align 2
  %74 = and i16 %73, 224
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  tail call fastcc void @pcie_aspm_check_latency(ptr noundef %71) #13
  br label %77

77:                                               ; preds = %76, %70
  %78 = load ptr, ptr %71, align 4
  %79 = icmp eq ptr %78, %67
  br i1 %79, label %80, label %70

80:                                               ; preds = %77, %62, %57
  %81 = load ptr, ptr %58, align 4
  %82 = icmp eq ptr %81, @link_list
  br i1 %82, label %83, label %57

83:                                               ; preds = %80, %39, %35
  br label %84

84:                                               ; preds = %94, %83
  %85 = phi ptr [ %97, %94 ], [ %22, %83 ]
  %86 = load i32, ptr @aspm_policy, align 4
  switch i32 %86, label %94 [
    i32 0, label %89
    i32 2, label %87
    i32 3, label %88
  ]

87:                                               ; preds = %84
  br label %94

88:                                               ; preds = %84
  br label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.pcie_link_state, ptr %85, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 21
  %93 = and i32 %92, 127
  br label %94

94:                                               ; preds = %89, %88, %87, %84
  %95 = phi i32 [ %93, %89 ], [ 127, %88 ], [ 7, %87 ], [ 0, %84 ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %85, i32 noundef %95) #13
  %96 = getelementptr inbounds %struct.pcie_link_state, ptr %85, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %84

99:                                               ; preds = %94, %17, %11
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %100

100:                                              ; preds = %99, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_config_aspm_link(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 14
  %15 = getelementptr inbounds %struct.pcie_link_state, ptr %0, i32 0, i32 6
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 127
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = and i32 %1, 127
  %21 = and i32 %20, %14
  %22 = and i32 %21, %19
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %22, 7
  %26 = select i1 %24, i32 %25, i32 %22
  %27 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 30
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = lshr i32 %13, 7
  br label %41

36:                                               ; preds = %30, %2
  %37 = and i32 %26, 31
  %38 = lshr i32 %13, 7
  %39 = and i32 %38, 96
  %40 = or i32 %37, %39
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i32 [ %35, %34 ], [ %38, %36 ]
  %43 = phi i32 [ %26, %34 ], [ %40, %36 ]
  %44 = and i32 %42, 127
  %45 = icmp eq i32 %44, %43
  br i1 %45, label %133, label %46

46:                                               ; preds = %41
  %47 = and i32 %43, 1
  %48 = lshr i32 %43, 1
  %49 = and i32 %48, 1
  %50 = and i32 %43, 4
  %51 = icmp eq i32 %50, 0
  %52 = lshr exact i32 %50, 1
  %53 = or i32 %52, %47
  %54 = or i32 %52, %49
  %55 = and i32 %13, 1966080
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %108, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 40
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = add nuw nsw i32 %60, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %62 = call i32 @pci_read_config_dword(ptr noundef %8, i32 noundef %61, ptr noundef nonnull %6) #13
  %63 = load i32, ptr %6, align 4
  %64 = and i32 %63, -16
  store i32 %64, ptr %6, align 4
  %65 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef %61, i32 noundef %64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %66 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 40
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = add nuw nsw i32 %68, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %70 = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef %69, ptr noundef nonnull %5) #13
  %71 = load i32, ptr %5, align 4
  %72 = and i32 %71, -16
  store i32 %72, ptr %5, align 4
  %73 = call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef %69, i32 noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %74 = and i32 %42, 24
  %75 = xor i32 %74, 24
  %76 = and i32 %75, %43
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %57
  %79 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %8, i32 noundef 16, i16 noundef zeroext 2, i16 noundef zeroext 0) #13
  %80 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %9, i32 noundef 16, i16 noundef zeroext 2, i16 noundef zeroext 0) #13
  br label %81

81:                                               ; preds = %78, %57
  %82 = and i32 %43, 8
  %83 = lshr i32 %43, 2
  %84 = and i32 %83, 4
  %85 = or i32 %84, %82
  %86 = lshr i32 %43, 4
  %87 = and i32 %86, 2
  %88 = or i32 %85, %87
  %89 = lshr i32 %43, 6
  %90 = and i32 %89, 1
  %91 = or i32 %88, %90
  %92 = load i16, ptr %66, align 2
  %93 = zext i16 %92 to i32
  %94 = add nuw nsw i32 %93, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %95 = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef %94, ptr noundef nonnull %4) #13
  %96 = load i32, ptr %4, align 4
  %97 = and i32 %96, -16
  %98 = or i32 %97, %91
  store i32 %98, ptr %4, align 4
  %99 = call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef %94, i32 noundef %98) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %100 = load i16, ptr %58, align 2
  %101 = zext i16 %100 to i32
  %102 = add nuw nsw i32 %101, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %103 = call i32 @pci_read_config_dword(ptr noundef %8, i32 noundef %102, ptr noundef nonnull %3) #13
  %104 = load i32, ptr %3, align 4
  %105 = and i32 %104, -16
  %106 = or i32 %105, %91
  store i32 %106, ptr %3, align 4
  %107 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef %102, i32 noundef %106) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %108

108:                                              ; preds = %81, %46
  br i1 %51, label %112, label %109

109:                                              ; preds = %108
  %110 = trunc i32 %54 to i16
  %111 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %9, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %110) #13
  br label %112

112:                                              ; preds = %109, %108
  %113 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %123, label %116

116:                                              ; preds = %112
  %117 = trunc i32 %53 to i16
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi ptr [ %114, %116 ], [ %121, %118 ]
  %120 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %119, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %117) #13
  %121 = load ptr, ptr %119, align 4
  %122 = icmp eq ptr %121, %113
  br i1 %122, label %123, label %118

123:                                              ; preds = %118, %112
  br i1 %51, label %124, label %127

124:                                              ; preds = %123
  %125 = trunc i32 %54 to i16
  %126 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %9, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %125) #13
  br label %127

127:                                              ; preds = %124, %123
  %128 = load i32, ptr %12, align 4
  %129 = shl nsw i32 %43, 7
  %130 = and i32 %129, 16256
  %131 = and i32 %128, -16257
  %132 = or i32 %131, %130
  store i32 %132, ptr %12, align 4
  br label %133

133:                                              ; preds = %127, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_aspm_pm_state_change(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = load i1, ptr @aspm_disabled, align 4
  %5 = xor i1 %4, true
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %79

8:                                                ; preds = %1
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  tail call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  %9 = getelementptr inbounds %struct.pcie_link_state, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pcie_link_state, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17, !prof !11

14:                                               ; preds = %8
  %15 = load ptr, ptr @link_list, align 4
  %16 = icmp eq ptr %15, @link_list
  br i1 %16, label %62, label %21

17:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pcie/aspm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 957, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

18:                                               ; preds = %33
  %19 = load ptr, ptr @link_list, align 4
  %20 = icmp eq ptr %19, @link_list
  br i1 %20, label %62, label %36

21:                                               ; preds = %33, %14
  %22 = phi ptr [ %34, %33 ], [ %15, %14 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %22, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 14
  %30 = and i32 %29, 2080768
  %31 = and i32 %28, -2080769
  %32 = or i32 %30, %31
  store i32 %32, ptr %27, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load ptr, ptr %22, align 4
  %35 = icmp eq ptr %34, @link_list
  br i1 %35, label %18, label %21

36:                                               ; preds = %59, %18
  %37 = phi ptr [ %60, %59 ], [ %19, %18 ]
  %38 = getelementptr i8, ptr %37, i32 -8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %10
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %37, i32 -16
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.pci_bus, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %59, label %49

49:                                               ; preds = %56, %41
  %50 = phi ptr [ %57, %56 ], [ %47, %41 ]
  %51 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 24
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, 224
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  tail call fastcc void @pcie_aspm_check_latency(ptr noundef %50) #13
  br label %56

56:                                               ; preds = %55, %49
  %57 = load ptr, ptr %50, align 4
  %58 = icmp eq ptr %57, %46
  br i1 %58, label %59, label %49

59:                                               ; preds = %56, %41, %36
  %60 = load ptr, ptr %37, align 4
  %61 = icmp eq ptr %60, @link_list
  br i1 %61, label %62, label %36

62:                                               ; preds = %59, %18, %14
  br label %63

63:                                               ; preds = %73, %62
  %64 = phi ptr [ %76, %73 ], [ %3, %62 ]
  %65 = load i32, ptr @aspm_policy, align 4
  switch i32 %65, label %73 [
    i32 0, label %68
    i32 2, label %66
    i32 3, label %67
  ]

66:                                               ; preds = %63
  br label %73

67:                                               ; preds = %63
  br label %73

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.pcie_link_state, ptr %64, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 21
  %72 = and i32 %71, 127
  br label %73

73:                                               ; preds = %68, %67, %66, %63
  %74 = phi i32 [ %72, %68 ], [ 127, %67 ], [ 7, %66 ], [ 0, %63 ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %64, i32 noundef %74) #13
  %75 = getelementptr inbounds %struct.pcie_link_state, ptr %64, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %63

78:                                               ; preds = %73
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %79

79:                                               ; preds = %78, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_aspm_powersave_config_link(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = load i1, ptr @aspm_disabled, align 4
  %5 = xor i1 %4, true
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %69

8:                                                ; preds = %1
  %9 = load i32, ptr @aspm_policy, align 4
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %69, label %12

12:                                               ; preds = %8
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  tail call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  br label %13

13:                                               ; preds = %23, %12
  %14 = phi ptr [ %26, %23 ], [ %3, %12 ]
  %15 = load i32, ptr @aspm_policy, align 4
  switch i32 %15, label %23 [
    i32 0, label %18
    i32 2, label %16
    i32 3, label %17
  ]

16:                                               ; preds = %13
  br label %23

17:                                               ; preds = %13
  br label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pcie_link_state, ptr %14, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 21
  %22 = and i32 %21, 127
  br label %23

23:                                               ; preds = %18, %17, %16, %13
  %24 = phi i32 [ %22, %18 ], [ 127, %17 ], [ 7, %16 ], [ 0, %13 ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %14, i32 noundef %24) #13
  %25 = getelementptr inbounds %struct.pcie_link_state, ptr %14, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13

28:                                               ; preds = %23
  %29 = load i32, ptr @aspm_policy, align 4
  switch i32 %29, label %37 [
    i32 0, label %31
    i32 2, label %30
    i32 3, label %30
  ]

30:                                               ; preds = %28, %28
  br label %37

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.pcie_link_state, ptr %3, i32 0, i32 6
  %33 = load i16, ptr %32, align 4
  %34 = lshr i16 %33, 9
  %35 = and i16 %34, 1
  %36 = zext i16 %35 to i32
  br label %37

37:                                               ; preds = %31, %30, %28
  %38 = phi i32 [ %36, %31 ], [ 1, %30 ], [ 0, %28 ]
  %39 = getelementptr inbounds %struct.pcie_link_state, ptr %3, i32 0, i32 6
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, 1152
  %42 = icmp eq i16 %41, 128
  %43 = select i1 %42, i32 %38, i32 0
  %44 = lshr i16 %40, 8
  %45 = and i16 %44, 1
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %37
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq i32 %43, 0
  %53 = getelementptr inbounds %struct.pci_bus, ptr %51, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  %56 = select i1 %52, i16 0, i16 256
  br i1 %55, label %64, label %57

57:                                               ; preds = %57, %48
  %58 = phi ptr [ %60, %57 ], [ %54, %48 ]
  %59 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %58, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %56) #13
  %60 = load ptr, ptr %58, align 4
  %61 = icmp eq ptr %60, %53
  br i1 %61, label %62, label %57

62:                                               ; preds = %57
  %63 = load i16, ptr %39, align 4
  br label %64

64:                                               ; preds = %62, %48
  %65 = phi i16 [ %63, %62 ], [ %40, %48 ]
  %66 = and i16 %65, -257
  %67 = or i16 %66, %56
  store i16 %67, ptr %39, align 4
  br label %68

68:                                               ; preds = %64, %37
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %69

69:                                               ; preds = %68, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_disable_link_state_locked(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__pci_disable_link_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pci_disable_link_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %132, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %132, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %132, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %132, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %132, label %25

25:                                               ; preds = %21
  %26 = load i1, ptr @aspm_disabled, align 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.5) #14
  br label %132

29:                                               ; preds = %25
  br i1 %2, label %30, label %31

30:                                               ; preds = %29
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %31

31:                                               ; preds = %30, %29
  tail call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  %32 = and i32 %1, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %36 = load i16, ptr %35, align 4
  %37 = or i16 %36, 3
  store i16 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = and i32 %1, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %43 = load i16, ptr %42, align 4
  %44 = or i16 %43, 124
  store i16 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = and i32 %1, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %50 = load i16, ptr %49, align 4
  %51 = or i16 %50, 8
  store i16 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = and i32 %1, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %57 = load i16, ptr %56, align 4
  %58 = or i16 %57, 16
  store i16 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = and i32 %1, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %64 = load i16, ptr %63, align 4
  %65 = or i16 %64, 32
  store i16 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = and i32 %1, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %71 = load i16, ptr %70, align 4
  %72 = or i16 %71, 64
  store i16 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, ptr @aspm_policy, align 4
  switch i32 %74, label %82 [
    i32 0, label %77
    i32 2, label %75
    i32 3, label %76
  ]

75:                                               ; preds = %73
  br label %82

76:                                               ; preds = %73
  br label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 21
  %81 = and i32 %80, 127
  br label %82

82:                                               ; preds = %77, %76, %75, %73
  %83 = phi i32 [ %81, %77 ], [ 127, %76 ], [ 7, %75 ], [ 0, %73 ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %23, i32 noundef %83)
  %84 = and i32 %1, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %88 = load i16, ptr %87, align 4
  %89 = or i16 %88, 1024
  store i16 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, ptr @aspm_policy, align 4
  switch i32 %91, label %99 [
    i32 0, label %93
    i32 2, label %92
    i32 3, label %92
  ]

92:                                               ; preds = %90, %90
  br label %99

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %95 = load i16, ptr %94, align 4
  %96 = lshr i16 %95, 9
  %97 = and i16 %96, 1
  %98 = zext i16 %97 to i32
  br label %99

99:                                               ; preds = %93, %92, %90
  %100 = phi i32 [ %98, %93 ], [ 1, %92 ], [ 0, %90 ]
  %101 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %102 = load i16, ptr %101, align 4
  %103 = and i16 %102, 1152
  %104 = icmp eq i16 %103, 128
  %105 = select i1 %104, i32 %100, i32 0
  %106 = lshr i16 %102, 8
  %107 = and i16 %106, 1
  %108 = zext i16 %107 to i32
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %130, label %110

110:                                              ; preds = %99
  %111 = load ptr, ptr %23, align 4
  %112 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq i32 %105, 0
  %115 = getelementptr inbounds %struct.pci_bus, ptr %113, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %115
  %118 = select i1 %114, i16 0, i16 256
  br i1 %117, label %126, label %119

119:                                              ; preds = %119, %110
  %120 = phi ptr [ %122, %119 ], [ %116, %110 ]
  %121 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %120, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %118) #13
  %122 = load ptr, ptr %120, align 4
  %123 = icmp eq ptr %122, %115
  br i1 %123, label %124, label %119

124:                                              ; preds = %119
  %125 = load i16, ptr %101, align 4
  br label %126

126:                                              ; preds = %124, %110
  %127 = phi i16 [ %125, %124 ], [ %102, %110 ]
  %128 = and i16 %127, -257
  %129 = or i16 %128, %118
  store i16 %129, ptr %101, align 4
  br label %130

130:                                              ; preds = %126, %99
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  br i1 %2, label %131, label %132

131:                                              ; preds = %130
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %132

132:                                              ; preds = %131, %130, %27, %21, %17, %13, %7, %3
  %133 = phi i32 [ -1, %27 ], [ -22, %21 ], [ 0, %131 ], [ 0, %130 ], [ -22, %3 ], [ -22, %17 ], [ -22, %13 ], [ -22, %7 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_disable_link_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__pci_disable_link_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_aspm_enabled(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 18
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 37
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pcie_link_state, ptr %21, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16256
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %19, %15, %11, %5, %1
  %29 = phi i1 [ %27, %23 ], [ false, %19 ], [ false, %1 ], [ false, %15 ], [ false, %11 ], [ false, %5 ]
  ret i1 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @aspm_ctrl_attrs_are_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  %24 = load i1, ptr @aspm_disabled, align 4
  %25 = xor i1 %24, true
  %26 = icmp ne ptr %23, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 6
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 128
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %49, label %46

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.pcie_link_state, ptr %23, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 14
  %39 = and i32 %38, 127
  %40 = add i32 %2, -1
  %41 = getelementptr [6 x i8], ptr @aspm_ctrl_attrs_are_visible.aspm_state_map, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %39, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35, %30
  %47 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %35, %30, %21, %17, %13, %7, %3
  %50 = phi i16 [ 0, %21 ], [ 0, %30 ], [ 0, %35 ], [ 0, %3 ], [ 0, %17 ], [ 0, %13 ], [ 0, %7 ], [ %48, %46 ]
  ret i16 %50
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pcie_aspm_disable(ptr nocapture noundef readonly %0) #4 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.21)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 0, ptr @aspm_policy, align 4
  store i1 true, ptr @aspm_disabled, align 4
  store i1 true, ptr @aspm_support_enabled, align 1
  br label %9

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.23)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store i1 true, ptr @aspm_force, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi ptr [ @.str.24, %8 ], [ @.str.22, %4 ]
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %10) #14
  br label %12

12:                                               ; preds = %9, %5
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @pcie_no_aspm() local_unnamed_addr #5 {
  %1 = load i1, ptr @aspm_force, align 4
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  store i32 0, ptr @aspm_policy, align 4
  store i1 true, ptr @aspm_disabled, align 4
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_aspm_support_enabled() #3 {
  %1 = load i1, ptr @aspm_support_enabled, align 1
  %2 = xor i1 %1, true
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcie_aspm_check_latency(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %98 [
    i32 0, label %6
    i32 5, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 37
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 6
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 7
  %17 = shl nuw nsw i32 64, %15
  %18 = select i1 %16, i32 -1, i32 %17
  %19 = lshr i32 %13, 9
  %20 = and i32 %19, 7
  %21 = icmp eq i32 %20, 7
  %22 = shl nuw nsw i32 1000, %20
  %23 = select i1 %21, i32 -1, i32 %22
  %24 = load ptr, ptr %11, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %98, label %26

26:                                               ; preds = %93, %6
  %27 = phi ptr [ %96, %93 ], [ %24, %6 ]
  %28 = phi i32 [ %94, %93 ], [ 0, %6 ]
  %29 = load ptr, ptr %27, align 4
  %30 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 3
  br label %33

33:                                               ; preds = %37, %26
  %34 = phi ptr [ %32, %26 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %32
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %33

42:                                               ; preds = %37, %33
  %43 = phi ptr [ %35, %37 ], [ null, %33 ]
  %44 = call i32 @pcie_capability_read_dword(ptr noundef %29, i32 noundef 12, ptr noundef nonnull %2) #13
  %45 = call i32 @pcie_capability_read_dword(ptr noundef %43, i32 noundef 12, ptr noundef nonnull %3) #13
  %46 = load i32, ptr %2, align 4
  %47 = lshr i32 %46, 12
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 7
  %50 = shl nuw nsw i32 64, %48
  %51 = select i1 %49, i32 5000, i32 %50
  %52 = lshr i32 %46, 15
  %53 = and i32 %52, 7
  %54 = icmp eq i32 %53, 7
  %55 = shl nuw nsw i32 1000, %53
  %56 = select i1 %54, i32 65000, i32 %55
  %57 = load i32, ptr %3, align 4
  %58 = lshr i32 %57, 12
  %59 = and i32 %58, 7
  %60 = icmp eq i32 %59, 7
  %61 = shl nuw nsw i32 64, %59
  %62 = select i1 %60, i32 5000, i32 %61
  %63 = lshr i32 %57, 15
  %64 = and i32 %63, 7
  %65 = icmp eq i32 %64, 7
  %66 = shl nuw nsw i32 1000, %64
  %67 = select i1 %65, i32 65000, i32 %66
  %68 = getelementptr inbounds %struct.pcie_link_state, ptr %27, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 16384
  %71 = icmp ne i32 %70, 0
  %72 = icmp ugt i32 %51, %18
  %73 = select i1 %71, i1 %72, i1 false
  %74 = and i32 %69, -16385
  %75 = select i1 %73, i32 %74, i32 %69
  %76 = and i32 %75, 32768
  %77 = icmp ne i32 %76, 0
  %78 = icmp ugt i32 %62, %18
  %79 = select i1 %77, i1 %78, i1 false
  %80 = and i32 %75, -32769
  %81 = select i1 %79, i32 %80, i32 %75
  %82 = or i1 %73, %79
  br i1 %82, label %83, label %84

83:                                               ; preds = %42
  store i32 %81, ptr %68, align 4
  br label %84

84:                                               ; preds = %83, %42
  %85 = and i32 %81, 65536
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = call i32 @llvm.umax.i32(i32 %56, i32 %67)
  %89 = add i32 %88, %28
  %90 = icmp ugt i32 %89, %23
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = and i32 %81, -65537
  store i32 %92, ptr %68, align 4
  br label %93

93:                                               ; preds = %91, %87, %84
  %94 = add i32 %28, 1000
  %95 = getelementptr inbounds %struct.pcie_link_state, ptr %27, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %26

98:                                               ; preds = %93, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_update_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_aspm_set_policy(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i1, ptr @aspm_disabled, align 4
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @policy_str, i32 noundef 4, ptr noundef %0) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @aspm_policy, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %71, label %10

10:                                               ; preds = %7
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  tail call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  store i32 %5, ptr @aspm_policy, align 4
  %11 = load ptr, ptr @link_list, align 4
  %12 = icmp eq ptr %11, @link_list
  br i1 %12, label %70, label %13

13:                                               ; preds = %66, %10
  %14 = phi i32 [ %67, %66 ], [ %5, %10 ]
  %15 = phi ptr [ %68, %66 ], [ %11, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -16
  switch i32 %14, label %24 [
    i32 0, label %19
    i32 2, label %17
    i32 3, label %18
  ]

17:                                               ; preds = %13
  br label %24

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %15, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 21
  %23 = and i32 %22, 127
  br label %24

24:                                               ; preds = %19, %18, %17, %13
  %25 = phi i32 [ %23, %19 ], [ 127, %18 ], [ 7, %17 ], [ 0, %13 ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef %16, i32 noundef %25)
  %26 = load i32, ptr @aspm_policy, align 4
  switch i32 %26, label %34 [
    i32 0, label %28
    i32 2, label %27
    i32 3, label %27
  ]

27:                                               ; preds = %24, %24
  br label %34

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %15, i32 12
  %30 = load i16, ptr %29, align 4
  %31 = lshr i16 %30, 9
  %32 = and i16 %31, 1
  %33 = zext i16 %32 to i32
  br label %34

34:                                               ; preds = %28, %27, %24
  %35 = phi i32 [ %33, %28 ], [ 1, %27 ], [ 0, %24 ]
  %36 = getelementptr i8, ptr %15, i32 12
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 1152
  %39 = icmp eq i16 %38, 128
  %40 = select i1 %39, i32 %35, i32 0
  %41 = lshr i16 %37, 8
  %42 = and i16 %41, 1
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %66, label %45

45:                                               ; preds = %34
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq i32 %40, 0
  %50 = getelementptr inbounds %struct.pci_bus, ptr %48, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  %53 = select i1 %49, i16 0, i16 256
  br i1 %52, label %61, label %54

54:                                               ; preds = %54, %45
  %55 = phi ptr [ %57, %54 ], [ %51, %45 ]
  %56 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %55, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %53) #13
  %57 = load ptr, ptr %55, align 4
  %58 = icmp eq ptr %57, %50
  br i1 %58, label %59, label %54

59:                                               ; preds = %54
  %60 = load i16, ptr %36, align 4
  br label %61

61:                                               ; preds = %59, %45
  %62 = phi i16 [ %60, %59 ], [ %37, %45 ]
  %63 = and i16 %62, -257
  %64 = or i16 %63, %53
  store i16 %64, ptr %36, align 4
  %65 = load i32, ptr @aspm_policy, align 4
  br label %66

66:                                               ; preds = %61, %34
  %67 = phi i32 [ %26, %34 ], [ %65, %61 ]
  %68 = load ptr, ptr %15, align 4
  %69 = icmp eq ptr %68, @link_list
  br i1 %69, label %70, label %13

70:                                               ; preds = %66, %10
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %71

71:                                               ; preds = %70, %7, %4, %2
  %72 = phi i32 [ 0, %70 ], [ -1, %2 ], [ %5, %4 ], [ 0, %7 ]
  ret i32 %72
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_aspm_get_policy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1) #9 {
  %3 = load i32, ptr @aspm_policy, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr @policy_str, align 4
  %6 = select i1 %4, ptr @.str.10, ptr @.str.11
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %5)
  %8 = load i32, ptr @aspm_policy, align 4
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %9, ptr @.str.10, ptr @.str.11
  %11 = getelementptr i8, ptr %0, i32 %7
  %12 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @policy_str, i32 0, i32 1), align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef nonnull %10, ptr noundef %12)
  %14 = add i32 %13, %7
  %15 = load i32, ptr @aspm_policy, align 4
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %16, ptr @.str.10, ptr @.str.11
  %18 = getelementptr i8, ptr %0, i32 %14
  %19 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @policy_str, i32 0, i32 2), align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull %17, ptr noundef %19)
  %21 = add i32 %20, %14
  %22 = load i32, ptr @aspm_policy, align 4
  %23 = icmp eq i32 %22, 3
  %24 = select i1 %23, ptr @.str.10, ptr @.str.11
  %25 = getelementptr i8, ptr %0, i32 %21
  %26 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @policy_str, i32 0, i32 3), align 4
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %25, ptr noundef nonnull %24, ptr noundef %26)
  %28 = add i32 %27, %21
  %29 = getelementptr i8, ptr %0, i32 %28
  store i16 10, ptr %29, align 1
  %30 = add i32 %28, 1
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clkpm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 6
  %27 = load i16, ptr %26, align 4
  %28 = lshr i16 %27, 8
  %29 = and i16 %28, 1
  %30 = zext i16 %29 to i32
  %31 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %30) #13
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clkpm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -76
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -128
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 18
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 37
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %19, %15, %9, %4
  %27 = phi ptr [ %25, %23 ], [ null, %4 ], [ null, %19 ], [ null, %15 ], [ null, %9 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %28 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #13
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %75, label %30

30:                                               ; preds = %26
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  %31 = load i8, ptr %5, align 1, !range !13
  %32 = getelementptr inbounds %struct.pcie_link_state, ptr %27, i32 0, i32 6
  %33 = load i16, ptr %32, align 4
  %34 = xor i8 %31, 1
  %35 = zext i8 %34 to i16
  %36 = shl nuw nsw i16 %35, 10
  %37 = and i16 %33, -1025
  %38 = or i16 %36, %37
  store i16 %38, ptr %32, align 4
  %39 = load i32, ptr @aspm_policy, align 4
  switch i32 %39, label %45 [
    i32 0, label %41
    i32 2, label %40
    i32 3, label %40
  ]

40:                                               ; preds = %30, %30
  br label %45

41:                                               ; preds = %30
  %42 = lshr i16 %33, 9
  %43 = and i16 %42, 1
  %44 = zext i16 %43 to i32
  br label %45

45:                                               ; preds = %41, %40, %30
  %46 = phi i32 [ %44, %41 ], [ 1, %40 ], [ 0, %30 ]
  %47 = and i16 %38, 1152
  %48 = icmp eq i16 %47, 128
  %49 = select i1 %48, i32 %46, i32 0
  %50 = lshr i16 %33, 8
  %51 = and i16 %50, 1
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %74, label %54

54:                                               ; preds = %45
  %55 = load ptr, ptr %27, align 4
  %56 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq i32 %49, 0
  %59 = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  %62 = select i1 %58, i16 0, i16 256
  br i1 %61, label %70, label %63

63:                                               ; preds = %63, %54
  %64 = phi ptr [ %66, %63 ], [ %60, %54 ]
  %65 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %64, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %62) #13
  %66 = load ptr, ptr %64, align 4
  %67 = icmp eq ptr %66, %59
  br i1 %67, label %68, label %63

68:                                               ; preds = %63
  %69 = load i16, ptr %32, align 4
  br label %70

70:                                               ; preds = %68, %54
  %71 = phi i16 [ %69, %68 ], [ %38, %54 ]
  %72 = and i16 %71, -257
  %73 = or i16 %72, %62
  store i16 %73, ptr %32, align 4
  br label %74

74:                                               ; preds = %70, %45
  call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %75

75:                                               ; preds = %74, %26
  %76 = phi i32 [ %3, %74 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l0s_aspm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 384
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %30) #13
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l0s_aspm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspm_attr_store_common(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -76
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -128
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 18
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 37
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %19, %15, %9, %4
  %27 = phi ptr [ %25, %23 ], [ null, %4 ], [ null, %19 ], [ null, %15 ], [ null, %9 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %28 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %5) #13
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %26
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  call void @mutex_lock(ptr noundef nonnull @aspm_lock) #13
  %31 = load i8, ptr %5, align 1, !range !13
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.pcie_link_state, ptr %27, i32 0, i32 6
  %34 = load i16, ptr %33, align 4
  %35 = and i8 %3, 127
  br i1 %32, label %47, label %36

36:                                               ; preds = %30
  %37 = xor i8 %35, 127
  %38 = zext i8 %37 to i16
  %39 = and i16 %34, %38
  %40 = and i16 %34, -128
  %41 = or i16 %39, %40
  store i16 %41, ptr %33, align 4
  %42 = and i8 %3, 120
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = and i16 %39, 123
  %46 = or i16 %45, %40
  br label %50

47:                                               ; preds = %30
  %48 = zext i8 %35 to i16
  %49 = or i16 %34, %48
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i16 [ %46, %44 ], [ %49, %47 ]
  store i16 %51, ptr %33, align 4
  br label %52

52:                                               ; preds = %50, %36
  %53 = load i32, ptr @aspm_policy, align 4
  switch i32 %53, label %61 [
    i32 0, label %56
    i32 2, label %54
    i32 3, label %55
  ]

54:                                               ; preds = %52
  br label %61

55:                                               ; preds = %52
  br label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.pcie_link_state, ptr %27, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 21
  %60 = and i32 %59, 127
  br label %61

61:                                               ; preds = %56, %55, %54, %52
  %62 = phi i32 [ %60, %56 ], [ 127, %55 ], [ 7, %54 ], [ 0, %52 ]
  call fastcc void @pcie_config_aspm_link(ptr noundef %27, i32 noundef %62)
  call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #13
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %63

63:                                               ; preds = %61, %26
  %64 = phi i32 [ %2, %61 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_aspm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 9
  %29 = and i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %29) #13
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_aspm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_1_aspm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 10
  %29 = and i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %29) #13
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_1_aspm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 8)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_2_aspm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 11
  %29 = and i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %29) #13
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_2_aspm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 16)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_1_pcipm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 12
  %29 = and i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %29) #13
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_1_pcipm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 32)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_2_pcipm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %17, %13, %7, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ null, %17 ], [ null, %13 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.pcie_link_state, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 13
  %29 = and i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %29) #13
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l1_2_pcipm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 64)
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153229002, i64 2153229490, i64 2153229039, i64 2153229095, i64 2153229129, i64 2153229153, i64 2153229194, i64 2153229215, i64 2153229243, i64 2153229277}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2153267957, i64 2153268445, i64 2153267994, i64 2153268050, i64 2153268084, i64 2153268108, i64 2153268149, i64 2153268170, i64 2153268198, i64 2153268232}
!13 = !{i8 0, i8 2}
