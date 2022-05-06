; ModuleID = '/llk/IR/drivers/mmc/host/dw_mmc-rockchip.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-rockchip.c"
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
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dw_mci_rockchip_priv_data = type { ptr, ptr, i32, i32 }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.range_t = type { i32, i32 }

@__initcall__kmod_dw_mmc_rockchip__264_383_dw_mci_rockchip_pltfm_driver_init6 = internal global ptr @dw_mci_rockchip_pltfm_driver_init, section ".initcall6.init", align 4
@dw_mci_rockchip_pltfm_driver = internal global %struct.platform_driver { ptr @dw_mci_rockchip_probe, ptr @dw_mci_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_rockchip_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_rockchip_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dw_mci_rockchip_pltfm_driver_exit = internal global ptr @dw_mci_rockchip_pltfm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author265 = internal constant [56 x i8] c"dw_mmc_rockchip.author=Addy Ke <addy.ke@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [71 x i8] c"dw_mmc_rockchip.description=Rockchip Specific DW-MSHC Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_alias267 = internal constant [46 x i8] c"dw_mmc_rockchip.alias=platform:dwmmc_rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [54 x i8] c"dw_mmc_rockchip.file=drivers/mmc/host/dw_mmc-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [31 x i8] c"dw_mmc_rockchip.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"dwmmc_rockchip\00", align 1
@dw_mci_rockchip_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk2928_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_drv_data }, %struct.of_device_id zeroinitializer], align 4
@dw_mci_rockchip_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_runtime_suspend, ptr @dw_mci_runtime_resume, ptr null }, align 4
@rk2928_drv_data = internal constant %struct.dw_mci_drv_data { ptr null, i32 0, i32 0, ptr @dw_mci_rockchip_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rk3288_drv_data = internal constant %struct.dw_mci_drv_data { ptr null, i32 0, i32 1073741824, ptr @dw_mci_rockchip_init, ptr @dw_mci_rk3288_set_ios, ptr @dw_mci_rk3288_parse_dt, ptr @dw_mci_rk3288_execute_tuning, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"rockchip,rk3288-dw-mshc\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to set rate %uHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"rockchip,desired-num-phases\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"rockchip,default-sample-phase\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ciu-drive\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ciu-sample\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Tuning clock (sample_clk) not defined.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"All phases bad!\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"All phases work, using default phase %d.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Successfully tuned phase to %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias267, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_dw_mci_rockchip_pltfm_driver_exit, ptr @__initcall__kmod_dw_mmc_rockchip__264_383_dw_mci_rockchip_pltfm_driver_init6, ptr @dw_mci_rockchip_pltfm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_pltfm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_rockchip_pltfm_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dw_mci_rockchip_pltfm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_rockchip_pltfm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_match_node(ptr noundef nonnull @dw_mci_rockchip_match, ptr noundef nonnull %4) #6
  %8 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #6, !srcloc !8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #6, !srcloc !9
  %12 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #6
  %13 = tail call i32 @dw_mci_pltfm_register(ptr noundef %0, ptr noundef %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %6
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  %16 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #6, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #6, !srcloc !11
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  br label %23

21:                                               ; preds = %6
  %22 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #6
  br label %23

23:                                               ; preds = %21, %20, %15, %1
  %24 = phi i32 [ 0, %21 ], [ -19, %1 ], [ %13, %15 ], [ %13, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 54
  store i32 8, ptr %2, align 8
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.1) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mci_rk3288_set_ios(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %7
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 1, %15 ], [ 2, %11 ]
  %18 = shl i32 %5, %17
  %19 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 41
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %18) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef %26) #7
  br label %27

27:                                               ; preds = %23, %16
  %28 = load ptr, ptr %19, align 8
  %29 = tail call i32 @clk_get_rate(ptr noundef %28) #6
  %30 = lshr i32 %29, 1
  %31 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 32
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  store i32 %30, ptr %31, align 4
  %35 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 33
  store i32 0, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %42 = load i8, ptr %41, align 4
  %43 = icmp ult i8 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %4, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @clk_set_phase(ptr noundef %38, i32 noundef %46) #6
  br label %48

48:                                               ; preds = %44, %40, %36
  %49 = load ptr, ptr %4, align 4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %62, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %53 = load i8, ptr %52, align 4
  switch i8 %53, label %59 [
    i8 8, label %54
    i8 6, label %58
    i8 9, label %58
  ]

54:                                               ; preds = %51
  %55 = load i8, ptr %8, align 1
  %56 = icmp eq i8 %55, 3
  %57 = select i1 %56, i32 180, i32 90
  br label %59

58:                                               ; preds = %51, %51
  br label %59

59:                                               ; preds = %58, %54, %51
  %60 = phi i32 [ 90, %51 ], [ 180, %58 ], [ %57, %54 ]
  %61 = tail call i32 @clk_set_phase(ptr noundef %49, i32 noundef %60) #6
  br label %62

62:                                               ; preds = %59, %48, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_rk3288_parse_dt(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %6, i32 0, i32 3
  %10 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef 1, i32 noundef 0) #6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 360, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %6, i32 0, i32 2
  %15 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %14, i32 noundef 1, i32 noundef 0) #6
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, ptr %14, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %2, align 4
  %20 = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.5) #6
  store ptr %20, ptr %6, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef nonnull @.str.6) #6
  %23 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %6, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dw_mci, ptr %0, i32 0, i32 39
  store ptr %6, ptr %24, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = phi i32 [ 0, %18 ], [ -12, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mci_rk3288_execute_tuning(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dw_mci_slot, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 36
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #7
  br label %147

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %6, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 8) #6
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %147, label %21, !prof !13

21:                                               ; preds = %14
  %22 = extractvalue { i32, i1 } %19, 0
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %147, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %15, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %69, %25
  %29 = phi i32 [ %70, %69 ], [ %26, %25 ]
  %30 = phi i32 [ %50, %69 ], [ 0, %25 ]
  %31 = phi i1 [ %43, %69 ], [ false, %25 ]
  %32 = phi i1 [ %41, %69 ], [ false, %25 ]
  %33 = phi i32 [ %71, %69 ], [ 0, %25 ]
  %34 = load ptr, ptr %8, align 4
  %35 = mul i32 %33, 360
  %36 = add i32 %35, -1
  %37 = add i32 %36, %29
  %38 = sdiv i32 %37, %29
  %39 = tail call i32 @clk_set_phase(ptr noundef %34, i32 noundef %38) #6
  %40 = tail call i32 @mmc_send_tuning(ptr noundef %7, i32 noundef %1, ptr noundef null) #6
  %41 = icmp eq i32 %40, 0
  %42 = icmp eq i32 %33, 0
  %43 = select i1 %42, i1 %41, i1 %31
  %44 = xor i1 %41, true
  %45 = select i1 %32, i1 true, i1 %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %28
  %47 = add i32 %30, 1
  %48 = getelementptr %struct.range_t, ptr %23, i32 %30
  store i32 %33, ptr %48, align 8
  br label %49

49:                                               ; preds = %46, %28
  %50 = phi i32 [ %30, %28 ], [ %47, %46 ]
  br i1 %41, label %51, label %56

51:                                               ; preds = %49
  %52 = add i32 %50, -1
  %53 = getelementptr %struct.range_t, ptr %23, i32 %52, i32 1
  store i32 %33, ptr %53, align 4
  %54 = add i32 %33, 1
  %55 = load i32, ptr %15, align 4
  br label %69

56:                                               ; preds = %49
  %57 = load i32, ptr %15, align 4
  %58 = add i32 %57, -1
  %59 = icmp eq i32 %33, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = add i32 %33, 1
  br label %69

62:                                               ; preds = %56
  %63 = mul i32 %57, 20
  %64 = add i32 %63, 359
  %65 = sdiv i32 %64, 360
  %66 = add i32 %65, %33
  %67 = icmp slt i32 %66, %57
  %68 = select i1 %67, i32 %66, i32 %58
  br label %69

69:                                               ; preds = %62, %60, %51
  %70 = phi i32 [ %55, %51 ], [ %57, %60 ], [ %57, %62 ]
  %71 = phi i32 [ %54, %51 ], [ %61, %60 ], [ %68, %62 ]
  %72 = icmp slt i32 %71, %70
  br i1 %72, label %28, label %73

73:                                               ; preds = %69
  switch i32 %50, label %77 [
    i32 0, label %74
    i32 1, label %83
  ]

74:                                               ; preds = %73, %25
  %75 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 36
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.8) #7
  br label %145

