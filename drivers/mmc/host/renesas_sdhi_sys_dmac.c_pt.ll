; ModuleID = '/llk/IR/drivers/mmc/host/renesas_sdhi_sys_dmac.c_pt.bc'
source_filename = "../drivers/mmc/host/renesas_sdhi_sys_dmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_renesas_sdhi_sys_dmac__288_477_renesas_sys_dmac_sdhi_driver_init6 = internal global ptr @renesas_sys_dmac_sdhi_driver_init, section ".initcall6.init", align 4
@renesas_sys_dmac_sdhi_driver = internal global %struct.platform_driver { ptr @renesas_sdhi_sys_dmac_probe, ptr @renesas_sdhi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @renesas_sdhi_sys_dmac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renesas_sdhi_sys_dmac_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_renesas_sys_dmac_sdhi_driver_exit = internal global ptr @renesas_sys_dmac_sdhi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [54 x i8] c"renesas_sdhi_sys_dmac.description=Renesas SDHI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [41 x i8] c"renesas_sdhi_sys_dmac.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [66 x i8] c"renesas_sdhi_sys_dmac.file=drivers/mmc/host/renesas_sdhi_sys_dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [37 x i8] c"renesas_sdhi_sys_dmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [52 x i8] c"renesas_sdhi_sys_dmac.alias=platform:sh_mobile_sdhi\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"sh_mobile_sdhi\00", align 1
@renesas_sdhi_sys_dmac_of_match = internal constant [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_default_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_default_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_default_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rz_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen1_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen1_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-sdhi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen1_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-sdhi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-shmobile\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@renesas_sdhi_sys_dmac_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_mmc_host_runtime_suspend, ptr @tmio_mmc_host_runtime_resume, ptr null }, align 4
@renesas_sdhi_sys_dmac_dma_ops = internal constant %struct.tmio_mmc_dma_ops { ptr @renesas_sdhi_sys_dmac_start_dma, ptr @renesas_sdhi_sys_dmac_enable_dma, ptr @renesas_sdhi_sys_dmac_request_dma, ptr @renesas_sdhi_sys_dmac_release_dma, ptr @renesas_sdhi_sys_dmac_abort_dma, ptr @renesas_sdhi_sys_dmac_dataend_dma, ptr null }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DMA failed: %d, falling back to PIO\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@of_default_cfg = internal constant %struct.renesas_sdhi_of_data { i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i16 0, i32 0 }, align 4
@of_rz_compatible = internal constant %struct.renesas_sdhi_of_data { i32 2576, i32 1048576, i32 524, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i16 0, i32 0 }, align 4
@of_rcar_gen1_compatible = internal constant %struct.renesas_sdhi_of_data { i32 1040, i32 0, i32 524, i32 262144, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i16 0, i32 0 }, align 4
@of_rcar_gen2_compatible = internal constant %struct.renesas_sdhi_of_data { i32 3096, i32 0, i32 1073742348, i32 262144, i32 4, i32 8192, i32 0, i32 768, ptr @rcar_gen2_scc_taps, i32 2, i32 8388607, i16 0, i32 0 }, align 4
@rcar_gen2_scc_taps = internal global [2 x %struct.renesas_sdhi_scc] [%struct.renesas_sdhi_scc { i32 156000000, i32 1795, i32 0 }, %struct.renesas_sdhi_scc { i32 0, i32 768, i32 0 }], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_renesas_sys_dmac_sdhi_driver_exit, ptr @__initcall__kmod_renesas_sdhi_sys_dmac__288_477_renesas_sys_dmac_sdhi_driver_init6, ptr @renesas_sys_dmac_sdhi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @renesas_sys_dmac_sdhi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_sys_dmac_sdhi_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @renesas_sys_dmac_sdhi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_sys_dmac_sdhi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_sys_dmac_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %4 = tail call i32 @renesas_sdhi_probe(ptr noundef %0, ptr noundef nonnull @renesas_sdhi_sys_dmac_dma_ops, ptr noundef %3, ptr noundef null) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_start_dma(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %108, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %242, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tmio_mmc_data, ptr %13, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %31, %11
  %24 = phi i1 [ %36, %31 ], [ true, %11 ]
  %25 = phi i32 [ %37, %31 ], [ 0, %11 ]
  %26 = phi ptr [ %38, %31 ], [ %15, %11 ]
  %27 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %19
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i1 %24, i1 false
  %37 = add nuw i32 %25, 1
  %38 = tail call ptr @sg_next(ptr noundef %26) #8
  %39 = load i32, ptr %20, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %23, label %41

41:                                               ; preds = %31
  br i1 %36, label %50, label %42

42:                                               ; preds = %41
  %43 = icmp ugt i32 %39, 1
  br i1 %43, label %89, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 4096
  %48 = icmp ult i32 %18, -4096
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %89, label %55

50:                                               ; preds = %41, %11
  %51 = phi i32 [ %39, %41 ], [ 0, %11 ]
  %52 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 8
  br i1 %54, label %242, label %62

55:                                               ; preds = %44
  %56 = icmp ult i32 %46, 8
  br i1 %56, label %242, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 18
  %59 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  tail call void @sg_init_one(ptr noundef %58, ptr noundef %60, i32 noundef %46) #8
  store ptr %58, ptr %14, align 4
  %61 = load i32, ptr %20, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = phi i32 [ %61, %57 ], [ %51, %50 ]
  %64 = phi ptr [ %58, %57 ], [ %15, %50 ]
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @dma_map_sg_attrs(ptr noundef %67, ptr noundef %64, i32 noundef %63, i32 noundef 2, i32 noundef 0) #8
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %89, label %70

70:                                               ; preds = %62
  %71 = load ptr, ptr %9, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %89, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 39
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = tail call ptr %75(ptr noundef nonnull %9, ptr noundef %64, i32 noundef %68, i32 noundef 2, i32 noundef 2, ptr noundef null) #8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %13, i32 64
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %78, i32 0, i32 6
  store ptr @renesas_sdhi_sys_dmac_dma_callback, ptr %82, align 4
  %83 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %78, i32 0, i32 8
  store ptr %0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %78, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %85(ptr noundef nonnull %78) #8
  %87 = icmp slt i32 %86, 0
  %88 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  store i8 1, ptr %88, align 4
  br i1 %87, label %89, label %242

89:                                               ; preds = %80, %77, %73, %70, %62, %44, %42, %23
  %90 = phi i32 [ -22, %42 ], [ -22, %44 ], [ %68, %77 ], [ %68, %62 ], [ %68, %73 ], [ %68, %70 ], [ %86, %80 ], [ -22, %23 ]
  %91 = load ptr, ptr %12, align 4
  %92 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %8, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr i8, ptr %91, i32 60
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void %100(ptr noundef %0, i1 noundef zeroext false) #8
  br label %103

103:                                              ; preds = %102, %98, %95, %89
  %104 = icmp sgt i32 %90, -1
  %105 = select i1 %104, i32 -5, i32 %90
  store ptr null, ptr %8, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %9) #8
  %106 = load ptr, ptr %92, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %237, label %233

108:                                              ; preds = %2
  %109 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %242, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.tmio_mmc_data, ptr %114, i32 0, i32 7
  %118 = load i32, ptr %117, align 4
  %119 = shl nsw i32 -1, %118
  %120 = xor i32 %119, -1
  %121 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %151, label %124

124:                                              ; preds = %132, %112
  %125 = phi i1 [ %137, %132 ], [ true, %112 ]
  %126 = phi i32 [ %138, %132 ], [ 0, %112 ]
  %127 = phi ptr [ %139, %132 ], [ %116, %112 ]
  %128 = getelementptr inbounds %struct.scatterlist, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, %120
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %213

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.scatterlist, ptr %127, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, %120
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i1 %125, i1 false
  %138 = add nuw i32 %126, 1
  %139 = tail call ptr @sg_next(ptr noundef %127) #8
  %140 = load i32, ptr %121, align 4
  %141 = icmp ult i32 %138, %140
  br i1 %141, label %124, label %142

142:                                              ; preds = %132
  br i1 %137, label %151, label %143

143:                                              ; preds = %142
  %144 = icmp ugt i32 %140, 1
  br i1 %144, label %213, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.scatterlist, ptr %116, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = icmp ugt i32 %147, 4096
  %149 = icmp ult i32 %119, -4096
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %213, label %156

151:                                              ; preds = %142, %112
  %152 = phi i32 [ %140, %142 ], [ 0, %112 ]
  %153 = getelementptr inbounds %struct.scatterlist, ptr %116, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %154, 8
  br i1 %155, label %242, label %186

156:                                              ; preds = %145
  %157 = icmp ult i32 %147, 8
  br i1 %157, label %242, label %158

158:                                              ; preds = %156
  %159 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !8
  %160 = load i32, ptr %116, align 4
  %161 = and i32 %160, -4
  %162 = inttoptr i32 %161 to ptr
  %163 = load i32, ptr @pgprot_kernel, align 4
  %164 = or i32 %163, 512
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %165 = tail call ptr @llvm.thread.pointer() #8
  %166 = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 149
  %167 = load i32, ptr %166, align 8
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %169 = tail call ptr @__kmap_local_page_prot(ptr noundef %162, i32 noundef %164) #8
  %170 = getelementptr inbounds %struct.scatterlist, ptr %116, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr i8, ptr %169, i32 %171
  %173 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 18
  %174 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 19
  %175 = load ptr, ptr %174, align 4
  %176 = load i32, ptr %146, align 4
  tail call void @sg_init_one(ptr noundef %173, ptr noundef %175, i32 noundef %176) #8
  %177 = load ptr, ptr %174, align 4
  %178 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 18, i32 2
  %179 = load i32, ptr %178, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %177, ptr align 1 %172, i32 %179, i1 false) #8
  %180 = load i32, ptr %170, align 4
  %181 = sub i32 0, %180
  %182 = getelementptr i8, ptr %172, i32 %181
  tail call void @kunmap_local_indexed(ptr noundef %182) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %183 = load i32, ptr %166, align 8
  %184 = add i32 %183, -1
  store i32 %184, ptr %166, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %159) #8, !srcloc !13
  store ptr %173, ptr %115, align 4
  %185 = load i32, ptr %121, align 4
  br label %186

