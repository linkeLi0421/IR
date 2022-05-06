; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-pltfm.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pltfm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_clk_get_max_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_clk_get_max_clock\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_clk_get_max_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_get_property\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_init\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_free\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_register\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_resume\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_pltfm_pmops:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_pltfm_pmops\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_pltfm_pmops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [56 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }

@__kstrtab_sdhci_pltfm_clk_get_max_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_clk_get_max_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_clk_get_max_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_clk_get_max_clock to i32), ptr @__kstrtab_sdhci_pltfm_clk_get_max_clock, ptr @__kstrtabns_sdhci_pltfm_clk_get_max_clock }, section "___ksymtab_gpl+sdhci_pltfm_clk_get_max_clock", align 4
@.str = private unnamed_addr constant [17 x i8] c"sdhci,auto-cmd12\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sdhci,1-bit-only\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"broken-cd\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"no-1-8-v\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"keep-power-in-suspend\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"enable-sdio-wakeup\00", align 1
@__kstrtab_sdhci_get_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_get_property = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_get_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_get_property to i32), ptr @__kstrtab_sdhci_get_property, ptr @__kstrtabns_sdhci_get_property }, section "___ksymtab_gpl+sdhci_get_property", align 4
@sdhci_pltfm_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"%s failed %d\0A\00", align 1
@__func__.sdhci_pltfm_init = private unnamed_addr constant [17 x i8] c"sdhci_pltfm_init\00", align 1
@__kstrtab_sdhci_pltfm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_init to i32), ptr @__kstrtab_sdhci_pltfm_init, ptr @__kstrtabns_sdhci_pltfm_init }, section "___ksymtab_gpl+sdhci_pltfm_init", align 4
@__kstrtab_sdhci_pltfm_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_free = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_free to i32), ptr @__kstrtab_sdhci_pltfm_free, ptr @__kstrtabns_sdhci_pltfm_free }, section "___ksymtab_gpl+sdhci_pltfm_free", align 4
@__kstrtab_sdhci_pltfm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_register to i32), ptr @__kstrtab_sdhci_pltfm_register, ptr @__kstrtabns_sdhci_pltfm_register }, section "___ksymtab_gpl+sdhci_pltfm_register", align 4
@__kstrtab_sdhci_pltfm_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_unregister to i32), ptr @__kstrtab_sdhci_pltfm_unregister, ptr @__kstrtabns_sdhci_pltfm_unregister }, section "___ksymtab_gpl+sdhci_pltfm_unregister", align 4
@__kstrtab_sdhci_pltfm_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_suspend to i32), ptr @__kstrtab_sdhci_pltfm_suspend, ptr @__kstrtabns_sdhci_pltfm_suspend }, section "___ksymtab_gpl+sdhci_pltfm_suspend", align 4
@__kstrtab_sdhci_pltfm_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_resume to i32), ptr @__kstrtab_sdhci_pltfm_resume, ptr @__kstrtabns_sdhci_pltfm_resume }, section "___ksymtab_gpl+sdhci_pltfm_resume", align 4
@sdhci_pltfm_pmops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_pltfm_suspend, ptr @sdhci_pltfm_resume, ptr @sdhci_pltfm_suspend, ptr @sdhci_pltfm_resume, ptr @sdhci_pltfm_suspend, ptr @sdhci_pltfm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_sdhci_pltfm_pmops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_pltfm_pmops = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_pltfm_pmops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_pltfm_pmops to i32), ptr @__kstrtab_sdhci_pltfm_pmops, ptr @__kstrtabns_sdhci_pltfm_pmops }, section "___ksymtab_gpl+sdhci_pltfm_pmops", align 4
@__initcall__kmod_sdhci_pltfm__263_258_sdhci_pltfm_drv_init6 = internal global ptr @sdhci_pltfm_drv_init, section ".initcall6.init", align 4
@__exitcall_sdhci_pltfm_drv_exit = internal global ptr @sdhci_pltfm_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description264 = internal constant [60 x i8] c"sdhci_pltfm.description=SDHCI platform and OF driver helper\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [37 x i8] c"sdhci_pltfm.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [46 x i8] c"sdhci_pltfm.file=drivers/mmc/host/sdhci-pltfm\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [27 x i8] c"sdhci_pltfm.license=GPL v2\00", section ".modinfo", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"sdhci,wp-inverted\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"wp-inverted\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"fsl,p2020-rev1-esdhc\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"fsl,p2020-esdhc\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"fsl,p1010-esdhc\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"fsl,t4240-esdhc\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"fsl,mpc8536-esdhc\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"\016sdhci-pltfm: SDHCI platform and OF driver helper\0A\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_sdhci_pltfm_drv_exit, ptr @__initcall__kmod_sdhci_pltfm__263_258_sdhci_pltfm_drv_init6, ptr @__ksymtab_sdhci_get_property, ptr @__ksymtab_sdhci_pltfm_clk_get_max_clock, ptr @__ksymtab_sdhci_pltfm_free, ptr @__ksymtab_sdhci_pltfm_init, ptr @__ksymtab_sdhci_pltfm_pmops, ptr @__ksymtab_sdhci_pltfm_register, ptr @__ksymtab_sdhci_pltfm_resume, ptr @__ksymtab_sdhci_pltfm_suspend, ptr @__ksymtab_sdhci_pltfm_unregister, ptr @sdhci_pltfm_drv_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_get_property(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str) #6
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 268435456
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1) #6
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %2, align 4
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %11
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 4194304
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.10) #6
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.11) #6
  br i1 %26, label %27, label %31

