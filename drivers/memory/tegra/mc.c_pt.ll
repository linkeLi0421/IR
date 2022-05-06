; ModuleID = '/llk/IR/drivers/memory/tegra/mc.c_pt.bc'
source_filename = "../drivers/memory/tegra/mc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_tegra_memory_controller_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_tegra_memory_controller_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_tegra_memory_controller_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mc_probe_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mc_probe_device\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mc_probe_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mc_write_emem_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mc_write_emem_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mc_write_emem_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mc_get_emem_device_count:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mc_get_emem_device_count\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mc_get_emem_device_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_mc_reset_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.66 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.66 = type { ptr }
%struct.tegra_mc_reset = type { ptr, i32, i32, i32, i32, i32 }
%struct.tegra_mc_timing = type { i32, ptr }
%struct.tegra_mc_client = type { i32, ptr, %union.anon.61, i32, %struct.anon.62 }
%union.anon.61 = type { i32 }
%struct.anon.62 = type { %struct.anon.63, %struct.anon.64, %struct.anon.65 }
%struct.anon.63 = type { i32, i32 }
%struct.anon.64 = type { i32, i32, i32, i32 }
%struct.anon.65 = type { i32, i32 }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }

@.str = private unnamed_addr constant [25 x i8] c"nvidia,memory-controller\00", align 1
@__kstrtab_devm_tegra_memory_controller_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_tegra_memory_controller_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_tegra_memory_controller_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_tegra_memory_controller_get to i32), ptr @__kstrtab_devm_tegra_memory_controller_get, ptr @__kstrtabns_devm_tegra_memory_controller_get }, section "___ksymtab_gpl+devm_tegra_memory_controller_get", align 4
@__kstrtab_tegra_mc_probe_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mc_probe_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mc_probe_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mc_probe_device to i32), ptr @__kstrtab_tegra_mc_probe_device, ptr @__kstrtabns_tegra_mc_probe_device }, section "___ksymtab_gpl+tegra_mc_probe_device", align 4
@tegra_mc_reset_ops_common = dso_local local_unnamed_addr constant %struct.tegra_mc_reset_ops { ptr null, ptr null, ptr @tegra_mc_block_dma_common, ptr @tegra_mc_dma_idling_common, ptr @tegra_mc_unblock_dma_common, ptr @tegra_mc_reset_status_common }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"no memory timing registered for rate %lu\0A\00", align 1
@__kstrtab_tegra_mc_write_emem_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mc_write_emem_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mc_write_emem_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mc_write_emem_configuration to i32), ptr @__kstrtab_tegra_mc_write_emem_configuration, ptr @__kstrtabns_tegra_mc_write_emem_configuration }, section "___ksymtab_gpl+tegra_mc_write_emem_configuration", align 4
@__kstrtab_tegra_mc_get_emem_device_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mc_get_emem_device_count = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mc_get_emem_device_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mc_get_emem_device_count to i32), ptr @__kstrtab_tegra_mc_get_emem_device_count, ptr @__kstrtabns_tegra_mc_get_emem_device_count }, section "___ksymtab_gpl+tegra_mc_get_emem_device_count", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to get MC clock: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to setup timings: %d\0A\00", align 1
@tegra30_mc_ops = dso_local local_unnamed_addr constant %struct.tegra_mc_ops { ptr @tegra30_mc_probe, ptr null, ptr null, ptr null, ptr @tegra30_mc_handle_irq, ptr null }, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"External interrupt\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EMEM address decode error\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"GART page fault\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Security violation\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"EMEM arbitration error\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Page fault\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Invalid APB ASID update\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"VPR violation\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Secure carveout violation\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"MTS carveout violation\00", align 1
@tegra_mc_status_names = dso_local local_unnamed_addr constant <{ [17 x ptr], [15 x ptr] }> <{ [17 x ptr] [ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr null, ptr null, ptr @.str.15], [15 x ptr] zeroinitializer }>, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"EMEM decode error\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"TrustZone violation\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Carveout violation\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SMMU translation error\00", align 1
@tegra_mc_error_names = dso_local local_unnamed_addr constant [8 x ptr] [ptr null, ptr null, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr null, ptr @.str.19, ptr null], align 4
@__initcall__kmod_tegra_mc__228_856_tegra_mc_init3 = internal global ptr @tegra_mc_init, section ".initcall3.init", align 4
@__UNIQUE_ID_author229 = internal constant [52 x i8] c"tegra_mc.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [59 x i8] c"tegra_mc.description=NVIDIA Tegra Memory Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [44 x i8] c"tegra_mc.file=drivers/memory/tegra/tegra-mc\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [24 x i8] c"tegra_mc.license=GPL v2\00", section ".modinfo", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"nvidia,ram-code\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"no memory timings for RAM code %u registered\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"timing %pOFn: failed to read rate\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"nvidia,emem-configuration\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"timing %pOFn: failed to read EMEM configuration\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"secure \00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tegra30_mc_handle_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tegra30_mc_handle_irq = private unnamed_addr constant [22 x i8] c"tegra30_mc_handle_irq\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"%s: %s%s @%pa: %s (%s%s)\0A\00", align 1
@tegra_mc_driver = internal global %struct.platform_driver { ptr @tegra_mc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.32, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_mc_of_match, ptr null, ptr null, ptr @tegra_mc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_mc_pm_ops, ptr null, ptr null }, ptr null, i8 1 }, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"tegra-mc\00", align 1
@tegra_mc_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-mc-gart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_mc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_mc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_mc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_mc_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_mc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_mc_suspend, ptr @tegra_mc_resume, ptr @tegra_mc_suspend, ptr @tegra_mc_resume, ptr @tegra_mc_suspend, ptr @tegra_mc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"drivers/memory/tegra/mc.c\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"missing client ID mask for this SoC\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"failed to register reset controller: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"failed to initialize interconnect: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"failed to probe SMMU: %ld\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"failed to probe GART: %ld\0A\00", align 1
@tegra_mc_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @tegra_mc_hotreset_assert, ptr @tegra_mc_hotreset_deassert, ptr @tegra_mc_hotreset_status }, align 4
@.str.41 = private unnamed_addr constant [28 x i8] c"failed to block %s DMA: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"failed to flush %s DMA\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"failed to hot reset %s: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"failed to deassert hot reset %s: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"failed to unblock %s DMA : %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Memory Controller\00", align 1
@tegra20_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@tegra30_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@tegra114_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@tegra124_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__initcall__kmod_tegra_mc__228_856_tegra_mc_init3, ptr @__ksymtab_devm_tegra_memory_controller_get, ptr @__ksymtab_tegra_mc_get_emem_device_count, ptr @__ksymtab_tegra_mc_probe_device, ptr @__ksymtab_tegra_mc_write_emem_configuration], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_tegra_memory_controller_get(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = call ptr @of_find_device_by_node(ptr noundef nonnull %7) #6
  call void @of_node_put(ptr noundef nonnull %7) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  call void @put_device(ptr noundef %18) #6
  br label %25

19:                                               ; preds = %13
  %20 = call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @tegra_mc_devm_action_put_device, ptr noundef nonnull %15) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %15, align 4
  call void @put_device(ptr noundef %23) #6
  %24 = inttoptr i32 %20 to ptr
  br label %25

