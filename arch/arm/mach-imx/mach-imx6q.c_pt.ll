; ModuleID = '/llk/IR/arch/arm/mach-imx/mach-imx6q.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mach-imx6q.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }

@__pci_fixup_ventana_pciesw_early_fixup67 = internal constant %struct.pci_fixup { i16 4277, i16 -31223, i32 -1, i32 0, ptr @ventana_pciesw_early_fixup }, section ".pci_fixup_early", align 4
@__pci_fixup_ventana_pciesw_early_fixup68 = internal constant %struct.pci_fixup { i16 4277, i16 -31226, i32 -1, i32 0, ptr @ventana_pciesw_early_fixup }, section ".pci_fixup_early", align 4
@__pci_fixup_ventana_pciesw_early_fixup69 = internal constant %struct.pci_fixup { i16 4277, i16 -31228, i32 -1, i32 0, ptr @ventana_pciesw_early_fixup }, section ".pci_fixup_early", align 4
@.str = private unnamed_addr constant [44 x i8] c"Freescale i.MX6 Quad/DualLite (Device Tree)\00", align 1
@imx6q_dt_compat = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr null], section ".init.rodata", align 4
@imx_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_IMX6Q = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @imx6q_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr @imx_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6q_map_io, ptr null, ptr @imx6q_init_irq, ptr null, ptr @imx6q_init_machine, ptr @imx6q_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"gw,ventana\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fsl,imx6q\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fsl,imx6qp\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"fsl,imx6q-ccm\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"i.MX6QP\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"i.MX6DL\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"i.MX6Q\00", align 1
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"fsl,imx6q-fec\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\014%s: failed to find fec node\0A\00", align 1
@__func__.imx6q_1588_init = private unnamed_addr constant [16 x i8] c"imx6q_1588_init\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\014%s: failed to get ptp clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"enet_ref\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\014%s: failed to get enet clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"\013failed to find fsl,imx6q-iomuxc-gpr regmap\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"\014failed to find fsl,imx6q-iomuxc-gpr regmap\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"imx6q-cpufreq\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__mach_desc_IMX6Q, ptr @__pci_fixup_ventana_pciesw_early_fixup67, ptr @__pci_fixup_ventana_pciesw_early_fixup68, ptr @__pci_fixup_ventana_pciesw_early_fixup69], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ventana_pciesw_early_fixup(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 1580, ptr noundef nonnull %2) #6
  %11 = load i32, ptr %2, align 4
  %12 = or i32 %11, 43688
  store i32 %12, ptr %2, align 4
  %13 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 1580, i32 noundef %12) #6
  %14 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 1604, ptr noundef nonnull %2) #6
  %15 = load i32, ptr %2, align 4
  %16 = or i32 %15, 254
  store i32 %16, ptr %2, align 4
  %17 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 1604, i32 noundef %16) #6
  call void @msleep(i32 noundef 100) #6
  br label %18

18:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6q_map_io() #1 section ".init.text" {
  tail call void @imx_scu_map_io() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6q_init_irq() #1 section ".init.text" {
  tail call void @imx_gpc_check_dt() #6
  tail call void @imx_init_revision_from_anatop() #6
  tail call void @imx_init_l2cache() #6
  tail call void @imx_src_init() #6
  tail call void @irqchip_init() #6
  tail call void @imx6_pm_ccm_init(ptr noundef nonnull @.str.5) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6q_init_machine() #1 section ".init.text" {
  %1 = load i32, ptr @__mxc_cpu_type, align 4
  %2 = icmp eq i32 %1, 99
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = tail call i32 @imx_get_soc_revision() #6
  %5 = icmp ugt i32 %4, 31
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @__mxc_cpu_type, align 4
  br label %11

8:                                                ; preds = %3
  %9 = tail call i32 @imx_get_soc_revision() #6
  %10 = add i32 %9, -16
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.6, i32 noundef %10) #6
  br label %16

11:                                               ; preds = %6, %0
  %12 = phi i32 [ %7, %6 ], [ %1, %0 ]
  %13 = icmp eq i32 %12, 97
  %14 = select i1 %13, ptr @.str.7, ptr @.str.8
  %15 = tail call i32 @imx_get_soc_revision() #6
  tail call void @imx_print_silicon_rev(ptr noundef nonnull %14, i32 noundef %15) #6
  br label %16

16:                                               ; preds = %11, %8
  %17 = tail call i32 @phy_register_fixup_for_uid(i32 noundef 2233872, i32 noundef 16777200, ptr noundef nonnull @ksz9021rn_phy_fixup) #6
  %18 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #6
  tail call void @imx_anatop_init() #6
  %19 = load i32, ptr @__mxc_cpu_type, align 4
  %20 = icmp eq i32 %19, 99
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @imx6q_pm_init() #6
  br label %23

22:                                               ; preds = %16
  tail call void @imx6dl_pm_init() #6
  br label %23

23:                                               ; preds = %22, %21
  tail call fastcc void @imx6q_1588_init() #7
  tail call fastcc void @imx6q_axi_init() #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6q_init_late() #1 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = load i32, ptr @__mxc_cpu_type, align 4
  %3 = icmp eq i32 %2, 99
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = tail call i32 @imx_get_soc_revision() #6
  %6 = icmp ugt i32 %5, 17
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @__mxc_cpu_type, align 4
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi i32 [ %8, %7 ], [ %2, %0 ]
  %11 = icmp eq i32 %10, 97
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call i32 @imx_get_soc_revision() #6
  %14 = icmp ugt i32 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %4
  %16 = tail call i32 @imx6q_cpuidle_init() #6
  br label %17

17:                                               ; preds = %15, %12, %9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #6
  %18 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #6
  store ptr @.str.17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false) #6
  %21 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_scu_map_io() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_check_dt() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_init_revision_from_anatop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_init_l2cache() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_src_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_pm_ccm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_soc_revision() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_print_silicon_rev(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6q_pm_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6dl_pm_init() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx6q_1588_init() unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.imx6q_1588_init) #8
  br label %27

5:                                                ; preds = %0
  %6 = tail call ptr @of_clk_get(ptr noundef nonnull %1, i32 noundef 2) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.imx6q_1588_init) #8
  br label %26

10:                                               ; preds = %5
  %11 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.12) #6
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.imx6q_1588_init) #8
  br label %25

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @clk_is_match(ptr noundef %6, ptr noundef %11) #6
  %17 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.14) #6
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = select i1 %16, i32 2097152, i32 0
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4, i32 noundef 2097152, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %24

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  br label %24

24:                                               ; preds = %22, %19
  tail call void @clk_put(ptr noundef %11) #6
  br label %25

25:                                               ; preds = %24, %13
  tail call void @clk_put(ptr noundef %6) #6
  br label %26

26:                                               ; preds = %25, %8
  tail call void @of_node_put(ptr noundef nonnull %1) #6
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx6q_axi_init() unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.14) #6
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 16, i32 noundef 207, i32 noundef 207, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 24, i32 noundef 16711680, i32 noundef 8323072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 16711680, i32 noundef 8323072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %9

7:                                                ; preds = %0
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_register_fixup_for_uid(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9021rn_phy_fixup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 11, i16 noundef zeroext -32507) #6
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %4, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %8, i32 noundef 12, i16 noundef zeroext 0) #6
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 11, i16 noundef zeroext -32508) #6
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %4, align 8
  %15 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 12, i16 noundef zeroext -3856) #6
  %16 = load ptr, ptr %2, align 8
  %17 = load i32, ptr %4, align 8
  %18 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 11, i16 noundef zeroext 260) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx6q_cpuidle_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold }
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
!8 = !{!"auto-init"}
