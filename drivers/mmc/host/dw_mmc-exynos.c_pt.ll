; ModuleID = '/llk/IR/drivers/mmc/host/dw_mmc-exynos.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mci_drv_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.70, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dw_mci_exynos_priv_data = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@__initcall__kmod_dw_mmc_exynos__264_695_dw_mci_exynos_pltfm_driver_init6 = internal global ptr @dw_mci_exynos_pltfm_driver_init, section ".initcall6.init", align 4
@dw_mci_exynos_pltfm_driver = internal global %struct.platform_driver { ptr @dw_mci_exynos_probe, ptr @dw_mci_exynos_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_exynos_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_exynos_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dw_mci_exynos_pltfm_driver_exit = internal global ptr @dw_mci_exynos_pltfm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description265 = internal constant [68 x i8] c"dw_mmc_exynos.description=Samsung Specific DW-MSHC Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [59 x i8] c"dw_mmc_exynos.author=Thomas Abraham <thomas.ab@samsung.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file267 = internal constant [50 x i8] c"dw_mmc_exynos.file=drivers/mmc/host/dw_mmc-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [29 x i8] c"dw_mmc_exynos.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias269 = internal constant [42 x i8] c"dw_mmc_exynos.alias=platform:dwmmc_exynos\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"dwmmc_exynos\00", align 1
@dw_mci_exynos_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-dw-mshc-smu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-dw-mshc-smu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec8-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec_drv_data }, %struct.of_device_id zeroinitializer], align 4
@dw_mci_exynos_pmops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_exynos_suspend_noirq, ptr @dw_mci_exynos_resume_noirq, ptr @dw_mci_exynos_suspend_noirq, ptr @dw_mci_exynos_resume_noirq, ptr @dw_mci_exynos_suspend_noirq, ptr @dw_mci_exynos_resume_noirq, ptr @dw_mci_runtime_suspend, ptr @dw_mci_exynos_runtime_resume, ptr null }, align 4
@exynos_drv_data = internal constant %struct.dw_mci_drv_data { ptr @exynos_dwmmc_caps, i32 4, i32 1073741824, ptr @dw_mci_exynos_priv_init, ptr @dw_mci_exynos_set_ios, ptr @dw_mci_exynos_parse_dt, ptr @dw_mci_exynos_execute_tuning, ptr @dw_mci_exynos_prepare_hs400_tuning, ptr null, ptr null, ptr null }, align 4
@artpec_drv_data = internal constant %struct.dw_mci_drv_data { ptr null, i32 0, i32 1073741824, ptr @dw_mci_exynos_priv_init, ptr @dw_mci_exynos_set_ios, ptr @dw_mci_exynos_parse_dt, ptr @dw_mci_exynos_execute_tuning, ptr null, ptr null, ptr @dw_mci_exynos_set_data_timeout, ptr @dw_mci_exynos_get_drto_clks }, align 4
@exynos_dwmmc_caps = internal global [4 x i32] [i32 4160, i32 0, i32 0, i32 0], align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot configure HS400, unsupported chipset\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to set clk-rate %u error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"samsung,dw-mshc-ciu-div\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"samsung,dw-mshc-sdr-timing\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"samsung,dw-mshc-ddr-timing\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"samsung,dw-mshc-hs400-timing\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"samsung,read-strobe-delay\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"samsung,exynos4210-dw-mshc\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"samsung,exynos4412-dw-mshc\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"samsung,exynos5250-dw-mshc\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"samsung,exynos5420-dw-mshc\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"samsung,exynos5420-dw-mshc-smu\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"samsung,exynos7-dw-mshc\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"samsung,exynos7-dw-mshc-smu\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"axis,artpec8-dw-mshc\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"There is no candidates value about clksmpl!\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__exitcall_dw_mci_exynos_pltfm_driver_exit, ptr @__initcall__kmod_dw_mmc_exynos__264_695_dw_mci_exynos_pltfm_driver_init6, ptr @dw_mci_exynos_pltfm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_pltfm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_exynos_pltfm_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dw_mci_exynos_pltfm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_exynos_pltfm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @dw_mci_exynos_match, ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #6, !srcloc !8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #6, !srcloc !9
  %10 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %11 = tail call i32 @dw_mci_pltfm_register(ptr noundef %0, ptr noundef %7) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  %14 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #6, !srcloc !8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #6, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  br label %19