77:                                               ; preds = %73
  %78 = select i1 %43, i1 %41, i1 false
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = add i32 %50, -1
  %81 = getelementptr %struct.range_t, ptr %23, i32 %80
  %82 = load i32, ptr %81, align 8
  store i32 %82, ptr %23, align 64
  br label %85

83:                                               ; preds = %77, %73
  %84 = load i32, ptr %23, align 64
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i32 [ %84, %83 ], [ %82, %79 ]
  %87 = phi i32 [ %50, %83 ], [ %80, %79 ]
  %88 = icmp eq i32 %86, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.range_t, ptr %23, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %15, align 4
  %93 = add i32 %92, -1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %96, label %95

95:                                               ; preds = %89, %85
  br label %104

96:                                               ; preds = %89
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %6, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 @clk_set_phase(ptr noundef %97, i32 noundef %99) #6
  %101 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 36
  %102 = load ptr, ptr %101, align 4
  %103 = load i32, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.9, i32 noundef %103) #7
  br label %145

104:                                              ; preds = %124, %95
  %105 = phi i32 [ %126, %124 ], [ %86, %95 ]
  %106 = phi i32 [ %121, %124 ], [ -1, %95 ]
  %107 = phi i32 [ %120, %124 ], [ -1, %95 ]
  %108 = phi i32 [ %122, %124 ], [ 0, %95 ]
  %109 = getelementptr %struct.range_t, ptr %23, i32 %108, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = sub i32 %110, %105
  %112 = add i32 %111, 1
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, ptr %15, align 4
  %116 = add i32 %115, %112
  br label %117

