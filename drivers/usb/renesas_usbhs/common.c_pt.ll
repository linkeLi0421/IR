; ModuleID = '/llk/IR/drivers/usb/renesas_usbhs/common.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.renesas_usbhs_platform_info = type { %struct.renesas_usbhs_platform_callback, %struct.renesas_usbhs_driver_param }
%struct.renesas_usbhs_platform_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }
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
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"usbhs should be reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot set speed to unknown device %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unsupported hub number %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"unsupported speed %d\0A\00", align 1
@usbhs_of_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_with_pll_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_with_pll_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_with_pll_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rza1-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rza1_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rza2-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rza2_plat_info }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license227 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [31 x i8] c"description=Renesas USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [60 x i8] c"author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@usbhs_rcar_gen3_with_pll_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rcar_gen2_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rcar_gen3_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rza1_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rza2_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@renesas_usbhs_driver = internal global %struct.platform_driver { ptr @usbhs_probe, ptr @usbhs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbhs_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbhsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [14 x i8] c"renesas_usbhs\00", align 1
@usbhsc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @usbhsc_suspend, ptr @usbhsc_resume, ptr @usbhsc_suspend, ptr @usbhsc_resume, ptr @usbhsc_suspend, ptr @usbhsc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"no platform information\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"no platform callbacks\0A\00", align 1
@usbhsc_new_pipe = internal global [16 x %struct.renesas_usbhs_driver_pipe_config] [%struct.renesas_usbhs_driver_pipe_config { i8 0, i16 64, i8 0, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 8, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 40, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 72, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 88, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 104, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 4, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 5, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 6, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 120, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -120, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -104, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -88, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -72, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -56, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -40, i8 1 }], align 2
@usbhsc_default_pipe = internal global [10 x %struct.renesas_usbhs_driver_pipe_config] [%struct.renesas_usbhs_driver_pipe_config { i8 0, i16 64, i8 0, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 8, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 24, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 40, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 56, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 72, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 4, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 5, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 6, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 7, i8 0 }], align 2
@.str.8 = private unnamed_addr constant [16 x i8] c"renesas,buswait\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"renesas,enable\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"USB function not selected (GPIO)\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"platform init failed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"probe failed (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"USB cable plugged in doesn't match the selected role!\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_license227], section "llvm.metadata"

@__mod_of__usbhs_of_match_device_table = dso_local alias [13 x %struct.of_device_id], ptr @usbhs_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @usbhs_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_write(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %2) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_bset(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %8 = xor i16 %2, -1
  %9 = and i16 %7, %8
  %10 = and i16 %3, %2
  %11 = or i16 %9, %10
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %11) #8, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_pdev_to_priv(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_get_id_as_gadget(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_sys_host_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i16 0, i16 225
  %5 = load ptr, ptr %0, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %7 = and i16 %6, -242
  %8 = or i16 %7, %4
  %9 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %8) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_sys_function_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 13
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i16 241, i16 497
  %8 = select i1 %6, i16 129, i16 385
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i16 0, i16 %8
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %13 = xor i16 %7, -1
  %14 = and i16 %12, %13
  %15 = and i16 %10, %7
  %16 = or i16 %15, %14
  %17 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %16) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_sys_function_pullup(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i16 0, i16 16
  %5 = load ptr, ptr %0, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %7 = and i16 %6, -17
  %8 = or i16 %7, %4
  %9 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %8) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_sys_set_test_mode(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 %1) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_frame_get_num(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 76
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %5 = and i16 %4, 2047
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_usbreq_get_val(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = lshr i16 %5, 8
  %7 = trunc i16 %6 to i8
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  store i8 %7, ptr %8, align 1
  %9 = trunc i16 %5 to i8
  store i8 %9, ptr %1, align 1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 86
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  store i16 %12, ptr %13, align 1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 88
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  store i16 %16, ptr %17, align 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr i8, ptr %18, i32 90
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  store i16 %20, ptr %21, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_usbreq_set_val(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  %7 = load i8, ptr %1, align 1
  %8 = zext i8 %7 to i16
  %9 = or i16 %6, %8
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #8, !srcloc !11
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %13 = load i16, ptr %12, align 1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 86
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #8, !srcloc !11
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %17 = load i16, ptr %16, align 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr i8, ptr %18, i32 88
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #8, !srcloc !11
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 1
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 90
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %21) #8, !srcloc !11
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 96
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %27 = or i16 %26, 16384
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i8, ptr %28, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %27) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_bus_send_sof_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %5 = and i16 %4, 80
  %6 = icmp eq i16 %5, 64
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str) #9
  br label %11

