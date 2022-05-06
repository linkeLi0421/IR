; ModuleID = '/llk/IR/drivers/mmc/host/renesas_sdhi_internal_dmac.c_pt.bc'
source_filename = "../drivers/mmc/host/renesas_sdhi_internal_dmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_sdhi_quirks = type { i8, i8, i32, ptr }
%struct.renesas_sdhi_of_data_with_quirks = type { ptr, ptr }
%struct.renesas_sdhi_of_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i32 }
%struct.renesas_sdhi_scc = type { i32, i32, i32 }
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
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }

@__initcall__kmod_renesas_sdhi_internal_dmac__288_581_renesas_internal_dmac_sdhi_driver_init6 = internal global ptr @renesas_internal_dmac_sdhi_driver_init, section ".initcall6.init", align 4
@renesas_internal_dmac_sdhi_driver = internal global %struct.platform_driver { ptr @renesas_sdhi_internal_dmac_probe, ptr @renesas_sdhi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @renesas_sdhi_internal_dmac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renesas_sdhi_internal_dmac_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_renesas_internal_dmac_sdhi_driver_exit = internal global ptr @renesas_internal_dmac_sdhi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [77 x i8] c"renesas_sdhi_internal_dmac.description=Renesas SDHI driver for internal DMAC\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [52 x i8] c"renesas_sdhi_internal_dmac.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [76 x i8] c"renesas_sdhi_internal_dmac.file=drivers/mmc/host/renesas_sdhi_internal_dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [42 x i8] c"renesas_sdhi_internal_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [27 x i8] c"renesas_sdhi_internal_dmac\00", align 1
@renesas_sdhi_internal_dmac_of_match = internal constant [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rza2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-mmc-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen3_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a7795_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen3_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77961_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77965_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77970_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77980_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77990_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-sdhi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen3_compatible }, %struct.of_device_id zeroinitializer], align 4
@renesas_sdhi_internal_dmac_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_mmc_host_runtime_suspend, ptr @tmio_mmc_host_runtime_resume, ptr null }, align 4
@soc_dma_quirks = internal constant [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr inttoptr (i32 4 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.3, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.4, ptr null, ptr @.str.5, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@global_flags = internal global i32 0, align 4
@sdhi_quirks_match = internal constant [6 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.7, ptr @sdhi_quirks_4tap_nohs400, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.3, ptr @sdhi_quirks_4tap_nohs400, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.8, ptr null, ptr @.str.3, ptr @sdhi_quirks_4tap, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.5, ptr @sdhi_quirks_4tap_nohs400, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.5, ptr @sdhi_quirks_r8a7796_es13, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@renesas_sdhi_internal_dmac_dma_ops = internal constant %struct.tmio_mmc_dma_ops { ptr @renesas_sdhi_internal_dmac_start_dma, ptr @renesas_sdhi_internal_dmac_enable_dma, ptr @renesas_sdhi_internal_dmac_request_dma, ptr @renesas_sdhi_internal_dmac_release_dma, ptr @renesas_sdhi_internal_dmac_abort_dma, ptr @renesas_sdhi_internal_dmac_dataend_dma, ptr @renesas_sdhi_internal_dmac_end_dma }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"r7s9210\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ES1.*\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"r8a7795\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ES1.0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"r8a7796\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ES1.[012]\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"r8a774a1\00", align 1
@sdhi_quirks_4tap_nohs400 = internal constant %struct.renesas_sdhi_quirks { i8 1, i8 1, i32 0, ptr null }, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ES2.0\00", align 1
@sdhi_quirks_4tap = internal constant %struct.renesas_sdhi_quirks { i8 0, i8 1, i32 204, ptr null }, align 4
@sdhi_quirks_r8a7796_es13 = internal constant %struct.renesas_sdhi_quirks { i8 0, i8 1, i32 204, ptr @r8a7796_es13_calib_table }, align 4
@r8a7796_es13_calib_table = internal constant [2 x [32 x i8]] [[32 x i8] c"\03\03\03\03\03\03\03\04\04\05\06\07\08\09\0A\0F\10\10\10\10\10\10\11\12\12\13\14\15\16\17\18\19", [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\06\07\08\0B\0C\11\12\12\12\12\12\12\12\13\14\15\16\17\19\19"], align 1
@of_rza2_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rza2, ptr null }, align 4
@of_rcar_gen3_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr null }, align 4
@of_r8a7795_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_bad_taps2367 }, align 4
@of_r8a77961_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_bad_taps1357 }, align 4
@of_r8a77965_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_r8a77965 }, align 4
@of_r8a77970_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3_no_fallback, ptr null }, align 4
@of_r8a77980_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_nohs400 }, align 4
@of_r8a77990_compatible = internal constant %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_r8a77990 }, align 4
@of_data_rza2 = internal constant %struct.renesas_sdhi_of_data { i32 3088, i32 1048576, i32 1073742348, i32 0, i32 0, i32 0, i32 2, i32 -4096, ptr @rcar_gen3_scc_taps, i32 1, i32 8388607, i16 1, i32 0 }, align 4
@rcar_gen3_scc_taps = internal global [1 x %struct.renesas_sdhi_scc] [%struct.renesas_sdhi_scc { i32 0, i32 768, i32 256 }], align 4
@of_data_rcar_gen3 = internal constant %struct.renesas_sdhi_of_data { i32 3096, i32 0, i32 1073742348, i32 67371008, i32 0, i32 0, i32 2, i32 4096, ptr @rcar_gen3_scc_taps, i32 1, i32 8388607, i16 1, i32 1 }, align 4
@sdhi_quirks_bad_taps2367 = internal constant %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 204, ptr null }, align 4
@sdhi_quirks_bad_taps1357 = internal constant %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 170, ptr null }, align 4
@sdhi_quirks_r8a77965 = internal constant %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 204, ptr @r8a77965_calib_table }, align 4
@r8a77965_calib_table = internal constant [2 x [32 x i8]] [[32 x i8] c"\01\02\06\06\07\08\09\0A\0B\0C\0D\0E\0F\0F\0F\10\11\12\13\14\15\16\17\18\19\19\1A\1B\1C\1D\1E\1F", [32 x i8] c"\02\03\04\04\05\06\07\09\0A\0B\0C\0D\0E\0F\10\11\11\11\14\15\16\17\18\19\1B\1C\1D\1E\1F\1F\1F\1F"], align 1
@of_data_rcar_gen3_no_fallback = internal constant %struct.renesas_sdhi_of_data { i32 3096, i32 0, i32 1073742348, i32 67371008, i32 0, i32 0, i32 2, i32 4096, ptr @rcar_gen3_scc_taps, i32 1, i32 8388607, i16 1, i32 0 }, align 4
@sdhi_quirks_nohs400 = internal constant %struct.renesas_sdhi_quirks { i8 1, i8 0, i32 0, ptr null }, align 4
@sdhi_quirks_r8a77990 = internal constant %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 0, ptr @r8a77990_calib_table }, align 4
@r8a77990_calib_table = internal constant [2 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"\00\00\00\01\02\03\03\04\04\04\05\05\06\08\09\0A\0B\0C\0D\0F\10\11\11\12\12\13\14\16\18\19\1A\1A"], align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_renesas_internal_dmac_sdhi_driver_exit, ptr @__initcall__kmod_renesas_sdhi_internal_dmac__288_581_renesas_internal_dmac_sdhi_driver_init6, ptr @renesas_internal_dmac_sdhi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @renesas_internal_dmac_sdhi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_internal_dmac_sdhi_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @renesas_internal_dmac_sdhi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_internal_dmac_sdhi_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_internal_dmac_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.renesas_sdhi_of_data_with_quirks, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_dma_quirks) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.soc_device_attribute, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = load i32, ptr @global_flags, align 4
  %13 = or i32 %12, %11
  store i32 %13, ptr @global_flags, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = tail call ptr @soc_device_match(ptr noundef nonnull @sdhi_quirks_match) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.soc_device_attribute, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %5, %14 ]
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 -1, ptr %23, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 @renesas_sdhi_probe(ptr noundef %0, ptr noundef nonnull @renesas_sdhi_internal_dmac_dma_ops, ptr noundef %27, ptr noundef %21) #4
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_start_dma(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @global_flags, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 49, i32 48
  %9 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 2, i32 1
  %25 = tail call i32 @dma_map_sg_attrs(ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %24, i32 noundef 0) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %96, label %27

27:                                               ; preds = %12
  store i32 2, ptr %9, align 4
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 127
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %18, align 4
  %37 = load i32, ptr %20, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %35, ptr noundef %28, i32 noundef %36, i32 noundef %40, i32 noundef 0) #4
  br label %95