117:                                              ; preds = %114, %104
  %118 = phi i32 [ %116, %114 ], [ %112, %104 ]
  %119 = icmp slt i32 %107, %118
  %120 = tail call i32 @llvm.smax.i32(i32 %107, i32 %118)
  %121 = select i1 %119, i32 %108, i32 %106
  %122 = add nuw i32 %108, 1
  %123 = icmp eq i32 %122, %87
  br i1 %123, label %127, label %124

124:                                              ; preds = %117
  %125 = getelementptr %struct.range_t, ptr %23, i32 %122
  %126 = load i32, ptr %125, align 8
  br label %104

127:                                              ; preds = %117
  %128 = sdiv i32 %120, 2
  %129 = getelementptr %struct.range_t, ptr %23, i32 %121
  %130 = load i32, ptr %129, align 8
  %131 = add i32 %130, %128
  %132 = load i32, ptr %15, align 4
  %133 = srem i32 %131, %132
  %134 = getelementptr inbounds %struct.dw_mci, ptr %4, i32 0, i32 36
  %135 = load ptr, ptr %134, align 4
  %136 = mul i32 %133, 360
  %137 = add i32 %136, -1
  %138 = add i32 %137, %132
  %139 = sdiv i32 %138, %132
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.10, i32 noundef %139) #7
  %140 = load ptr, ptr %8, align 4
  %141 = load i32, ptr %15, align 4
  %142 = add i32 %137, %141
  %143 = sdiv i32 %142, %141
  %144 = tail call i32 @clk_set_phase(ptr noundef %140, i32 noundef %143) #6
  br label %145

145:                                              ; preds = %127, %96, %74
  %146 = phi i32 [ -5, %74 ], [ 0, %96 ], [ 0, %127 ]
  tail call void @kfree(ptr noundef nonnull %23) #6
  br label %147

147:                                              ; preds = %145, %21, %14, %11
  %148 = phi i32 [ -5, %11 ], [ %146, %145 ], [ -12, %21 ], [ -12, %14 ]
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{i64 550487, i64 2148040458, i64 2148040484, i64 2148040531, i64 2148040553, i64 2148040581, i64 2148040601}
!9 = !{i64 2148051873, i64 2148051899, i64 2148051928, i64 2148051962, i64 2148051993, i64 2148052016}
!10 = !{i64 2148051380}
!11 = !{i64 537056, i64 537081, i64 537103, i64 537119, i64 537131, i64 537151, i64 537175, i64 537191, i64 537203}
!12 = !{i64 2148051506}
!13 = !{!"branch_weights", i32 1, i32 2000}