11:                                               ; preds = %7, %1
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %15 = and i16 %14, -81
  %16 = or i16 %15, 16
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #8, !srcloc !11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_bus_send_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %5 = and i16 %4, -81
  %6 = or i16 %5, 64
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_bus_get_speed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %5 = and i16 %4, 7
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 3
  %9 = select i1 %8, i32 %6, i32 0
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_vbus_ctrl(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef %4, i32 noundef %1) #8
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi i32 [ -19, %2 ], [ %13, %12 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_set_device_config(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = shl i32 %1, 1
  %10 = add i32 %9, 208
  %11 = icmp sgt i32 %1, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %1) #9
  br label %33

13:                                               ; preds = %5
  %14 = icmp ugt i16 %2, 10
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %16) #9
  br label %33

17:                                               ; preds = %13
  %18 = add i16 %4, -1
  %19 = icmp ult i16 %18, 3
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %21) #9
  br label %33

22:                                               ; preds = %17
  %23 = shl nuw nsw i16 %2, 11
  %24 = and i16 %23, 30720
  %25 = shl i16 %3, 8
  %26 = and i16 %25, 1792
  %27 = or i16 %26, %24
  %28 = shl nuw nsw i16 %4, 6
  %29 = and i16 %28, 192
  %30 = or i16 %27, %29
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr i8, ptr %31, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #8, !srcloc !11
  br label %33

33:                                               ; preds = %22, %20, %15, %12
  %34 = phi i32 [ -5, %12 ], [ -5, %15 ], [ -5, %20 ], [ 0, %22 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_xxxsts_clear(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 31, %5
  %7 = lshr i32 -1, %6
  %8 = zext i16 %1 to i32
  %9 = zext i16 %2 to i32
  %10 = shl nuw i32 1, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = trunc i32 %12 to i16
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhsc_schedule_notify_hotplug(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #8
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7, i32 noundef %6) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_usbhs_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_usbhs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @of_device_get_match_data(ptr noundef nonnull %3) #8
  br label %14

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %10, %9 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  br label %171

18:                                               ; preds = %14
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %171, label %21

21:                                               ; preds = %18
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 352, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %171, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %25, ptr %22, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %171

29:                                               ; preds = %24
  br i1 %4, label %33, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi ptr [ %32, %30 ], [ null, %29 ]
  %35 = tail call ptr @of_find_property(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %3, i32 noundef 0) #8
  %39 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  br label %171

43:                                               ; preds = %37, %33
  %44 = tail call ptr @devm_reset_control_array_get(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %45 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 12
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  br label %171

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 3
  %51 = getelementptr inbounds %struct.renesas_usbhs_platform_info, ptr %15, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %50, ptr noundef align 4 dereferenceable(56) %51, i32 56, i1 false)
  %52 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %15, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  br label %171

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 2
  store ptr %15, ptr %57, align 4
  %58 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 3, i32 13
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 32
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load ptr, ptr %50, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %56
  %66 = phi ptr [ @usbhsc_new_pipe, %56 ], [ @usbhsc_default_pipe, %62 ]
  %67 = phi i32 [ 16, %56 ], [ 10, %62 ]
  store ptr %66, ptr %50, align 4
  %68 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 3, i32 1
  store i32 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 3, i32 12
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 64, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %69
  br i1 %4, label %78, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %77 = load ptr, ptr %76, align 8
  br label %78

78:                                               ; preds = %75, %74
  %79 = phi ptr [ %77, %75 ], [ null, %74 ]
  %80 = call i32 @of_property_read_variable_u32_array(ptr noundef %79, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, ptr %2, align 4
  %84 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 3, i32 2
  store i32 %83, ptr %84, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef 1) #8
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = ptrtoint ptr %86 to i32
  br label %171

90:                                               ; preds = %85
  %91 = load ptr, ptr %57, align 4
  %92 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i8, ptr %58, align 4
  %97 = or i8 %96, 2
  store i8 %97, ptr %58, align 4
  br label %98

98:                                               ; preds = %95, %90
  %99 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 1
  store i32 %19, ptr %99, align 4
  %100 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 5
  store ptr %0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 4
  store i32 -32, ptr %101, align 4
  %102 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %102, ptr %102, align 4
  %103 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 4, i32 0, i32 2
  store ptr @usbhsc_notify_hotplug, ptr %104, align 4
  %105 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %105, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %106 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 7
  store i32 0, ptr %106, align 4
  %107 = call i32 @usbhs_pipe_probe(ptr noundef nonnull %22) #8
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %171, label %109

109:                                              ; preds = %98
  %110 = call i32 @usbhs_fifo_probe(ptr noundef nonnull %22) #8
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %169, label %112

112:                                              ; preds = %109
  %113 = call i32 @usbhs_mod_probe(ptr noundef nonnull %22) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %167, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %116, align 8
  %117 = load ptr, ptr %45, align 4
  %118 = call i32 @reset_control_deassert(ptr noundef %117) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %115
  %121 = call fastcc i32 @usbhsc_clk_get(ptr noundef %3, ptr noundef nonnull %22)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %161

123:                                              ; preds = %120
  %124 = load ptr, ptr %22, align 4
  %125 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %124) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %126 = and i16 %125, -1025
  %127 = load ptr, ptr %22, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %127, i16 %126) #8, !srcloc !11
  %128 = icmp eq ptr %86, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = call i32 @gpiod_get_value(ptr noundef nonnull %86) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10) #9
  br label %159