19:                                               ; preds = %18, %13, %1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  %3 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #6
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #6, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 -1, ptr elementtype(i32) %4) #6, !srcloc !11
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call i32 @dw_mci_pltfm_remove(ptr noundef %0) #6
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_priv_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %14 [
    i32 4, label %5
    i32 6, label %5
  ]

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #6, !srcloc !13
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #6, !srcloc !13
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 4620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 113) #6, !srcloc !13
  %13 = load i32, ptr %3, align 4
  br label %14

14:                                               ; preds = %5, %1
  %15 = phi i32 [ %4, %1 ], [ %13, %5 ]
  %16 = icmp ugt i32 %15, 2
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 392
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !14
  %22 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %3, i32 0, i32 9
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %18, align 8
  %24 = getelementptr i8, ptr %23, i32 384
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !14
  %26 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %3, i32 0, i32 8
  %27 = or i32 %25, 128
  store i32 %27, ptr %26, align 4
  %28 = load ptr, ptr %18, align 8
  %29 = getelementptr i8, ptr %28, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !13
  %30 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %3, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, ptr %22, align 4
  %35 = and i32 %34, 1023
  store i32 %35, ptr %30, align 4
  br label %36

36:                                               ; preds = %33, %17, %14
  %37 = load i32, ptr %3, align 4
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 50
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, 1
  store i32 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %3, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %49 = load i32, ptr %48, align 4
  %50 = udiv i32 %49, %47
  store i32 %50, ptr %48, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_exynos_set_ios(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  switch i8 %7, label %43 [
    i8 10, label %8
    i8 8, label %17
    i8 6, label %25
    i8 5, label %25
    i8 7, label %34
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -8
  %12 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 7
  %15 = or i32 %14, %11
  %16 = shl i32 %5, 1
  br label %46

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 3
  %23 = zext i1 %22 to i32
  %24 = shl i32 %5, %23
  br label %46

25:                                               ; preds = %2, %2
  %26 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -458753
  %29 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %28
  br label %46

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -458753
  %38 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or i32 %41, %37
  br label %46

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %34, %25, %17, %8
  %47 = phi i32 [ %5, %43 ], [ %5, %34 ], [ %5, %25 ], [ %16, %8 ], [ %24, %17 ]
  %48 = phi i32 [ %45, %43 ], [ %42, %34 ], [ %33, %25 ], [ %15, %8 ], [ %19, %17 ]
  %49 = load i32, ptr %4, align 4
  %50 = add i32 %49, -5
  %51 = icmp ult i32 %50, 3
  %52 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  br i1 %51, label %54, label %57

54:                                               ; preds = %46
  %55 = getelementptr i8, ptr %53, i32 168
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !14
  br label %60

57:                                               ; preds = %46
  %58 = getelementptr i8, ptr %53, i32 156
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !14
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  %62 = and i32 %61, -117899272
  %63 = or i32 %62, %48
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, -5
  %66 = icmp ult i32 %65, 3
  %67 = load ptr, ptr %52, align 8
  br i1 %66, label %68, label %70

68:                                               ; preds = %60
  %69 = getelementptr i8, ptr %67, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %63) #6, !srcloc !13
  br label %72

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %67, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %63) #6, !srcloc !13
  br label %72

72:                                               ; preds = %70, %68
  %73 = and i32 %48, 458752
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dw_mci_slot, ptr %77, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %80) #6
  br label %81

81:                                               ; preds = %79, %75, %72
  %82 = load ptr, ptr %3, align 8
  %83 = load i32, ptr %82, align 4
  switch i32 %83, label %89 [
    i32 7, label %84
    i32 2, label %84
    i32 1, label %84
    i32 0, label %84
  ]

84:                                               ; preds = %81, %81, %81, %81
  %85 = icmp eq i8 %7, 10
  br i1 %85, label %86, label %112

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.1) #7
  br label %112

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %82, i32 0, i32 8
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %82, i32 0, i32 9
  %93 = load i32, ptr %92, align 4
  switch i8 %7, label %103 [
    i8 10, label %94
    i8 6, label %101
  ]

94:                                               ; preds = %89
  %95 = or i32 %91, 1
  %96 = and i32 %93, -1024
  %97 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %82, i32 0, i32 7
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 1023
  %100 = or i32 %99, %96
  br label %105