186:                                              ; preds = %158, %151
  %187 = phi i32 [ %185, %158 ], [ %152, %151 ]
  %188 = phi ptr [ %173, %158 ], [ %116, %151 ]
  %189 = load ptr, ptr %110, align 4
  %190 = getelementptr inbounds %struct.dma_device, ptr %189, i32 0, i32 15
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @dma_map_sg_attrs(ptr noundef %191, ptr noundef %188, i32 noundef %187, i32 noundef 1, i32 noundef 0) #8
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %213, label %194

194:                                              ; preds = %186
  %195 = load ptr, ptr %110, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %213, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.dma_device, ptr %195, i32 0, i32 39
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %213, label %201

201:                                              ; preds = %197
  %202 = tail call ptr %199(ptr noundef nonnull %110, ptr noundef %188, i32 noundef %192, i32 noundef 1, i32 noundef 2, ptr noundef null) #8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %213, label %204

204:                                              ; preds = %201
  %205 = getelementptr i8, ptr %114, i32 64
  store i32 0, ptr %205, align 4
  %206 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %202, i32 0, i32 6
  store ptr @renesas_sdhi_sys_dmac_dma_callback, ptr %206, align 4
  %207 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %202, i32 0, i32 8
  store ptr %0, ptr %207, align 4
  %208 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %202, i32 0, i32 4
  %209 = load ptr, ptr %208, align 4
  %210 = tail call i32 %209(ptr noundef nonnull %202) #8
  %211 = icmp slt i32 %210, 0
  %212 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  store i8 1, ptr %212, align 4
  br i1 %211, label %213, label %242