27:                                               ; preds = %25, %23
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 65536
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 32768
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, 4
  store i32 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %39, %37
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %43
  %49 = call i32 @of_device_is_compatible(ptr noundef nonnull %46, ptr noundef nonnull @.str.12) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %44, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, 32
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = call i32 @of_device_is_compatible(ptr noundef nonnull %46, ptr noundef nonnull @.str.13) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = call i32 @of_device_is_compatible(ptr noundef nonnull %46, ptr noundef nonnull @.str.14) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = call i32 @of_device_is_compatible(ptr noundef nonnull %46, ptr noundef nonnull @.str.15) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i32 @of_device_is_compatible(ptr noundef nonnull %46, ptr noundef nonnull @.str.16) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64, %61, %58, %55
  %68 = getelementptr inbounds %struct.sdhci_host, ptr %44, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 4096
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %64, %43
  %72 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 1
  %73 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef %72, i32 noundef 1) #6
  %74 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 19
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 1
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %75, %71
  %82 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br i1 %84, label %85, label %91

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.mmc_host, ptr %87, i32 0, i32 19
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 2
  store i32 %90, ptr %88, align 4
  br label %91

91:                                               ; preds = %85, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %44

8:                                                ; preds = %3
  %9 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = add i32 %2, 64
  %14 = tail call ptr @sdhci_alloc_host(ptr noundef %12, i32 noundef %13) #6
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %44

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 4
  store ptr %4, ptr %19, align 16
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 3
  store i32 %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr %12, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %25, %24 ], [ %22, %18 ]
  store ptr %27, ptr %14, align 64
  %28 = icmp eq ptr %1, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %1, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @sdhci_pltfm_ops, ptr %30
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 9
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sdhci_pltfm_data, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sdhci_pltfm_data, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  br label %42

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 9
  store ptr @sdhci_pltfm_ops, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %29
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %43, align 8
  br label %48

44:                                               ; preds = %16, %8, %6
  %45 = phi i32 [ %7, %6 ], [ %17, %16 ], [ %9, %8 ]
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.sdhci_pltfm_init, i32 noundef %45) #7
  %47 = inttoptr i32 %45 to ptr
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi ptr [ %47, %44 ], [ %14, %42 ]
  ret ptr %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_alloc_host(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_pltfm_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @sdhci_free_host(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_pltfm_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %14

8:                                                ; preds = %3
  tail call void @sdhci_get_property(ptr noundef %0)
  %9 = tail call i32 @sdhci_add_host(ptr noundef %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %13 = load ptr, ptr %12, align 8
  tail call void @sdhci_free_host(ptr noundef %13) #6
  br label %14

14:                                               ; preds = %11, %8, %6
  %15 = phi i32 [ %7, %6 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_pltfm_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef %10) #6
  %11 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = load ptr, ptr %2, align 8
  tail call void @sdhci_free_host(ptr noundef %12) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_pltfm_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 29
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 32
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %8, %1
  %18 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %22

22:                                               ; preds = %20, %17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_pltfm_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = load ptr, ptr %4, align 64
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call i32 @sdhci_resume_host(ptr noundef %3) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %15) #6
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %5, %8 ]
  %18 = phi i32 [ %12, %14 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %19

19:                                               ; preds = %16, %11, %1
  %20 = phi i32 [ 0, %11 ], [ %6, %1 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_pltfm_drv_init() #4 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal void @sdhci_pltfm_drv_exit() #5 section ".exit.text" {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 5123186}
!10 = !{i64 2153386164}