25:                                               ; preds = %22, %19, %17, %10, %1
  %26 = phi ptr [ %24, %22 ], [ inttoptr (i32 -517 to ptr), %17 ], [ inttoptr (i32 -2 to ptr), %1 ], [ inttoptr (i32 -19 to ptr), %10 ], [ %15, %19 ]
  ret ptr %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_mc_devm_action_put_device(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @put_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mc_probe_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_mc_soc, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_mc_ops, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #6
  br label %14

14:                                               ; preds = %12, %8, %2
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_block_dma_common(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  %11 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = or i32 %13, %10
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @tegra_mc_dma_idling_common(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %8
  %13 = icmp ne i32 %12, 0
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_unblock_dma_common(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  %11 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = load i32, ptr %5, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_reset_status_common(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %8, %10
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mc_write_emem_configuration(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %14, %6
  %10 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr %struct.tegra_mc_timing, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw i32 %10, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %28, label %9

17:                                               ; preds = %9
  %18 = icmp eq ptr %11, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_mc_soc, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %19
  %26 = getelementptr %struct.tegra_mc_timing, ptr %8, i32 %10, i32 1
  %27 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  br label %30

28:                                               ; preds = %17, %14, %2
  %29 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %1) #7
  br label %47

30:                                               ; preds = %30, %25
  %31 = phi ptr [ %21, %25 ], [ %43, %30 ]
  %32 = phi i32 [ 0, %25 ], [ %42, %30 ]
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i32, ptr %33, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tegra_mc_soc, ptr %31, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i32, ptr %37, i32 %32
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %35) #6, !srcloc !10
  %42 = add nuw i32 %32, 1
  %43 = load ptr, ptr %20, align 4
  %44 = getelementptr inbounds %struct.tegra_mc_soc, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %30, label %47

47:                                               ; preds = %30, %28, %19
  %48 = phi i32 [ -22, %28 ], [ 0, %19 ], [ 0, %30 ]
  ret i32 %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mc_get_emem_device_count(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = and i32 %5, 1
  %7 = add nuw nsw i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra30_mc_probe(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call ptr @devm_clk_get_optional(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  %6 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 4
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = ptrtoint ptr %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %10) #7
  %11 = load ptr, ptr %6, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %168

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !10
  %17 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = load ptr, ptr %6, align 4
  %21 = tail call i32 @clk_get_rate(ptr noundef %20) #6
  %22 = zext i32 %21 to i64
  %23 = mul nuw i64 %22, %19
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %23, i32 0) #8, !srcloc !11
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = extractvalue { i64, i32 } %24, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %23, i64 %25, i32 %26) #8, !srcloc !12
  %28 = extractvalue { i64, i32 } %27, 0
  %29 = lshr i64 %28, 29
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr i8, ptr %30, i32 144
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  %33 = and i32 %32, -512
  %34 = trunc i64 %29 to i32
  %35 = and i32 %34, 511
  %36 = or i32 %35, %33
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr i8, ptr %37, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !10
  %39 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tegra_mc_soc, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %44, %13
  %45 = phi ptr [ %69, %44 ], [ %40, %13 ]
  %46 = phi i32 [ %68, %44 ], [ 0, %13 ]
  %47 = load ptr, ptr %45, align 4
  %48 = getelementptr %struct.tegra_mc_client, ptr %47, i32 %46, i32 4, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %14, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !9
  %53 = getelementptr %struct.tegra_mc_client, ptr %47, i32 %46, i32 4, i32 1, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.tegra_mc_client, ptr %47, i32 %46, i32 4, i32 1, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %54, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %52, %58
  %60 = getelementptr %struct.tegra_mc_client, ptr %47, i32 %46, i32 4, i32 1, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, %54
  %63 = shl i32 %62, %56
  %64 = or i32 %63, %59
  %65 = load i32, ptr %48, align 4
  %66 = load ptr, ptr %14, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #6, !srcloc !10
  %68 = add nuw i32 %46, 1
  %69 = load ptr, ptr %39, align 4
  %70 = getelementptr inbounds %struct.tegra_mc_soc, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %44, label %73

73:                                               ; preds = %44, %13
  %74 = load ptr, ptr %14, align 4
  %75 = getelementptr i8, ptr %74, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1) #6, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %76 = tail call i32 @tegra_read_ram_code() #6
  %77 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 9
  store i32 0, ptr %77, align 4
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 25
  %80 = load ptr, ptr %79, align 8
  %81 = tail call ptr @of_get_next_child(ptr noundef %80, ptr noundef null) #6
  %82 = icmp eq ptr %81, null
  br i1 %82, label %159, label %83

83:                                               ; preds = %153, %73
  %84 = phi ptr [ %157, %153 ], [ %81, %73 ]
  %85 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %84, ptr noundef nonnull @.str.20, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %86 = icmp sgt i32 %85, -1
  %87 = load i32, ptr %3, align 4
  %88 = icmp eq i32 %87, %76
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %153

90:                                               ; preds = %83
  %91 = call ptr @of_get_next_child(ptr noundef nonnull %84, ptr noundef null) #6
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %93, %90
  %94 = phi i32 [ %96, %93 ], [ 0, %90 ]
  %95 = phi ptr [ %97, %93 ], [ %91, %90 ]
  %96 = add i32 %94, 1
  %97 = call ptr @of_get_next_child(ptr noundef nonnull %84, ptr noundef nonnull %95) #6
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %93

99:                                               ; preds = %93, %90
  %100 = phi i32 [ 0, %90 ], [ %96, %93 ]
  %101 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %100, i32 8) #6
  %102 = extractvalue { i32, i1 } %101, 1
  br i1 %102, label %103, label %105, !prof !13

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 8
  store ptr null, ptr %104, align 4
  br label %165

105:                                              ; preds = %99
  %106 = load ptr, ptr %0, align 4
  %107 = extractvalue { i32, i1 } %101, 0
  %108 = call noalias ptr @devm_kmalloc(ptr noundef %106, i32 noundef %107, i32 noundef 3520) #6
  %109 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 8
  store ptr %108, ptr %109, align 4
  %110 = icmp eq ptr %108, null
  br i1 %110, label %165, label %111

111:                                              ; preds = %105
  store i32 %100, ptr %77, align 4
  %112 = call ptr @of_get_next_child(ptr noundef nonnull %84, ptr noundef null) #6
  %113 = icmp eq ptr %112, null
  br i1 %113, label %152, label %114

114:                                              ; preds = %148, %111
  %115 = phi i32 [ %149, %148 ], [ 0, %111 ]
  %116 = phi ptr [ %150, %148 ], [ %112, %111 ]
  %117 = load ptr, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %118 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %116, ptr noundef nonnull @.str.22, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %119 = icmp sgt i32 %118, -1
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.23, ptr noundef nonnull %116) #7
  br label %146

122:                                              ; preds = %114
  %123 = getelementptr %struct.tegra_mc_timing, ptr %117, i32 %115
  %124 = load i32, ptr %2, align 4
  store i32 %124, ptr %123, align 4
  %125 = load ptr, ptr %39, align 4
  %126 = getelementptr inbounds %struct.tegra_mc_soc, ptr %125, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %127, i32 4) #6
  %129 = extractvalue { i32, i1 } %128, 1
  br i1 %129, label %130, label %132, !prof !13