133:                                              ; preds = %129, %123
  %134 = load ptr, ptr %57, align 4
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = call i32 %135(ptr noundef %0) #8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %57, align 4
  br label %143

142:                                              ; preds = %137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #9
  br label %159

143:                                              ; preds = %140, %133
  %144 = phi ptr [ %141, %140 ], [ %134, %133 ]
  %145 = phi i32 [ %138, %140 ], [ 0, %133 ]
  %146 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %144, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = call i32 %147(ptr noundef %0) #8
  br label %151

151:                                              ; preds = %149, %143
  call void @pm_runtime_enable(ptr noundef %3) #8
  %152 = load i8, ptr %58, align 4
  %153 = and i8 %152, 2
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  call fastcc void @usbhsc_power_ctrl(ptr noundef nonnull %22, i32 noundef 1)
  call void @usbhs_mod_autonomy_mode(ptr noundef nonnull %22) #8
  br label %157

156:                                              ; preds = %151
  call void @usbhs_mod_non_autonomy_mode(ptr noundef nonnull %22) #8
  br label %157

157:                                              ; preds = %156, %155
  %158 = call i32 @usbhsc_schedule_notify_hotplug(ptr noundef %0)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.12) #9
  br label %171

159:                                              ; preds = %142, %132
  %160 = phi i32 [ -524, %132 ], [ %138, %142 ]
  call fastcc void @usbhsc_clk_put(ptr noundef nonnull %22)
  br label %161

161:                                              ; preds = %159, %120
  %162 = phi i32 [ %121, %120 ], [ %160, %159 ]
  %163 = load ptr, ptr %45, align 4
  %164 = call i32 @reset_control_assert(ptr noundef %163) #8
  br label %165

165:                                              ; preds = %161, %115
  %166 = phi i32 [ %118, %115 ], [ %162, %161 ]
  call void @usbhs_mod_remove(ptr noundef nonnull %22) #8
  br label %167

167:                                              ; preds = %165, %112
  %168 = phi i32 [ %113, %112 ], [ %166, %165 ]
  call void @usbhs_fifo_remove(ptr noundef nonnull %22) #8
  br label %169

169:                                              ; preds = %167, %109
  %170 = phi i32 [ %110, %109 ], [ %168, %167 ]
  call void @usbhs_pipe_remove(ptr noundef nonnull %22) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %170) #9
  br label %171