213:                                              ; preds = %204, %201, %197, %194, %186, %145, %143, %124
  %214 = phi i32 [ -22, %143 ], [ -22, %145 ], [ %192, %201 ], [ %192, %186 ], [ %192, %197 ], [ %192, %194 ], [ %210, %204 ], [ -22, %124 ]
  %215 = load ptr, ptr %113, align 4
  %216 = load ptr, ptr %109, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %227, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %218
  %223 = getelementptr i8, ptr %215, i32 60
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  tail call void %224(ptr noundef %0, i1 noundef zeroext false) #8
  br label %227

227:                                              ; preds = %226, %222, %218, %213
  %228 = icmp sgt i32 %214, -1
  %229 = select i1 %228, i32 -5, i32 %214
  store ptr null, ptr %109, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %110) #8
  %230 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %237, label %233

233:                                              ; preds = %227, %103
  %234 = phi ptr [ %92, %103 ], [ %230, %227 ]
  %235 = phi ptr [ %106, %103 ], [ %231, %227 ]
  %236 = phi i32 [ %105, %103 ], [ %229, %227 ]
  store ptr null, ptr %234, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %235) #8
  br label %237

237:                                              ; preds = %233, %227, %103
  %238 = phi i32 [ %105, %103 ], [ %229, %227 ], [ %236, %233 ]
  %239 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.platform_device, ptr %240, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.1, i32 noundef %238) #9
  br label %242