130:                                              ; preds = %122
  %131 = getelementptr %struct.tegra_mc_timing, ptr %117, i32 %115, i32 1
  store ptr null, ptr %131, align 4
  br label %146

132:                                              ; preds = %122
  %133 = load ptr, ptr %0, align 4
  %134 = extractvalue { i32, i1 } %128, 0
  %135 = call noalias ptr @devm_kmalloc(ptr noundef %133, i32 noundef %134, i32 noundef 3520) #6
  %136 = getelementptr %struct.tegra_mc_timing, ptr %117, i32 %115, i32 1
  store ptr %135, ptr %136, align 4
  %137 = icmp eq ptr %135, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr %39, align 4
  %140 = getelementptr inbounds %struct.tegra_mc_soc, ptr %139, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %116, ptr noundef nonnull @.str.24, ptr noundef nonnull %135, i32 noundef %141, i32 noundef 0) #6
  %143 = icmp sgt i32 %142, -1
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.25, ptr noundef nonnull %116) #7
  br label %146

146:                                              ; preds = %144, %132, %130, %120
  %147 = phi i32 [ -12, %130 ], [ %142, %144 ], [ %118, %120 ], [ -12, %132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @of_node_put(ptr noundef nonnull %116) #6
  br label %165

148:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %149 = add i32 %115, 1
  %150 = call ptr @of_get_next_child(ptr noundef nonnull %84, ptr noundef nonnull %116) #6
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %114

152:                                              ; preds = %148, %111
  call void @of_node_put(ptr noundef nonnull %84) #6
  br label %159

153:                                              ; preds = %83
  %154 = load ptr, ptr %0, align 4
  %155 = getelementptr inbounds %struct.device, ptr %154, i32 0, i32 25
  %156 = load ptr, ptr %155, align 8
  %157 = call ptr @of_get_next_child(ptr noundef %156, ptr noundef nonnull %84) #6
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %83

159:                                              ; preds = %153, %152, %73
  %160 = load i32, ptr %77, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %163, ptr noundef nonnull @.str.21, i32 noundef %76) #7
  br label %164