171:                                              ; preds = %169, %157, %98, %88, %55, %47, %41, %27, %21, %18, %17
  %172 = phi i32 [ %28, %27 ], [ %42, %41 ], [ %48, %47 ], [ %89, %88 ], [ %170, %169 ], [ %145, %157 ], [ -22, %55 ], [ -22, %17 ], [ %19, %18 ], [ -12, %21 ], [ %107, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %3, i32 noundef 0)
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #8
  %11 = icmp eq ptr %3, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 %16(ptr noundef %0) #8
  br label %20

20:                                               ; preds = %18, %12, %9
  %21 = load i8, ptr %4, align 4
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 13, i32 0
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_put(ptr noundef %26) #8
  %27 = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 13, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_put(ptr noundef %28) #8
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @reset_control_assert(ptr noundef %31) #8
  tail call void @usbhs_mod_remove(ptr noundef %3) #8
  tail call void @usbhs_fifo_remove(ptr noundef %3) #8
  tail call void @usbhs_pipe_remove(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhsc_notify_hotplug(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = getelementptr i8, ptr %0, i32 44
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @usbhs_mod_get_current(ptr noundef %2) #8
  %6 = getelementptr i8, ptr %0, i32 72
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %4) #8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %13 = icmp eq ptr %2, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 -60
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 %18(ptr noundef %4) #8
  br label %22

22:                                               ; preds = %20, %14, %11
  %23 = phi i32 [ -19, %11 ], [ %21, %20 ], [ 0, %14 ]
  %24 = icmp eq i32 %12, 0
  %25 = icmp ne ptr %5, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %86, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %0, i32 48
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @extcon_get_state(ptr noundef nonnull %29, i32 noundef 2) #8
  %33 = icmp sgt i32 %32, 0
  %34 = icmp ne i32 %23, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %32, 0
  %38 = icmp ne i32 %23, 1
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.14) #9
  br label %125

42:                                               ; preds = %36, %27
  %43 = tail call i32 @usbhs_mod_change(ptr noundef %2, i32 noundef %23) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %125, label %45

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %0, i32 -4
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %2, i32 noundef %12) #8
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr i8, ptr %0, i32 -48
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = trunc i32 %53 to i16
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 2
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %58) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %60 = and i16 %59, -16
  %61 = and i16 %56, 15
  %62 = or i16 %60, %61
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %64, i16 %62) #8, !srcloc !11
  br label %65

65:                                               ; preds = %55, %51
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 0) #8, !srcloc !11
  %68 = load ptr, ptr %3, align 4
  br i1 %13, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %0, i32 -60
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %71, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = tail call i32 %73(ptr noundef %68, i32 noundef 0) #8
  br label %77

77:                                               ; preds = %75, %69, %65
  %78 = tail call ptr @usbhs_mod_get_current(ptr noundef %2) #8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %125, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.usbhs_mod, ptr %78, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %125, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %2) #8
  br label %125

86:                                               ; preds = %22
  %87 = select i1 %24, i1 %25, i1 false
  br i1 %87, label %88, label %125

88:                                               ; preds = %86
  %89 = tail call ptr @usbhs_mod_get_current(ptr noundef %2) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.usbhs_mod, ptr %89, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = tail call i32 %93(ptr noundef %2) #8
  br label %97

97:                                               ; preds = %95, %91, %88
  %98 = load ptr, ptr %2, align 4
  %99 = getelementptr i8, ptr %98, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %99, i16 0) #8, !srcloc !11
  %100 = load ptr, ptr %3, align 4
  br i1 %13, label %109, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %0, i32 -60
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %103, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = tail call i32 %105(ptr noundef %100, i32 noundef 0) #8
  br label %109

109:                                              ; preds = %107, %101, %97
  %110 = getelementptr i8, ptr %0, i32 -4
  %111 = load i8, ptr %110, align 4
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %2, i32 noundef 0) #8
  br label %115

115:                                              ; preds = %114, %109
  %116 = tail call i32 @usbhs_mod_change(ptr noundef %2, i32 noundef -1) #8
  br i1 %13, label %125, label %117

117:                                              ; preds = %115
  %118 = getelementptr i8, ptr %0, i32 -60
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = tail call i32 %121(ptr noundef %4) #8
  br label %125