242:                                              ; preds = %237, %204, %156, %151, %108, %80, %55, %50, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_enable_dma(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %4, i32 60
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %0, i1 noundef zeroext %1) #8
  br label %17

17:                                               ; preds = %16, %12, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_request_dma(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = alloca %struct.dma_cap_mask_t, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = alloca %struct.dma_cap_mask_t, align 4
  %7 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %140, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tmio_mmc_data, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %140, label %21

21:                                               ; preds = %17, %2
  %22 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %126

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %140

29:                                               ; preds = %25
  %30 = tail call ptr @platform_get_resource(ptr noundef %10, i32 noundef 512, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #8
  %31 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %31, i8 0, i32 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %118, label %33

33:                                               ; preds = %29
  store i32 0, ptr %6, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %6) #8
  %34 = getelementptr i8, ptr %8, i32 52
  %35 = getelementptr i8, ptr %8, i32 56
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %1, align 4
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %40, ptr %4, align 4
  %41 = call ptr @dma_request_chan(ptr noundef %39, ptr noundef nonnull @.str.2) #8
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %43 = icmp eq ptr %41, null
  %44 = or i1 %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store ptr %41, ptr %22, align 4
  br label %54

46:                                               ; preds = %33
  %47 = icmp ne ptr %36, null
  %48 = icmp ne ptr %37, null
  %49 = and i1 %47, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store ptr null, ptr %22, align 4
  br label %118

51:                                               ; preds = %46
  %52 = call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store ptr %52, ptr %22, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %118, label %54

54:                                               ; preds = %51, %45
  %55 = phi ptr [ %41, %45 ], [ %52, %51 ]
  store i32 1, ptr %5, align 4
  %56 = load i32, ptr %30, align 4
  %57 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 48, %58
  %60 = add i32 %59, %56
  %61 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %34, align 4
  %63 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 2, i32 %62
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  store i32 0, ptr %66, align 4
  %67 = load ptr, ptr %55, align 4
  %68 = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 44
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %117, label %71

71:                                               ; preds = %54
  %72 = call i32 %69(ptr noundef nonnull %55, ptr noundef nonnull %5) #8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %35, align 4
  %76 = getelementptr inbounds %struct.tmio_mmc_data, ptr %1, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %9, align 4
  %79 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %80, ptr %3, align 4
  %81 = call ptr @dma_request_chan(ptr noundef %79, ptr noundef nonnull @.str.3) #8
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %83 = icmp eq ptr %81, null
  %84 = or i1 %82, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  store ptr %81, ptr %26, align 4
  br label %94

86:                                               ; preds = %74
  %87 = icmp ne ptr %75, null
  %88 = icmp ne ptr %77, null
  %89 = and i1 %87, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  store ptr null, ptr %26, align 4
  br label %117

91:                                               ; preds = %86
  %92 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull %75, ptr noundef nonnull %77, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  store ptr %92, ptr %26, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %117, label %94

94:                                               ; preds = %91, %85
  %95 = phi ptr [ %81, %85 ], [ %92, %91 ]
  store i32 2, ptr %5, align 4
  %96 = load i32, ptr %61, align 4
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr inbounds %struct.tmio_mmc_data, ptr %97, i32 0, i32 8
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, %96
  store i32 %100, ptr %66, align 4
  %101 = load i32, ptr %34, align 4
  %102 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  %103 = icmp eq i32 %101, 0
  %104 = select i1 %103, i32 2, i32 %101
  store i32 %104, ptr %102, align 4
  store i32 0, ptr %61, align 4
  %105 = load ptr, ptr %95, align 4
  %106 = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 44
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %136, label %109

109:                                              ; preds = %94
  %110 = call i32 %107(ptr noundef nonnull %95, ptr noundef nonnull %5) #8
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %136, label %112

112:                                              ; preds = %109
  %113 = call i32 @__get_free_pages(i32 noundef 3265, i32 noundef 0) #8
  %114 = inttoptr i32 %113 to ptr
  %115 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 19
  store ptr %114, ptr %115, align 4
  %116 = icmp eq i32 %113, 0
  br i1 %116, label %136, label %119

117:                                              ; preds = %91, %90, %71, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  br label %138

118:                                              ; preds = %51, %50, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  br label %140

119:                                              ; preds = %112
  %120 = getelementptr i8, ptr %8, i32 64
  store i32 0, ptr %120, align 4
  %121 = getelementptr i8, ptr %8, i32 68
  call void @__init_swait_queue_head(ptr noundef %121, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #8
  %122 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 17
  %123 = ptrtoint ptr %0 to i32
  call void @tasklet_init(ptr noundef %122, ptr noundef nonnull @renesas_sdhi_sys_dmac_issue_tasklet_fn, i32 noundef %123) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  %124 = load ptr, ptr %22, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %140, label %126

126:                                              ; preds = %119, %21
  %127 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %7, align 4
  %132 = getelementptr i8, ptr %131, i32 60
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  call void %133(ptr noundef %0, i1 noundef zeroext true) #8
  br label %140

136:                                              ; preds = %112, %109, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  %137 = load ptr, ptr %26, align 4
  call void @dma_release_channel(ptr noundef %137) #8
  store ptr null, ptr %26, align 4
  br label %138

138:                                              ; preds = %136, %117
  %139 = load ptr, ptr %22, align 4
  call void @dma_release_channel(ptr noundef %139) #8
  store ptr null, ptr %22, align 4
  br label %140

140:                                              ; preds = %138, %135, %130, %126, %119, %118, %25, %17, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_release_dma(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store ptr null, ptr %7, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %8) #8
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = ptrtoint ptr %13 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #8
  store ptr null, ptr %12, align 4
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_abort_dma(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %3, i32 60
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0, i1 noundef zeroext false) #8
  br label %16

16:                                               ; preds = %15, %11, %7, %1
  %17 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef nonnull %18) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 48
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void %31(ptr noundef nonnull %18) #8
  br label %34

34:                                               ; preds = %33, %28, %25, %20, %16
  %35 = load ptr, ptr %4, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 47
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = tail call i32 %40(ptr noundef nonnull %35) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load ptr, ptr %35, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 48
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void %48(ptr noundef nonnull %35) #8
  br label %51

51:                                               ; preds = %50, %45, %42, %37
  %52 = load ptr, ptr %4, align 4
  %53 = load ptr, ptr %2, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %17, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %53, i32 60
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void %60(ptr noundef %0, i1 noundef zeroext true) #8
  br label %63

63:                                               ; preds = %62, %58, %55, %51, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_dataend_dma(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void @complete(ptr noundef %4) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_dma_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = select i1 %12, i32 1, i32 2
  %17 = load ptr, ptr %15, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef %16, i32 noundef 0) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %25 = load i16, ptr %4, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %27 = getelementptr i8, ptr %3, i32 64
  tail call void @wait_for_completion(ptr noundef %27) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #8
  tail call void @tmio_mmc_do_data_irq(ptr noundef %0) #8
  br label %28

28:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %29 = load i16, ptr %4, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_do_data_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_issue_tasklet_fn(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %2, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %2, i32 0, i32 15
  %13 = getelementptr inbounds %struct.tmio_mmc_host, ptr %2, i32 0, i32 16
  %14 = select i1 %11, ptr %13, ptr %12
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi ptr [ null, %1 ], [ %15, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %2, i32 noundef 4) #8
  %20 = icmp eq ptr %17, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 50
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef nonnull %17) #8
  br label %25

25:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_enable_mmc_irqs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 613063, i64 613124}
!9 = !{i64 2154220697}
!10 = !{i64 2152004095}
!11 = !{i64 2152004302}
!12 = !{i64 2154223322}
!13 = !{i64 616080}
!14 = !{i64 2149221257}
!15 = !{i64 2149217081}
!16 = !{i64 2149217156, i64 2149217183, i64 2149217230, i64 2149217252, i64 2149217280, i64 2149217300}
!17 = !{i64 613308}
!18 = !{i64 2149245401}