101:                                              ; preds = %89
  %102 = and i32 %91, -256
  br label %105

103:                                              ; preds = %89
  %104 = and i32 %91, -2
  br label %105

105:                                              ; preds = %103, %101, %94
  %106 = phi i32 [ %95, %94 ], [ %102, %101 ], [ %104, %103 ]
  %107 = phi i32 [ %100, %94 ], [ %93, %101 ], [ %93, %103 ]
  %108 = load ptr, ptr %52, align 8
  %109 = getelementptr i8, ptr %108, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %106) #6, !srcloc !13
  %110 = load ptr, ptr %52, align 8
  %111 = getelementptr i8, ptr %110, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %107) #6, !srcloc !13
  br label %112

112:                                              ; preds = %105, %86, %84
  tail call fastcc void @dw_mci_exynos_adjust_clock(ptr noundef %0, i32 noundef %47)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_parse_dt(ptr nocapture noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 40, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %98, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.8) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.9) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 1, ptr %8, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.10) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 2, ptr %8, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.11) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 3, ptr %8, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.12) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 4, ptr %8, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.13) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 5, ptr %8, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.14) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 6, ptr %8, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.15) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 7, ptr %8, align 4
  br label %45

42:                                               ; preds = %38
  %43 = load i32, ptr %8, align 4
  switch i32 %43, label %45 [
    i32 1, label %49
    i32 0, label %44
  ]

44:                                               ; preds = %42
  br label %49

45:                                               ; preds = %42, %41
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %47 = load i32, ptr %3, align 4
  %48 = trunc i32 %47 to i8
  br label %49

49:                                               ; preds = %45, %44, %42
  %50 = phi i8 [ 1, %44 ], [ %48, %45 ], [ 3, %42 ]
  %51 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %8, i32 0, i32 1
  store i8 %50, ptr %51, align 4
  %52 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #6
  %53 = call i32 @llvm.smin.i32(i32 %52, i32 0) #6
  %54 = icmp sgt i32 %52, -1
  br i1 %54, label %55, label %98

55:                                               ; preds = %49
  %56 = load i32, ptr %2, align 8
  %57 = and i32 %56, 7
  %58 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 16
  %61 = and i32 %60, 458752
  %62 = or i32 %61, %57
  %63 = load i32, ptr %3, align 4
  %64 = shl i32 %63, 24
  %65 = and i32 %64, 117440512
  %66 = or i32 %62, %65
  %67 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %8, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #6
  %69 = call i32 @llvm.smin.i32(i32 %68, i32 0) #6
  %70 = icmp sgt i32 %68, -1
  br i1 %70, label %71, label %98

71:                                               ; preds = %55
  %72 = load i32, ptr %2, align 8
  %73 = and i32 %72, 7
  %74 = load i32, ptr %58, align 4
  %75 = shl i32 %74, 16
  %76 = and i32 %75, 458752
  %77 = or i32 %76, %73
  %78 = load i32, ptr %3, align 4
  %79 = shl i32 %78, 24
  %80 = and i32 %79, 117440512
  %81 = or i32 %77, %80
  %82 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %8, i32 0, i32 3
  store i32 %81, ptr %82, align 4
  %83 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #6
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %8, i32 0, i32 7
  %87 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %86, i32 noundef 1, i32 noundef 0) #6
  br label %88

88:                                               ; preds = %85, %71
  %89 = load i32, ptr %2, align 8
  %90 = and i32 %89, 7
  %91 = load i32, ptr %58, align 4
  %92 = shl i32 %91, 16
  %93 = and i32 %92, 458752
  %94 = or i32 %90, %93
  %95 = or i32 %94, 16777216
  %96 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %8, i32 0, i32 4
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  store ptr %8, ptr %97, align 8
  br label %98