164:                                              ; preds = %162, %159
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %168

165:                                              ; preds = %146, %105, %103
  %166 = phi i32 [ -12, %103 ], [ -12, %105 ], [ %147, %146 ]
  call void @of_node_put(ptr noundef nonnull %84) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %167 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.5, i32 noundef %166) #7
  br label %168

168:                                              ; preds = %165, %164, %8
  %169 = phi i32 [ %12, %8 ], [ %166, %165 ], [ 0, %164 ]
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_mc_handle_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_mc_soc, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %8
  store i32 %13, ptr %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %97, label %15

15:                                               ; preds = %2
  %16 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #6
  %17 = icmp ult i32 %16, 32
  br i1 %17, label %18, label %94

18:                                               ; preds = %15
  %19 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 1
  %20 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 2
  %21 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 3
  %22 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 4
  %23 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 5
  %24 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 6
  br label %25

25:                                               ; preds = %90, %18
  %26 = phi i32 [ %16, %18 ], [ %92, %90 ]
  %27 = getelementptr [32 x ptr], ptr @tegra_mc_status_names, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @.str.26, ptr %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !8
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !9
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @.str.28, ptr @.str.27
  %37 = and i32 %33, 131072
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.30, ptr @.str.29
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.tegra_mc_soc, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.tegra_mc_soc, ptr %40, i32 0, i32 6
  %46 = load i8, ptr %45, align 4
  %47 = trunc i32 %33 to i8
  %48 = and i8 %46, %47
  %49 = load ptr, ptr %40, align 4
  %50 = zext i8 %48 to i32
  br label %51