125:                                              ; preds = %123, %117, %115, %86, %84, %80, %77, %42, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_fifo_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usbhsc_clk_get(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 3, i32 13
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ null, %7 ]
  %14 = tail call ptr @of_clk_get(ptr noundef %13, i32 noundef 0) #8
  %15 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 13
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i32
  br label %33

19:                                               ; preds = %12
  br i1 %8, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %22, %20 ], [ null, %19 ]
  %25 = tail call ptr @of_clk_get(ptr noundef %24, i32 noundef 1) #8
  %26 = getelementptr %struct.usbhs_priv, ptr %1, i32 0, i32 13, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, inttoptr (i32 -2 to ptr)
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store ptr null, ptr %26, align 4
  br label %33

29:                                               ; preds = %23
  %30 = ptrtoint ptr %25 to i32
  %31 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %32 = select i1 %31, i32 %30, i32 0
  br label %33

33:                                               ; preds = %29, %28, %17, %2
  %34 = phi i32 [ %18, %17 ], [ 0, %2 ], [ 0, %28 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsc_power_ctrl(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 13
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 13, i32 0
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %32

21:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #8
  br label %22

22:                                               ; preds = %24, %21
  %23 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  br label %32

24:                                               ; preds = %18
  %25 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 13, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22

29:                                               ; preds = %24
  %30 = tail call i32 @clk_enable(ptr noundef %26) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %21

32:                                               ; preds = %22, %18
  %33 = phi ptr [ %23, %22 ], [ %15, %18 ]
  tail call void @clk_unprepare(ptr noundef %33) #8
  br label %77

34:                                               ; preds = %29, %7
  %35 = icmp eq ptr %0, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %0, align 4
  %44 = tail call i32 %40(ptr noundef %4, ptr noundef %43, i32 noundef %1) #8
  br label %45

45:                                               ; preds = %42, %36, %34
  %46 = load ptr, ptr %0, align 4
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %46) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %48 = or i16 %47, 1024
  %49 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %48) #8, !srcloc !11
  br label %77

50:                                               ; preds = %2
  %51 = load ptr, ptr %0, align 4
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %53 = and i16 %52, -1025
  %54 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %53) #8, !srcloc !11
  %55 = icmp eq ptr %0, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %0, align 4
  %64 = tail call i32 %60(ptr noundef %4, ptr noundef %63, i32 noundef 0) #8
  br label %65

65:                                               ; preds = %62, %56, %50
  %66 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 13
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 16
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 13, i32 0
  %72 = load ptr, ptr %71, align 4
  tail call void @clk_disable(ptr noundef %72) #8
  tail call void @clk_unprepare(ptr noundef %72) #8
  %73 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 13, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void @clk_disable(ptr noundef %74) #8
  tail call void @clk_unprepare(ptr noundef %74) #8
  br label %75

75:                                               ; preds = %70, %65
  %76 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  br label %77

77:                                               ; preds = %75, %45, %32, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_autonomy_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_non_autonomy_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsc_clk_put(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 13
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 13, i32 0
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_put(ptr noundef %8) #8
  %9 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 13, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_put(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_change(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @usbhs_mod_get_current(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @usbhs_mod_get_current(ptr noundef %3) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.usbhs_mod, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %3) #8
  br label %15

15:                                               ; preds = %13, %9, %6
  %16 = tail call i32 @usbhs_mod_change(ptr noundef %3, i32 noundef -1) #8
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %15
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %3, i32 noundef 0)
  br label %23

23:                                               ; preds = %22, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %3, i32 noundef 1)
  tail call void @usbhs_mod_autonomy_mode(ptr noundef %3) #8
  br label %11

11:                                               ; preds = %10, %1
  %12 = icmp eq ptr %3, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %5) #8
  br label %21

21:                                               ; preds = %19, %13, %11
  %22 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.usbhs_priv, ptr %23, i32 0, i32 3, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @__msecs_to_jiffies(i32 noundef %25) #8
  %27 = getelementptr inbounds %struct.usbhs_priv, ptr %23, i32 0, i32 4
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %27, i32 noundef %26) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 1762722}
!9 = !{i64 2149302540}
!10 = !{i64 2149303762}
!11 = !{i64 1762522}
!12 = !{!"auto-init"}
