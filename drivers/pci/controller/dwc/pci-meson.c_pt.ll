; ModuleID = '/llk/IR/drivers/pci/controller/dwc/pci-meson.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-meson.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.meson_pcie = type { %struct.dw_pcie, ptr, %struct.meson_pcie_clk_res, %struct.meson_pcie_rc_reset, ptr, ptr }
%struct.meson_pcie_clk_res = type { ptr, ptr, ptr }
%struct.meson_pcie_rc_reset = type { ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }

@meson_pcie_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author252 = internal constant [39 x i8] c"author=Yue Wang <yue.wang@amlogic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [43 x i8] c"description=Amlogic PCIe Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@meson_pcie_driver = internal global %struct.platform_driver { ptr @meson_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"meson-pcie\00", align 1
@dw_pcie_ops = internal constant %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_pcie_link_up, ptr @meson_pcie_start_link, ptr null }, align 4
@meson_pcie_host_ops = internal constant %struct.dw_pcie_host_ops { ptr @meson_pcie_host_init, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"get phy failed, %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"get reset gpio failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"get reset resource failed, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"get memory resource failed, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"phy power on failed, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"reset failed, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"init clock resources failed, %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Add PCIe port failed, %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"error: wait linkup timeout\0A\00", align 1
@meson_pci_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_own_conf_map_bus, ptr @meson_pcie_rd_own_conf, ptr @pci_generic_config_write }, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"elbi\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"general\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"set clk rate failed, ret = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"couldn't enable clk\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__meson_pcie_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @meson_pcie_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_pcie_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pcie_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 312, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %152, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 8
  %6 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 9
  store ptr @dw_pcie_ops, ptr %6, align 8
  %7 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7
  %8 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7, i32 8
  store ptr @meson_pcie_host_ops, ptr %8, align 8
  %9 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 11
  store i32 1, ptr %9, align 8
  %10 = tail call ptr @devm_phy_get(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %11 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 5
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %14) #6
  br label %152

15:                                               ; preds = %5
  %16 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %17 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 4
  store ptr %16, ptr %17, align 8
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  %20 = ptrtoint ptr %16 to i32
  br label %152

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 3
  %23 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  store ptr %23, ptr %22, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @reset_control_deassert(ptr noundef %23) #5
  %27 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %28 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 3, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @reset_control_deassert(ptr noundef %27) #5
  %32 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  %33 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %42, label %38

35:                                               ; preds = %25, %21
  %36 = phi ptr [ %23, %21 ], [ %27, %25 ]
  %37 = ptrtoint ptr %36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %37) #6
  br label %152

38:                                               ; preds = %30
  %39 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.16) #5
  %40 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 1
  store ptr %39, ptr %40, align 8
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %30
  %43 = phi ptr [ %39, %38 ], [ %32, %30 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = ptrtoint ptr %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %46) #6
  br label %152

47:                                               ; preds = %42, %38
  %48 = tail call i32 @phy_init(ptr noundef %10) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = tail call i32 @phy_power_on(ptr noundef %10) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @phy_exit(ptr noundef %10) #5
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %48, %47 ], [ %51, %53 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %56) #6
  br label %152

57:                                               ; preds = %50
  %58 = tail call i32 @phy_reset(ptr noundef %10) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %58) #6
  br label %146

61:                                               ; preds = %57
  %62 = tail call i32 @reset_control_assert(ptr noundef %23) #5
  %63 = tail call i32 @reset_control_assert(ptr noundef %27) #5
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 107374000) #5
  %65 = tail call i32 @reset_control_deassert(ptr noundef %23) #5
  %66 = tail call i32 @reset_control_deassert(ptr noundef %27) #5
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 107374000) #5
  %68 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 2
  %69 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.13) #5
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %90, label %71

71:                                               ; preds = %61
  %72 = tail call i32 @clk_set_rate(ptr noundef %69, i32 noundef 100000000) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %72) #6
  %75 = inttoptr i32 %72 to ptr
  br label %90

76:                                               ; preds = %71
  %77 = tail call i32 @clk_prepare(ptr noundef %69) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = tail call i32 @clk_enable(ptr noundef %69) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  tail call void @clk_unprepare(ptr noundef %69) #5
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i32 [ %80, %82 ], [ %77, %76 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20) #6
  %85 = inttoptr i32 %84 to ptr
  br label %90

86:                                               ; preds = %79
  %87 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %69) #5
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @clk_disable(ptr noundef %69) #5
  tail call void @clk_unprepare(ptr noundef %69) #5
  br label %90

90:                                               ; preds = %89, %86, %83, %74, %61
  %91 = phi ptr [ %75, %74 ], [ %85, %83 ], [ %69, %61 ], [ %69, %86 ], [ %69, %89 ]
  %92 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 2, i32 1
  store ptr %91, ptr %92, align 4
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %135, label %94

94:                                               ; preds = %90
  %95 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.17) #5
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %111, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @clk_prepare(ptr noundef %95) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = tail call i32 @clk_enable(ptr noundef %95) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  tail call void @clk_unprepare(ptr noundef %95) #5
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i32 [ %101, %103 ], [ %98, %97 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20) #6
  %106 = inttoptr i32 %105 to ptr
  br label %111

107:                                              ; preds = %100
  %108 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %95) #5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void @clk_disable(ptr noundef %95) #5
  tail call void @clk_unprepare(ptr noundef %95) #5
  br label %111

111:                                              ; preds = %110, %107, %104, %94
  %112 = phi ptr [ %106, %104 ], [ %95, %94 ], [ %95, %107 ], [ %95, %110 ]
  %113 = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 2, i32 2
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %135, label %115