51:                                               ; preds = %59, %44
  %52 = phi i32 [ 0, %44 ], [ %60, %59 ]
  %53 = getelementptr %struct.tegra_mc_client, ptr %49, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %50
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr %struct.tegra_mc_client, ptr %49, i32 %52, i32 1
  %58 = load ptr, ptr %57, align 4
  br label %62

59:                                               ; preds = %51
  %60 = add nuw i32 %52, 1
  %61 = icmp eq i32 %60, %42
  br i1 %61, label %62, label %51

62:                                               ; preds = %59, %56, %25
  %63 = phi ptr [ %58, %56 ], [ @.str.26, %25 ], [ @.str.26, %59 ]
  %64 = and i32 %33, 1879048192
  %65 = lshr exact i32 %64, 28
  %66 = getelementptr [8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq i32 %64, 1610612736
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  store i8 32, ptr %5, align 1
  store i8 91, ptr %19, align 1
  %70 = and i32 %33, 134217728
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i8 45, i8 82
  store i8 %72, ptr %20, align 1
  %73 = and i32 %33, 67108864
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i8 45, i8 87
  store i8 %75, ptr %21, align 1
  %76 = and i32 %33, 33554432
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i8 83, i8 45
  store i8 %78, ptr %22, align 1
  store i8 93, ptr %23, align 1
  store i8 0, ptr %24, align 1
  br label %80

79:                                               ; preds = %62
  store i8 0, ptr %5, align 1
  br label %80

80:                                               ; preds = %79, %69
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr i8, ptr %81, i32 12
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !9
  %84 = load i32, ptr %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, ptr %4, align 4
  %86 = call i32 @___ratelimit(ptr noundef nonnull @tegra30_mc_handle_irq._rs, ptr noundef nonnull @__func__.tegra30_mc_handle_irq) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.31, ptr noundef %63, ptr noundef nonnull %39, ptr noundef nonnull %36, ptr noundef nonnull %4, ptr noundef %30, ptr noundef %67, ptr noundef nonnull %5) #7
  br label %90