41:                                               ; preds = %27, %2
  %42 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 512
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = or i32 %8, 65536
  %48 = load volatile i32, ptr @global_flags, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull @global_flags) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51, %46, %41
  %55 = phi i32 [ %47, %51 ], [ %47, %46 ], [ %8, %41 ]
  %56 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %57, i32 60
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void %67(ptr noundef %0, i1 noundef zeroext true) #4
  br label %70

70:                                               ; preds = %69, %65, %61, %54
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr i8, ptr %71, i32 2080
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %73 = getelementptr i8, ptr %71, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %55) #4, !srcloc !9
  %74 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr i8, ptr %76, i32 2176
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %78 = getelementptr i8, ptr %76, i32 2180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #4, !srcloc !9
  %79 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  store i8 1, ptr %79, align 4
  br label %114

80:                                               ; preds = %51
  %81 = load i32, ptr %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %42, align 4
  %92 = and i32 %91, 256
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %86, ptr noundef %88, i32 noundef %90, i32 noundef %94, i32 noundef 0) #4
  br label %95

95:                                               ; preds = %83, %33
  store i32 0, ptr %9, align 4
  br label %96

96:                                               ; preds = %95, %80, %12
  %97 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr i8, ptr %107, i32 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %109 = getelementptr i8, ptr %107, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 0) #4, !srcloc !9
  %110 = getelementptr i8, ptr %98, i32 60
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  tail call void %111(ptr noundef %0, i1 noundef zeroext false) #4
  br label %114