115:                                              ; preds = %111
  %116 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.18) #5
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @clk_prepare(ptr noundef %116) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = tail call i32 @clk_enable(ptr noundef %116) #5
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  tail call void @clk_unprepare(ptr noundef %116) #5
  br label %125

125:                                              ; preds = %124, %118
  %126 = phi i32 [ %122, %124 ], [ %119, %118 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20) #6
  %127 = inttoptr i32 %126 to ptr
  br label %132

128:                                              ; preds = %121
  %129 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %116) #5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  tail call void @clk_disable(ptr noundef %116) #5
  tail call void @clk_unprepare(ptr noundef %116) #5
  br label %132

132:                                              ; preds = %131, %128, %125, %115
  %133 = phi ptr [ %127, %125 ], [ %116, %115 ], [ %116, %128 ], [ %116, %131 ]
  store ptr %133, ptr %68, align 4
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %140

135:                                              ; preds = %132, %111, %90
  %136 = phi ptr [ %133, %132 ], [ %91, %90 ], [ %112, %111 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = ptrtoint ptr %136 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %139) #6
  br label %146

140:                                              ; preds = %135, %132
  %141 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %141, align 8
  %142 = tail call i32 @dw_pcie_host_init(ptr noundef %7) #5
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %142) #6
  %145 = load ptr, ptr %11, align 4
  br label %146

146:                                              ; preds = %144, %138, %60
  %147 = phi ptr [ %10, %60 ], [ %10, %138 ], [ %145, %144 ]
  %148 = phi i32 [ %58, %60 ], [ %139, %138 ], [ %142, %144 ]
  %149 = tail call i32 @phy_power_off(ptr noundef %147) #5
  %150 = load ptr, ptr %11, align 4
  %151 = tail call i32 @phy_exit(ptr noundef %150) #5
  br label %152

152:                                              ; preds = %146, %140, %55, %45, %35, %19, %13, %1
  %153 = phi i32 [ %14, %13 ], [ %20, %19 ], [ %37, %35 ], [ %46, %45 ], [ %56, %55 ], [ %148, %146 ], [ -12, %1 ], [ 0, %140 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pcie_link_up(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.meson_pcie, ptr %4, i32 0, i32 1
  br label %6

6:                                                ; preds = %16, %1
  %7 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr i8, ptr %8, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr i8, ptr %11, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = and i32 %10, 97344
  %15 = icmp eq i32 %14, 83008
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = add nuw nsw i32 %7, 1
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #5
  %19 = icmp eq i32 %17, 4000
  br i1 %19, label %20, label %6

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #6
  br label %21

21:                                               ; preds = %20, %6
  %22 = phi i32 [ 0, %20 ], [ 1, %6 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pcie_start_link(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.meson_pcie, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = or i32 %7, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #5, !srcloc !11
  %10 = getelementptr inbounds %struct.meson_pcie, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 107374000) #5
  %13 = load ptr, ptr %10, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pcie_host_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 2
  store ptr @meson_pci_ops, ptr %8, align 4
  %9 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %5, i8 noundef zeroext 16) #5
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 8
  %12 = tail call i32 @dw_pcie_read_dbi(ptr noundef %5, i32 noundef %11, i32 noundef 4) #5
  %13 = and i32 %12, -225
  tail call void @dw_pcie_write_dbi(ptr noundef %5, i32 noundef %11, i32 noundef 4, i32 noundef %13) #5
  %14 = tail call i32 @dw_pcie_read_dbi(ptr noundef %5, i32 noundef %11, i32 noundef 4) #5
  %15 = or i32 %14, 32
  tail call void @dw_pcie_write_dbi(ptr noundef %5, i32 noundef %11, i32 noundef 4, i32 noundef %15) #5
  %16 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %5, i8 noundef zeroext 16) #5
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 8
  %19 = tail call i32 @dw_pcie_read_dbi(ptr noundef %5, i32 noundef %18, i32 noundef 4) #5
  %20 = and i32 %19, -28673
  tail call void @dw_pcie_write_dbi(ptr noundef %5, i32 noundef %18, i32 noundef 4, i32 noundef %20) #5
  %21 = tail call i32 @dw_pcie_read_dbi(ptr noundef %5, i32 noundef %18, i32 noundef 4) #5
  %22 = or i32 %21, 4096
  tail call void @dw_pcie_write_dbi(ptr noundef %5, i32 noundef %18, i32 noundef 4, i32 noundef %22) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_pcie_own_conf_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pcie_rd_own_conf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #2 {
  %6 = tail call i32 @pci_generic_config_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 8
  %10 = icmp eq i32 %3, 4
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = and i32 %13, 65535
  %15 = or i32 %14, 100925440
  br label %26

16:                                               ; preds = %8
  %17 = icmp eq i32 %2, 10
  %18 = icmp eq i32 %3, 2
  %19 = and i1 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %3, 1
  %22 = and i1 %17, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = icmp eq i32 %2, 11
  %25 = and i1 %24, %21
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20, %16, %12
  %27 = phi i32 [ %15, %12 ], [ 1540, %16 ], [ 4, %20 ], [ 6, %23 ]
  store i32 %27, ptr %4, align 4
  br label %28

28:                                               ; preds = %26, %23, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %0) #4 {
  tail call void @clk_disable(ptr noundef %0) #5
  tail call void @clk_unprepare(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3928609}
!9 = !{i64 2154262671}
!10 = !{i64 2154263026}
!11 = !{i64 3928191}