90:                                               ; preds = %88, %80
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %91 = add i32 %26, 1
  %92 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %91) #6
  %93 = icmp ult i32 %92, 32
  br i1 %93, label %25, label %94

94:                                               ; preds = %90, %15
  %95 = load i32, ptr %3, align 4
  %96 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %95) #6, !srcloc !10
  br label %97

97:                                               ; preds = %94, %2
  %98 = phi i32 [ 1, %94 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_init() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_mc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 148, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %211, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 12
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %9 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  store ptr %8, ptr %9, align 4
  store ptr %2, ptr %3, align 4
  %10 = getelementptr inbounds %struct.tegra_mc_soc, ptr %8, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi i64 [ %16, %13 ], [ -1, %5 ]
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %19, ptr %20, align 4
  %21 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef %18) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef %18) #6
  br label %28

25:                                               ; preds = %17
  %26 = icmp slt i32 %21, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %21) #7
  br label %211

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 7
  store i32 30, ptr %29, align 4
  %30 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %31 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %30) #6
  %32 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = ptrtoint ptr %31 to i32
  br label %211

36:                                               ; preds = %28
  %37 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef null) #6
  %38 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 13
  store ptr %37, ptr %38, align 4
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr inbounds %struct.tegra_mc_soc, ptr %39, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %96, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = tail call i32 %44(ptr noundef nonnull %3) #6
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %211, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr inbounds %struct.tegra_mc_soc, ptr %50, i32 0, i32 13
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %96, label %54

54:                                               ; preds = %49, %43
  %55 = phi ptr [ %50, %49 ], [ %39, %43 ]
  %56 = phi ptr [ %52, %49 ], [ %41, %43 ]
  %57 = getelementptr inbounds %struct.tegra_mc_ops, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %96, label %60

60:                                               ; preds = %54
  %61 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %62 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = icmp slt i32 %61, 0
  br i1 %63, label %211, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr inbounds %struct.tegra_mc_soc, ptr %65, i32 0, i32 6
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %71, !prof !13

69:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 762, i32 noundef 9, ptr noundef nonnull @.str.35) #6
  %70 = load ptr, ptr %9, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ %65, %64 ]
  %73 = getelementptr inbounds %struct.tegra_mc_soc, ptr %72, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %32, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #6, !srcloc !10
  %77 = load i32, ptr %62, align 4
  %78 = load ptr, ptr %9, align 4
  %79 = getelementptr inbounds %struct.tegra_mc_soc, ptr %78, i32 0, i32 13
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.tegra_mc_ops, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load ptr, ptr %2, align 4
  br label %88

88:                                               ; preds = %86, %71
  %89 = phi ptr [ %87, %86 ], [ %84, %71 ]
  %90 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %77, ptr noundef %82, ptr noundef null, i32 noundef 0, ptr noundef %89, ptr noundef nonnull %3) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %9, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef %95, i32 noundef %90) #7
  br label %211

96:                                               ; preds = %92, %54, %49, %36
  %97 = phi ptr [ %93, %92 ], [ %55, %54 ], [ %50, %49 ], [ %39, %36 ]
  %98 = getelementptr inbounds %struct.tegra_mc_soc, ptr %97, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %115, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 10
  store ptr @tegra_mc_reset_ops, ptr %102, align 4
  %103 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 10, i32 1
  store ptr null, ptr %103, align 4
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 25
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 10, i32 5
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 10, i32 6
  store i32 1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.tegra_mc_soc, ptr %97, i32 0, i32 11
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 10, i32 8
  store i32 %110, ptr %111, align 4
  %112 = tail call i32 @reset_controller_register(ptr noundef %102) #6
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %112) #7
  br label %115

115:                                              ; preds = %114, %101, %96
  %116 = load ptr, ptr %3, align 4
  %117 = tail call zeroext i1 @device_property_present(ptr noundef %116, ptr noundef nonnull @.str.46) #6
  br i1 %117, label %118, label %189