98:                                               ; preds = %88, %55, %49, %1
  %99 = phi i32 [ 0, %88 ], [ -12, %1 ], [ %53, %49 ], [ %69, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_execute_tuning(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr %6, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %9, 3
  %11 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  br i1 %10, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %12, i32 168
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !14
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %12, i32 156
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !14
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 7
  br label %23

23:                                               ; preds = %54, %19
  %24 = phi i8 [ 0, %19 ], [ %59, %54 ]
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #6, !srcloc !13
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -5
  %30 = icmp ult i32 %29, 3
  %31 = load ptr, ptr %11, align 8
  br i1 %30, label %32, label %35

32:                                               ; preds = %23
  %33 = getelementptr i8, ptr %31, i32 168
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !14
  br label %38

35:                                               ; preds = %23
  %36 = getelementptr i8, ptr %31, i32 156
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !14
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %34, %32 ], [ %37, %35 ]
  %40 = trunc i32 %39 to i8
  %41 = add i8 %40, 1
  %42 = and i32 %39, -8
  %43 = and i8 %41, 7
  %44 = zext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = load i32, ptr %27, align 4
  %47 = add i32 %46, -5
  %48 = icmp ult i32 %47, 3
  %49 = load ptr, ptr %11, align 8
  br i1 %48, label %50, label %52

50:                                               ; preds = %38
  %51 = getelementptr i8, ptr %49, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %45) #6, !srcloc !13
  br label %54

52:                                               ; preds = %38
  %53 = getelementptr i8, ptr %49, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %45) #6, !srcloc !13
  br label %54

54:                                               ; preds = %52, %50
  %55 = tail call i32 @mmc_send_tuning(ptr noundef %7, i32 noundef %1, ptr noundef null) #6
  %56 = icmp eq i32 %55, 0
  %57 = shl nuw i8 1, %43
  %58 = select i1 %56, i8 %57, i8 0
  %59 = or i8 %58, %24
  %60 = icmp eq i8 %22, %43
  br i1 %60, label %61, label %23

61:                                               ; preds = %54
  %62 = and i8 %59, -57
  %63 = icmp eq i8 %62, -57
  br i1 %63, label %140, label %64

64:                                               ; preds = %61
  %65 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 7) #6
  %66 = and i8 %65, -57
  %67 = icmp eq i8 %66, -57
  br i1 %67, label %140, label %68

68:                                               ; preds = %64
  %69 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 6) #6
  %70 = and i8 %69, -57
  %71 = icmp eq i8 %70, -57
  br i1 %71, label %140, label %72

72:                                               ; preds = %68
  %73 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 5) #6
  %74 = and i8 %73, -57
  %75 = icmp eq i8 %74, -57
  br i1 %75, label %140, label %76

76:                                               ; preds = %72
  %77 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 4) #6
  %78 = and i8 %77, -57
  %79 = icmp eq i8 %78, -57
  br i1 %79, label %140, label %80

80:                                               ; preds = %76
  %81 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 3) #6
  %82 = and i8 %81, -57
  %83 = icmp eq i8 %82, -57
  br i1 %83, label %140, label %84

84:                                               ; preds = %80
  %85 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 2) #6
  %86 = and i8 %85, -57
  %87 = icmp eq i8 %86, -57
  br i1 %87, label %140, label %88

88:                                               ; preds = %84
  %89 = tail call i8 @llvm.fshl.i8(i8 %59, i8 %59, i8 1) #6
  %90 = and i8 %89, -57
  %91 = icmp eq i8 %90, -57
  br i1 %91, label %140, label %92

92:                                               ; preds = %88
  %93 = and i8 %59, -125
  %94 = icmp eq i8 %93, -125
  br i1 %94, label %140, label %95

95:                                               ; preds = %92
  %96 = and i8 %65, -125
  %97 = icmp eq i8 %96, -125
  br i1 %97, label %140, label %98

98:                                               ; preds = %95
  %99 = and i8 %69, -125
  %100 = icmp eq i8 %99, -125
  br i1 %100, label %140, label %101

101:                                              ; preds = %98
  %102 = and i8 %73, -125
  %103 = icmp eq i8 %102, -125
  br i1 %103, label %140, label %104

104:                                              ; preds = %101
  %105 = and i8 %77, -125
  %106 = icmp eq i8 %105, -125
  br i1 %106, label %140, label %107

107:                                              ; preds = %104
  %108 = and i8 %81, -125
  %109 = icmp eq i8 %108, -125
  br i1 %109, label %140, label %110

110:                                              ; preds = %107
  %111 = and i8 %85, -125
  %112 = icmp eq i8 %111, -125
  br i1 %112, label %140, label %113