114:                                              ; preds = %113, %106, %102, %96, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_enable_dma(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  br i1 %1, label %17, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr i8, ptr %14, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #4, !srcloc !9
  br label %17

17:                                               ; preds = %13, %12
  %18 = getelementptr i8, ptr %4, i32 60
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %0, i1 noundef zeroext %1) #4
  br label %22

22:                                               ; preds = %21, %17, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_request_dma(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 2120
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %7 = getelementptr i8, ptr %5, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #4, !srcloc !9
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 2136
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %10 = getelementptr i8, ptr %8, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1) #4, !srcloc !9
  %11 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  store ptr inttoptr (i32 -559038801 to ptr), ptr %11, align 4
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  store ptr inttoptr (i32 -559038801 to ptr), ptr %12, align 4
  %13 = getelementptr i8, ptr %4, i32 80
  %14 = ptrtoint ptr %0 to i32
  tail call void @tasklet_init(ptr noundef %13, ptr noundef nonnull @renesas_sdhi_internal_dmac_complete_tasklet_fn, i32 noundef %14) #4
  %15 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 17
  tail call void @tasklet_init(ptr noundef %15, ptr noundef nonnull @renesas_sdhi_internal_dmac_issue_tasklet_fn, i32 noundef %14) #4
  %16 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 5, i32 1
  store ptr @renesas_sdhi_internal_dmac_pre_req, ptr %17, align 4
  store ptr @renesas_sdhi_internal_dmac_post_req, ptr %16, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_release_dma(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_abort_dma(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %14 = getelementptr i8, ptr %12, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #4, !srcloc !9
  %15 = getelementptr i8, ptr %3, i32 60
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void %16(ptr noundef %0, i1 noundef zeroext false) #4
  br label %19

19:                                               ; preds = %18, %11, %7, %1
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 2096
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %22 = getelementptr i8, ptr %20, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -769) #4, !srcloc !9
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr i8, ptr %23, i32 2096
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %25 = getelementptr i8, ptr %23, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #4, !srcloc !9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @global_flags) #4
  %26 = load ptr, ptr %2, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %26, i32 60
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef %0, i1 noundef zeroext true) #4
  br label %38

38:                                               ; preds = %37, %33, %29, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_dataend_dma(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 80
  tail call void @__tasklet_schedule(ptr noundef %8) #4
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_end_dma(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i1 @renesas_sdhi_internal_dmac_complete(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_complete_tasklet_fn(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %2, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #4
  %4 = tail call fastcc zeroext i1 @renesas_sdhi_internal_dmac_complete(ptr noundef %2)
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @tmio_mmc_do_data_irq(ptr noundef %2) #4
  br label %6

6:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %7 = load i16, ptr %3, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_issue_tasklet_fn(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %2, i32 noundef 4) #4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2088
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr i8, ptr %3, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_pre_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 13
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 2, i32 1
  %20 = tail call i32 @dma_map_sg_attrs(ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %19, i32 noundef 0) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %6
  store i32 1, ptr %7, align 4
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 127
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %13, align 4
  %32 = load i32, ptr %15, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %30, ptr noundef %23, i32 noundef %31, i32 noundef %35, i32 noundef 0) #4
  store i32 0, ptr %7, align 4
  br label %36

36:                                               ; preds = %28, %22, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_post_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %23, i32 noundef 0) #4
  store i32 0, ptr %8, align 4
  br label %24

24:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @renesas_sdhi_internal_dmac_complete(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 4, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %26 = getelementptr i8, ptr %24, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #4, !srcloc !9
  %27 = getelementptr i8, ptr %15, i32 60
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void %28(ptr noundef %0, i1 noundef zeroext false) #4
  br label %31

31:                                               ; preds = %30, %23, %19, %9
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %39, ptr noundef %41, i32 noundef %43, i32 noundef %48, i32 noundef 0) #4
  store i32 0, ptr %33, align 4
  br label %49

49:                                               ; preds = %36, %31
  br i1 %13, label %51, label %50

50:                                               ; preds = %49
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @global_flags) #4
  br label %51

51:                                               ; preds = %50, %49
  store i8 0, ptr %2, align 4
  br label %52

52:                                               ; preds = %51, %5, %1
  %53 = phi i1 [ true, %51 ], [ false, %1 ], [ false, %5 ]
  ret i1 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_do_data_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_enable_mmc_irqs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_resume(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{i64 2152551661}
!9 = !{i64 4969241}
!10 = !{i64 2152551965}
!11 = !{i64 2149226212}
!12 = !{i64 2149222036}
!13 = !{i64 2149222111, i64 2149222138, i64 2149222185, i64 2149222207, i64 2149222235, i64 2149222255}
!14 = !{i64 275124}
!15 = !{i64 2149250356}
!16 = !{i8 0, i8 2}