118:                                              ; preds = %115
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr inbounds %struct.tegra_mc_soc, ptr %119, i32 0, i32 12
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %189, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %3, align 4
  %125 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11
  %126 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11, i32 8
  store ptr %124, ptr %126, align 4
  %127 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11, i32 11
  store ptr %125, ptr %127, align 4
  %128 = load ptr, ptr %120, align 4
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11, i32 2
  store ptr %129, ptr %130, align 4
  %131 = load ptr, ptr %120, align 4
  %132 = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11, i32 3
  store ptr %133, ptr %134, align 4
  %135 = load ptr, ptr %120, align 4
  %136 = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11, i32 7
  store ptr %137, ptr %138, align 4
  %139 = tail call i32 @icc_provider_add(ptr noundef %125) #6
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %185

141:                                              ; preds = %123
  %142 = tail call ptr @icc_node_create(i32 noundef 1000) #6
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = ptrtoint ptr %142 to i32
  br label %182

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.icc_node, ptr %142, i32 0, i32 1
  store ptr @.str.47, ptr %147, align 4
  tail call void @icc_node_add(ptr noundef %142, ptr noundef %125) #6
  %148 = tail call i32 @icc_link_create(ptr noundef %142, i32 noundef 1001) #6
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %146
  %151 = load ptr, ptr %9, align 4
  %152 = getelementptr inbounds %struct.tegra_mc_soc, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %189, label %161

155:                                              ; preds = %171
  %156 = add nuw i32 %163, 1
  %157 = load ptr, ptr %9, align 4
  %158 = getelementptr inbounds %struct.tegra_mc_soc, ptr %157, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %155, %150
  %162 = phi ptr [ %157, %155 ], [ %151, %150 ]
  %163 = phi i32 [ %156, %155 ], [ 0, %150 ]
  %164 = load ptr, ptr %162, align 4
  %165 = getelementptr %struct.tegra_mc_client, ptr %164, i32 %163
  %166 = load i32, ptr %165, align 4
  %167 = tail call ptr @icc_node_create(i32 noundef %166) #6
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = ptrtoint ptr %167 to i32
  br label %179

171:                                              ; preds = %161
  %172 = load ptr, ptr %9, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr %struct.tegra_mc_client, ptr %173, i32 %163, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.icc_node, ptr %167, i32 0, i32 1
  store ptr %175, ptr %176, align 4
  tail call void @icc_node_add(ptr noundef %167, ptr noundef %125) #6
  %177 = tail call i32 @icc_link_create(ptr noundef %167, i32 noundef 1000) #6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %155, label %179

179:                                              ; preds = %171, %169, %146
  %180 = phi i32 [ %148, %146 ], [ %170, %169 ], [ %177, %171 ]
  %181 = tail call i32 @icc_nodes_remove(ptr noundef %125) #6
  br label %182

182:                                              ; preds = %179, %144
  %183 = phi i32 [ %145, %144 ], [ %180, %179 ]
  %184 = tail call i32 @icc_provider_del(ptr noundef %125) #6
  br label %185

185:                                              ; preds = %182, %123
  %186 = phi i32 [ %183, %182 ], [ %139, %123 ]
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %186) #7
  br label %189

189:                                              ; preds = %188, %185, %155, %150, %118, %115
  %190 = load ptr, ptr %9, align 4
  %191 = getelementptr inbounds %struct.tegra_mc_soc, ptr %190, i32 0, i32 7
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %189
  %195 = tail call ptr @tegra_smmu_probe(ptr noundef %2, ptr noundef nonnull %192, ptr noundef nonnull %3) #6
  %196 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 1
  store ptr %195, ptr %196, align 4
  %197 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = ptrtoint ptr %195 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %199) #7
  store ptr null, ptr %196, align 4
  br label %200

200:                                              ; preds = %198, %194, %189
  %201 = load ptr, ptr %9, align 4
  %202 = getelementptr inbounds %struct.tegra_mc_soc, ptr %201, i32 0, i32 7
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = tail call ptr @tegra_gart_probe(ptr noundef %2, ptr noundef nonnull %3) #6
  %207 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 2
  store ptr %206, ptr %207, align 4
  %208 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = ptrtoint ptr %206 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %210) #7
  store ptr null, ptr %207, align 4
  br label %211