113:                                              ; preds = %110
  %114 = and i8 %89, -125
  %115 = icmp eq i8 %114, -125
  br i1 %115, label %140, label %116

116:                                              ; preds = %113
  %117 = and i8 %59, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = and i8 %65, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = and i8 %69, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = and i8 %73, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = and i8 %77, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = and i8 %81, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = and i8 %85, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = and i8 %89, 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %167, label %140

140:                                              ; preds = %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %88, %84, %80, %76, %72, %68, %64, %61
  %141 = phi i32 [ 7, %137 ], [ 7, %88 ], [ 6, %84 ], [ 5, %80 ], [ 4, %76 ], [ 3, %72 ], [ 2, %68 ], [ 1, %64 ], [ 0, %61 ], [ 7, %113 ], [ 6, %110 ], [ 5, %107 ], [ 4, %104 ], [ 3, %101 ], [ 2, %98 ], [ 1, %95 ], [ 0, %92 ], [ 6, %134 ], [ 5, %131 ], [ 4, %128 ], [ 3, %125 ], [ 2, %122 ], [ 1, %119 ], [ 0, %116 ]
  %142 = load ptr, ptr %5, align 8
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, -5
  %145 = icmp ult i32 %144, 3
  %146 = load ptr, ptr %11, align 8
  br i1 %145, label %147, label %150

147:                                              ; preds = %140
  %148 = getelementptr i8, ptr %146, i32 168
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #6, !srcloc !14
  br label %153

150:                                              ; preds = %140
  %151 = getelementptr i8, ptr %146, i32 156
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #6, !srcloc !14
  br label %153

153:                                              ; preds = %150, %147
  %154 = phi i32 [ %149, %147 ], [ %152, %150 ]
  %155 = and i32 %154, -8
  %156 = or i32 %155, %141
  %157 = load i32, ptr %142, align 4
  %158 = add i32 %157, -5
  %159 = icmp ult i32 %158, 3
  %160 = load ptr, ptr %11, align 8
  br i1 %159, label %161, label %163

161:                                              ; preds = %153
  %162 = getelementptr i8, ptr %160, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %156) #6, !srcloc !13
  br label %165

163:                                              ; preds = %153
  %164 = getelementptr i8, ptr %160, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %156) #6, !srcloc !13
  br label %165

165:                                              ; preds = %163, %161
  %166 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %6, i32 0, i32 5
  store i32 %141, ptr %166, align 4
  br label %169

167:                                              ; preds = %137
  %168 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.16) #7
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ 0, %165 ], [ -5, %167 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_prepare_hs400_tuning(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  br i1 %9, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %11, i32 168
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !14
  br label %18

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %11, i32 156
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !14
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = and i32 %19, -117899272
  %21 = or i32 %20, %6
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, -5
  %24 = icmp ult i32 %23, 3
  %25 = load ptr, ptr %10, align 8
  br i1 %24, label %26, label %28

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %25, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %21) #6, !srcloc !13
  br label %30

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %25, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %21) #6, !srcloc !13
  br label %30

30:                                               ; preds = %28, %26
  %31 = and i32 %6, 458752
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 42
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dw_mci_slot, ptr %35, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %38) #6
  br label %39

39:                                               ; preds = %37, %33, %30
  %40 = load i32, ptr %1, align 4
  %41 = shl i32 %40, 1
  tail call fastcc void @dw_mci_exynos_adjust_clock(ptr noundef %0, i32 noundef %41)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mci_exynos_adjust_clock(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 41
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.umax.i32(i32 %1, i32 50000000)
  %12 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %4, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %49, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %4, align 4
  switch i32 %16, label %26 [
    i32 1, label %34
    i32 0, label %17
    i32 5, label %18
    i32 6, label %18
    i32 7, label %18
  ]

17:                                               ; preds = %15
  br label %34

18:                                               ; preds = %15, %15, %15
  %19 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 168
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !14
  %23 = lshr i32 %22, 24
  %24 = and i32 %23, 7
  %25 = add nuw nsw i32 %24, 1
  br label %34

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 156
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !14
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 7
  %33 = add nuw nsw i32 %32, 1
  br label %34

34:                                               ; preds = %26, %18, %17, %15
  %35 = phi i32 [ 2, %17 ], [ %25, %18 ], [ %33, %26 ], [ 4, %15 ]
  %36 = load ptr, ptr %7, align 8
  %37 = mul i32 %35, %11
  %38 = tail call i32 @clk_set_rate(ptr noundef %36, i32 noundef %37) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.2, i32 noundef %37, i32 noundef %38) #7
  br label %43