211:                                              ; preds = %209, %205, %200, %94, %60, %46, %34, %27, %1
  %212 = phi i32 [ %21, %27 ], [ %35, %34 ], [ %90, %94 ], [ -12, %1 ], [ %47, %46 ], [ %61, %60 ], [ 0, %205 ], [ 0, %209 ], [ 0, %200 ]
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_mc_sync_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 11, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @icc_sync_state(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_smmu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gart_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_hotreset_assert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.tegra_mc_reset, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %69, label %12

20:                                               ; preds = %12
  %21 = getelementptr %struct.tegra_mc_reset, ptr %11, i32 %13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef %3, ptr noundef nonnull %21) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %25, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef %3, ptr noundef nonnull %21) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %3, align 4
  %43 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.41, ptr noundef %43, i32 noundef %39) #7
  br label %69

44:                                               ; preds = %38, %34
  %45 = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %25, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = tail call zeroext i1 %46(ptr noundef %3, ptr noundef nonnull %21) #6
  br i1 %49, label %60, label %50

50:                                               ; preds = %56, %48
  %51 = phi i32 [ %57, %56 ], [ 500, %48 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr %3, align 4
  %55 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.42, ptr noundef %55) #7
  br label %69

56:                                               ; preds = %50
  %57 = add nsw i32 %51, -1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %58 = load ptr, ptr %45, align 4
  %59 = tail call zeroext i1 %58(ptr noundef %3, ptr noundef nonnull %21) #6
  br i1 %59, label %60, label %50

60:                                               ; preds = %56, %48, %44
  %61 = load ptr, ptr %25, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = tail call i32 %61(ptr noundef %3, ptr noundef nonnull %21) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %3, align 4
  %68 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.43, ptr noundef %68, i32 noundef %64) #7
  br label %69

69:                                               ; preds = %66, %63, %60, %53, %41, %31, %23, %20, %17, %2
  %70 = phi i32 [ %39, %41 ], [ -16, %53 ], [ %64, %66 ], [ -19, %20 ], [ -19, %23 ], [ 0, %31 ], [ 0, %63 ], [ 0, %60 ], [ -19, %2 ], [ -19, %17 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_hotreset_deassert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.tegra_mc_reset, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %47, label %12

20:                                               ; preds = %12
  %21 = getelementptr %struct.tegra_mc_reset, ptr %11, i32 %13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef %3, ptr noundef nonnull %21) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 4
  %36 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.44, ptr noundef %36, i32 noundef %32) #7
  br label %47

37:                                               ; preds = %31, %27
  %38 = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %25, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %39(ptr noundef %3, ptr noundef nonnull %21) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 4
  %46 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.45, ptr noundef %46, i32 noundef %42) #7
  br label %47

47:                                               ; preds = %44, %41, %37, %34, %23, %20, %17, %2
  %48 = phi i32 [ %32, %34 ], [ %42, %44 ], [ -19, %20 ], [ -19, %23 ], [ 0, %41 ], [ 0, %37 ], [ -19, %2 ], [ -19, %17 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_hotreset_status(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.tegra_mc_reset, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %31, label %12

20:                                               ; preds = %12
  %21 = getelementptr %struct.tegra_mc_reset, ptr %11, i32 %13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %3, ptr noundef nonnull %21) #6
  br label %31

31:                                               ; preds = %27, %23, %20, %17, %2
  %32 = phi i32 [ %30, %27 ], [ -19, %20 ], [ -19, %23 ], [ -19, %2 ], [ -19, %17 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_mc_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %3) #6
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_mc_ops, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %3) #6
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], [ 0, %1 ]
  ret i32 %16
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 5010848}
!10 = !{i64 5010430}
!11 = !{i64 888844, i64 888871, i64 888893, i64 888921}
!12 = !{i64 889252, i64 889279, i64 889312, i64 889333, i64 889360, i64 889386}
!13 = !{!"branch_weights", i32 1, i32 2000}