43:                                               ; preds = %40, %34
  %44 = load ptr, ptr %7, align 8
  %45 = tail call i32 @clk_get_rate(ptr noundef %44) #6
  %46 = udiv i32 %45, %35
  %47 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  store i32 %46, ptr %47, align 4
  store i32 %11, ptr %12, align 4
  %48 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 33
  store i32 0, ptr %48, align 8
  br label %49

49:                                               ; preds = %43, %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_exynos_set_data_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !14
  %7 = shl i32 %6, 1
  %8 = and i32 %7, 510
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 %8
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, %11
  %16 = add nuw i64 %15, 999999999
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %16, i32 0) #8, !srcloc !16
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = extractvalue { i64, i32 } %17, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %16, i64 %18, i32 %19) #8, !srcloc !17
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = lshr i64 %21, 29
  %23 = zext i32 %10 to i64
  %24 = add nsw i64 %23, -1
  %25 = add nuw nsw i64 %24, %22
  %26 = icmp ult i64 %25, 4294967296
  br i1 %26, label %27, label %31, !prof !18

27:                                               ; preds = %2
  %28 = trunc i64 %25 to i32
  %29 = udiv i32 %28, %10
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %2
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %25) #8, !srcloc !19
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %36 = add i64 %35, -117440499
  %37 = icmp ult i64 %36, -117440498
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = trunc i64 %35 to i32
  %40 = udiv i32 %39, 16777215
  %41 = add nuw nsw i32 %40, 1
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %42, 255
  %44 = mul nuw nsw i32 %41, 16777215
  %45 = xor i32 %44, -1
  %46 = add i32 %45, %39
  %47 = shl i32 %46, 8
  %48 = and i32 %47, -2048
  %49 = or i32 %48, %43
  br label %50

50:                                               ; preds = %38, %34
  %51 = phi i32 [ %49, %38 ], [ -1, %34 ]
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_get_drto_clks(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !14
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 7
  %8 = mul nuw nsw i32 %7, 16777215
  %9 = and i32 %6, 16777208
  %10 = or i32 %9, -16777215
  %11 = add nsw i32 %10, %8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_suspend_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !9
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_resume_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 39
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load i32, ptr %5, align 4
  %10 = add i32 %9, -5
  %11 = icmp ult i32 %10, 3
  %12 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %13, i32 168
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !14
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %13, i32 156
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !14
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %25, -5
  %27 = icmp ult i32 %26, 3
  %28 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  br i1 %27, label %30, label %32

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %29, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %21) #6, !srcloc !13
  br label %34

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %29, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %21) #6, !srcloc !13
  br label %34

34:                                               ; preds = %32, %30, %20
  %35 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #6
  br label %36

36:                                               ; preds = %34, %1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @dw_mci_runtime_resume(ptr noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 39
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %18 [
    i32 4, label %10
    i32 6, label %10
  ]

10:                                               ; preds = %6, %6
  %11 = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #6, !srcloc !13
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr i8, ptr %14, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1) #6, !srcloc !13
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr i8, ptr %16, i32 4620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 113) #6, !srcloc !13
  br label %18

18:                                               ; preds = %10, %6, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 558487, i64 2148048458, i64 2148048484, i64 2148048531, i64 2148048553, i64 2148048581, i64 2148048601}
!9 = !{i64 2148059873, i64 2148059899, i64 2148059928, i64 2148059962, i64 2148059993, i64 2148060016}
!10 = !{i64 2148059380}
!11 = !{i64 545056, i64 545081, i64 545103, i64 545119, i64 545131, i64 545151, i64 545175, i64 545191, i64 545203}
!12 = !{i64 2148059506}
!13 = !{i64 5214417}
!14 = !{i64 5214835}
!15 = !{!"auto-init"}
!16 = !{i64 421345, i64 421372, i64 421394, i64 421422}
!17 = !{i64 421753, i64 421780, i64 421813, i64 421834, i64 421861, i64 421887}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2147906889, i64 2147907169, i64 2147907503, i64 2147907837}
