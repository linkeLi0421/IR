; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.brcmf_buscore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdiod_drive_str = type { i8, i8 }
%struct.brcmf_firmware_mapping = type { i32, i32, ptr }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_sdio = type { ptr, ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.pktq, i8, i8, i8, ptr, ptr, i8, %struct.brcmf_sdio_hdrinfo, i8, i8, i32, i32, i32, ptr, %struct.sk_buff_head, ptr, i32, ptr, ptr, i32, %struct.spinlock, i8, i8, i8, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, i16, i8, i32, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.timer_list, %struct.completion, ptr, i8, ptr, %struct.work_struct, i8, i8, i8, %struct.brcmf_sdio_count, i8, i8, i8, i8, i16, i16 }
%struct.pktq = type { i16, i16, i16, i16, [16 x %struct.pktq_prec] }
%struct.pktq_prec = type { %struct.sk_buff_head, i16 }
%struct.brcmf_sdio_hdrinfo = type { i8, i8, i16, i16, i16, i8, i8, i16 }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.brcmf_sdio_count = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.brcmf_fw_name = type { ptr, ptr }
%struct.brcmf_sdio_dev = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spinlock, i8, i32, i16, i32, i32, %struct.sg_table, [320 x i8], [320 x i8], i8, i32, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.brcmf_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8] }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.118 }
%union.anon.118 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmf_bus = type { %union.anon.91, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_fw_request = type { i16, i16, i32, ptr, [0 x %struct.brcmf_fw_item] }
%struct.brcmf_fw_item = type { ptr, i32, i16, %union.anon.125 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_firmware327 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43143-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [39 x i8] c"firmware=brcm/brcmfmac43241b0-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware329 = internal constant [39 x i8] c"firmware=brcm/brcmfmac43241b4-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware330 = internal constant [39 x i8] c"firmware=brcm/brcmfmac43241b5-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware331 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4329-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware332 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4330-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware333 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4334-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware334 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43340-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware335 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4335-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware336 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43362-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware337 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4339-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware338 = internal constant [39 x i8] c"firmware=brcm/brcmfmac43430a0-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware339 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43430-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [42 x i8] c"firmware=brcm/brcmfmac43430-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware341 = internal constant [39 x i8] c"firmware=brcm/brcmfmac43430b0-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43455-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware343 = internal constant [42 x i8] c"firmware=brcm/brcmfmac43455-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43456-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4354-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [41 x i8] c"firmware=brcm/brcmfmac4354-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4356-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [41 x i8] c"firmware=brcm/brcmfmac4356-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4359-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [36 x i8] c"firmware=brcm/brcmfmac4373-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [41 x i8] c"firmware=brcm/brcmfmac4373-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43012-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [42 x i8] c"firmware=brcm/brcmfmac43012-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [37 x i8] c"firmware=brcm/brcmfmac43752-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [42 x i8] c"firmware=brcm/brcmfmac43752-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [35 x i8] c"firmware=brcm/brcmfmac*-sdio.*.txt\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [35 x i8] c"firmware=brcm/brcmfmac*-pcie.*.txt\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [35 x i8] c"firmware=brcm/brcmfmac*-sdio.*.bin\00", section ".modinfo", align 1
@__func__.brcmf_sdio_isr = private unnamed_addr constant [15 x i8] c"brcmf_sdio_isr\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"bus is null pointer, exiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed backplane access\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"isr w/o interrupt configured!\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"brcmf_wq/%s\00", align 1
@__func__.brcmf_sdio_probe = private unnamed_addr constant [17 x i8] c"brcmf_sdio_probe\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"insufficient memory to create txworkqueue\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"brcmf_sdio_probe_attach failed\0A\00", align 1
@brcmf_sdio_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"&bus->ctrl_wait\00", align 1
@brcmf_sdio_probe.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"&bus->dcmd_resp_wait\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"brcmf_wdog/%s\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"\014brcmfmac: brcmf_watchdog thread failed to start\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"async firmware request failed: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.brcmf_sdio_dpc = private unnamed_addr constant [15 x i8] c"brcmf_sdio_dpc\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Dongle reports WR_OOSYNC\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Dongle reports RD_OOSYNC\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Dongle reports SBINT\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"sdio ctrlframe tx failed err=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"failed backplane access over SDIO, halting operation\0A\00", align 1
@__func__.brcmf_sdio_hostmail = private unnamed_addr constant [20 x i8] c"brcmf_sdio_hostmail\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"unexpected NAKHANDLED!\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Version mismatch, dongle reports %d, expecting %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Unknown mailbox data content: 0x%02x\0A\00", align 1
@__func__.brcmf_sdio_readframes = private unnamed_addr constant [22 x i8] c"brcmf_sdio_readframes\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"RXHEADER FAILED: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"brcmu_pkt_buf_get_skb failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"read %d bytes from channel %d failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"frame length mismatch:read %d, should be %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"readahead on control packet %d?\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"%s: glom superframe w/o descriptor!\0A\00", align 1
@__func__.brcmf_sdio_rxglom = private unnamed_addr constant [18 x i8] c"brcmf_sdio_rxglom\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"bad glomd len(%d), ignore descriptor\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"descriptor len %d bad: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"sublen %d not multiple of %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"bcm_pkt_buf_get_skb failed, num %d len %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"glom read of %d bytes failed: %d\0A\00", align 1
@__func__.brcmf_sdio_rxfail = private unnamed_addr constant [18 x i8] c"brcmf_sdio_rxfail\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"%sterminate frame%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"abort command, \00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [11 x i8] c", send NAK\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"count growing: last 0x%04x now 0x%04x\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"count never zeroed: last 0x%04x\0A\00", align 1
@__func__.brcmf_sdio_hdparse = private unnamed_addr constant [19 x i8] c"brcmf_sdio_hdparse\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"HW header checksum error\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"HW header length error\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"HW superframe header length error\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"HW subframe header length error\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Glom descriptor found in superframe head\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"HW header length too long\0A\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Wrong channel for superframe\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"Wrong channel for subframe\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"seq %d: bad data offset\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"seq %d: next length error\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"seq %d: max tx seq number error\0A\00", align 1
@__func__.brcmf_sdio_read_control = private unnamed_addr constant [24 x i8] c"brcmf_sdio_read_control\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"%d-byte control read exceeds %d-byte buffer\0A\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"%d-byte ctl frame (%d-byte ctl data) exceeds %d-byte limit\0A\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"read %d control bytes failed: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"last control frame is being processed.\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"include/linux/skbuff.h\00", align 1
@__func__.brcmf_sdio_txfail = private unnamed_addr constant [18 x i8] c"brcmf_sdio_txfail\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"sdio error, abort command and terminate frame\0A\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c\00", align 1
@__func__.brcmf_sdio_probe_attach = private unnamed_addr constant [24 x i8] c"brcmf_sdio_probe_attach\00", align 1
@.str.55 = private unnamed_addr constant [52 x i8] c"ChipClkCSR access: err %d wrote 0x%02x read 0x%02x\0A\00", align 1
@brcmf_sdio_buscore_ops = internal constant %struct.brcmf_buscore_ops { ptr @brcmf_sdio_buscore_read32, ptr @brcmf_sdio_buscore_write32, ptr @brcmf_sdio_buscoreprep, ptr null, ptr null, ptr @brcmf_sdio_buscore_activate }, align 4
@.str.56 = private unnamed_addr constant [27 x i8] c"brcmf_chip_attach failed!\0A\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"Failed to get device parameters\0A\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"error enabling KSO\0A\00", align 1
@__func__.brcmf_sdio_buscoreprep = private unnamed_addr constant [23 x i8] c"brcmf_sdio_buscoreprep\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"error writing for HT off\0A\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"ChipClkCSR access: wrote 0x%02x read 0x%02x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.61 = private unnamed_addr constant [38 x i8] c"timeout on ALPAV wait, clkval 0x%02x\0A\00", align 1
@__func__.brcmf_sdio_kso_init = private unnamed_addr constant [20 x i8] c"brcmf_sdio_kso_init\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"error reading SBSDIO_FUNC1_SLEEPCSR\0A\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"error writing SBSDIO_FUNC1_SLEEPCSR\0A\00", align 1
@sdiod_drvstr_tab1_1v8 = internal unnamed_addr constant [8 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 32, i8 6 }, %struct.sdiod_drive_str { i8 26, i8 7 }, %struct.sdiod_drive_str { i8 22, i8 4 }, %struct.sdiod_drive_str { i8 16, i8 5 }, %struct.sdiod_drive_str { i8 12, i8 2 }, %struct.sdiod_drive_str { i8 8, i8 3 }, %struct.sdiod_drive_str { i8 4, i8 0 }, %struct.sdiod_drive_str { i8 0, i8 1 }], align 1
@sdiod_drvstr_tab6_1v8 = internal unnamed_addr constant [4 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 3, i8 3 }, %struct.sdiod_drive_str { i8 2, i8 2 }, %struct.sdiod_drive_str { i8 1, i8 1 }, %struct.sdiod_drive_str zeroinitializer], align 1
@sdiod_drvstr_tab2_3v3 = internal unnamed_addr constant [4 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 16, i8 7 }, %struct.sdiod_drive_str { i8 12, i8 5 }, %struct.sdiod_drive_str { i8 8, i8 3 }, %struct.sdiod_drive_str { i8 4, i8 1 }], align 1
@__func__.brcmf_sdio_drivestrengthinit = private unnamed_addr constant [29 x i8] c"brcmf_sdio_drivestrengthinit\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"Invalid SDIO Drive strength for chip %s, strength=%d\0A\00", align 1
@sdiod_drive_strength_tab5_1v8 = internal unnamed_addr constant [7 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 6, i8 7 }, %struct.sdiod_drive_str { i8 5, i8 6 }, %struct.sdiod_drive_str { i8 4, i8 5 }, %struct.sdiod_drive_str { i8 3, i8 4 }, %struct.sdiod_drive_str { i8 2, i8 2 }, %struct.sdiod_drive_str { i8 1, i8 1 }, %struct.sdiod_drive_str zeroinitializer], align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@brcmf_sdio_fwnames = internal constant [23 x %struct.brcmf_firmware_mapping] [%struct.brcmf_firmware_mapping { i32 43143, i32 -1, ptr @BRCM_43143_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17188, i32 31, ptr @BRCM_43241B0_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17188, i32 32, ptr @BRCM_43241B4_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17188, i32 -64, ptr @BRCM_43241B5_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17193, i32 -1, ptr @BRCM_4329_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17200, i32 -1, ptr @BRCM_4330_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17204, i32 -1, ptr @BRCM_4334_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43340, i32 -1, ptr @BRCM_43340_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43341, i32 -1, ptr @BRCM_43340_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17205, i32 -1, ptr @BRCM_4335_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43362, i32 -2, ptr @BRCM_43362_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17209, i32 -1, ptr @BRCM_4339_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43430, i32 1, ptr @BRCM_43430A0_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43430, i32 2, ptr @BRCM_43430A1_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43430, i32 -4, ptr @BRCM_43430B0_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17221, i32 512, ptr @BRCM_43456_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17221, i32 -576, ptr @BRCM_43455_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17236, i32 -1, ptr @BRCM_4354_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17238, i32 -1, ptr @BRCM_4356_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17241, i32 -1, ptr @BRCM_4359_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17267, i32 -1, ptr @BRCM_4373_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43012, i32 -1, ptr @BRCM_43012_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43752, i32 -1, ptr @BRCM_43752_FIRMWARE_BASENAME }], align 4
@BRCM_43143_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43143-sdio\00", align 1
@BRCM_43241B0_FIRMWARE_BASENAME = internal constant [26 x i8] c"brcm/brcmfmac43241b0-sdio\00", align 1
@BRCM_43241B4_FIRMWARE_BASENAME = internal constant [26 x i8] c"brcm/brcmfmac43241b4-sdio\00", align 1
@BRCM_43241B5_FIRMWARE_BASENAME = internal constant [26 x i8] c"brcm/brcmfmac43241b5-sdio\00", align 1
@BRCM_4329_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4329-sdio\00", align 1
@BRCM_4330_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4330-sdio\00", align 1
@BRCM_4334_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4334-sdio\00", align 1
@BRCM_43340_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43340-sdio\00", align 1
@BRCM_4335_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4335-sdio\00", align 1
@BRCM_43362_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43362-sdio\00", align 1
@BRCM_4339_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4339-sdio\00", align 1
@BRCM_43430A0_FIRMWARE_BASENAME = internal constant [26 x i8] c"brcm/brcmfmac43430a0-sdio\00", align 1
@BRCM_43430A1_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43430-sdio\00", align 1
@BRCM_43430B0_FIRMWARE_BASENAME = internal constant [26 x i8] c"brcm/brcmfmac43430b0-sdio\00", align 1
@BRCM_43456_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43456-sdio\00", align 1
@BRCM_43455_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43455-sdio\00", align 1
@BRCM_4354_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4354-sdio\00", align 1
@BRCM_4356_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4356-sdio\00", align 1
@BRCM_4359_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4359-sdio\00", align 1
@BRCM_4373_FIRMWARE_BASENAME = internal constant [23 x i8] c"brcm/brcmfmac4373-sdio\00", align 1
@BRCM_43012_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43012-sdio\00", align 1
@BRCM_43752_FIRMWARE_BASENAME = internal constant [24 x i8] c"brcm/brcmfmac43752-sdio\00", align 1
@__func__.brcmf_sdio_firmware_callback = private unnamed_addr constant [29 x i8] c"brcmf_sdio_firmware_callback\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"Failed to force clock for F2: err %d\0A\00", align 1
@brcmf_sdio_bus_ops = internal constant %struct.brcmf_bus_ops { ptr @brcmf_sdio_bus_preinit, ptr @brcmf_sdio_bus_stop, ptr @brcmf_sdio_bus_txdata, ptr @brcmf_sdio_bus_txctl, ptr @brcmf_sdio_bus_rxctl, ptr @brcmf_sdio_bus_gettxq, ptr @brcmf_sdio_wowl_config, ptr @brcmf_sdio_bus_get_ramsize, ptr @brcmf_sdio_bus_get_memdump, ptr @brcmf_sdio_get_fwname, ptr @brcmf_sdio_debugfs_create, ptr @brcmf_sdio_bus_reset }, align 4
@.str.69 = private unnamed_addr constant [25 x i8] c"intr register failed:%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"brcmf_alloc failed\0A\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"brcmf_attach failed\0A\00", align 1
@__func__.brcmf_sdio_download_firmware = private unnamed_addr constant [29 x i8] c"brcmf_sdio_download_firmware\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"dongle image file download failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"dongle nvram file download failed\0A\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"error getting out of ARM core reset\0A\00", align 1
@__func__.brcmf_sdio_download_code_file = private unnamed_addr constant [30 x i8] c"brcmf_sdio_download_code_file\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"error %d on writing %d membytes at 0x%08x\0A\00", align 1
@__func__.brcmf_sdio_download_nvram = private unnamed_addr constant [26 x i8] c"brcmf_sdio_download_nvram\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"error %d on writing %d nvram bytes at 0x%08x\0A\00", align 1
@__func__.brcmf_sdio_sr_init = private unnamed_addr constant [19 x i8] c"brcmf_sdio_sr_init\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"error reading SBSDIO_FUNC1_WAKEUPCTRL\0A\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"error writing SBSDIO_FUNC1_WAKEUPCTRL\0A\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"error writing SDIO_CCCR_BRCM_CARDCAP\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"error writing SBSDIO_FUNC1_CHIPCLKCSR\0A\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"bus:txglom\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"bus:txglomalign\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"bus:rxglom\00", align 1
@__func__.brcmf_sdio_bus_stop = private unnamed_addr constant [20 x i8] c"brcmf_sdio_bus_stop\00", align 1
@__func__.brcmf_sdio_bus_txdata = private unnamed_addr constant [22 x i8] c"brcmf_sdio_bus_txdata\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"out of bus->txq !!!\0A\00", align 1
@__func__.brcmf_sdio_prec_enq = private unnamed_addr constant [20 x i8] c"brcmf_sdio_prec_enq\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"brcmu_pktq_pdeq_tail() failed\0A\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"brcmu_pktq_penq() failed\0A\00", align 1
@__func__.brcmf_sdio_bus_rxctl = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_rxctl\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"resumed on timeout\0A\00", align 1
@__func__.brcmf_sdio_bus_get_memdump = private unnamed_addr constant [27 x i8] c"brcmf_sdio_bus_get_memdump\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"error %d on reading %d membytes at 0x%08x\0A\00", align 1
@__func__.brcmf_sdio_bus_reset = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_reset\00", align 1
@.str.89 = private unnamed_addr constant [49 x i8] c"Failed to probe after sdio device reset: ret %d\0A\00", align 1
@__func__.brcmf_sdio_clkctl = private unnamed_addr constant [18 x i8] c"brcmf_sdio_clkctl\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"request for %d -> %d\0A\00", align 1
@__func__.brcmf_sdio_htclk = private unnamed_addr constant [17 x i8] c"brcmf_sdio_htclk\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"HT Avail request error: %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"HT Avail read error: %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"Devctl error setting CA: %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"HT Avail timeout (%d): clkctl 0x%02x\0A\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"Failed access turning clock off: %d\0A\00", align 1
@__func__.brcmf_sdio_bus_sleep = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_sleep\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"error while changing bus sleep state %d\0A\00", align 1
@__func__.brcmf_sdio_kso_control = private unnamed_addr constant [23 x i8] c"brcmf_sdio_kso_control\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"max tries: rd_val=0x%x err=%d\0A\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @__UNIQUE_ID_firmware329, ptr @__UNIQUE_ID_firmware330, ptr @__UNIQUE_ID_firmware331, ptr @__UNIQUE_ID_firmware332, ptr @__UNIQUE_ID_firmware333, ptr @__UNIQUE_ID_firmware334, ptr @__UNIQUE_ID_firmware335, ptr @__UNIQUE_ID_firmware336, ptr @__UNIQUE_ID_firmware337, ptr @__UNIQUE_ID_firmware338, ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_trigger_dpc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 56
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  store i8 1, ptr %2, align 4
  %6 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 54
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 55
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %8) #12
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_isr(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @net_ratelimit() #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %5
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str) #12
  br label %64

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br i1 %1, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 32
  store volatile i32 1, ptr %14, align 4
  br label %50

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %18 = getelementptr inbounds %struct.brcmf_core, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 32
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @brcmf_sdiod_readl(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %3) #12
  %23 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %46

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %22
  %33 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 5
  %34 = lshr i32 %32, 4
  %35 = and i32 %34, 1
  store volatile i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr %0, align 4
  call void @brcmf_sdiod_writel(ptr noundef %39, i32 noundef %20, i32 noundef %32, ptr noundef nonnull %3) #12
  %40 = load i32, ptr %23, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 4
  %42 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #12, !srcloc !10
  %43 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 %32, ptr elementtype(i32) %42) #12, !srcloc !11
  %44 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38, %28
  %47 = call i32 @net_ratelimit() #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str.1) #12
  br label %50

50:                                               ; preds = %49, %46, %38, %37, %13
  %51 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 30
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @net_ratelimit() #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str.2) #12
  br label %58

58:                                               ; preds = %57, %54, %50
  %59 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 56
  store i8 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 54
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 55
  %63 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %61, ptr noundef %62) #12
  br label %64

64:                                               ; preds = %58, %8, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_sdio_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x %struct.brcmf_fw_name], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 712) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %355, label %8

8:                                                ; preds = %1
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 4
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 22
  %11 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 22, i32 2
  store i32 0, ptr %11, align 8
  store ptr %10, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 22, i32 0, i32 0, i32 1
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 22, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 19
  store i32 20, ptr %14, align 8
  %15 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 18
  store i32 50, ptr %15, align 4
  %16 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 20
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 10
  store i8 -1, ptr %17, align 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.sdio_func, ptr %18, i32 0, i32 1, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.sdio_func, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %8
  %26 = phi ptr [ %24, %22 ], [ %20, %8 ]
  %27 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 655386, i32 noundef 1, ptr noundef %26) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = tail call i32 @net_ratelimit() #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %355, label %32

32:                                               ; preds = %29
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.4) #12
  br label %355

33:                                               ; preds = %25
  tail call void @brcmf_sdiod_freezer_count(ptr noundef %0) #12
  %34 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 55
  store i32 -32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 55, i32 1
  store volatile ptr %35, ptr %35, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 55, i32 1, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 55, i32 2
  store ptr @brcmf_sdio_dataworker, ptr %37, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 54
  store ptr %27, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  %39 = load ptr, ptr %6, align 8
  %40 = load ptr, ptr %39, align 4
  tail call void @sdio_claim_host(ptr noundef %40) #12
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr inbounds %struct.sdio_func, ptr %41, i32 0, i32 6
  %43 = load i16, ptr %42, align 4
  %44 = tail call i32 @brcmf_chip_enum_base(i16 noundef zeroext %43) #12
  %45 = load ptr, ptr %39, align 4
  call void @sdio_writeb(ptr noundef %45, i8 noundef zeroext 40, i32 noundef 65550, ptr noundef nonnull %4) #12
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load ptr, ptr %39, align 4
  %50 = call zeroext i8 @sdio_readb(ptr noundef %49, i32 noundef 65550, ptr noundef nonnull %4) #12
  %51 = load i32, ptr %4, align 4
  %52 = icmp eq i32 %51, 0
  %53 = and i8 %50, 63
  %54 = icmp eq i8 %53, 40
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %63, label %56

56:                                               ; preds = %48, %33
  %57 = phi i8 [ %50, %48 ], [ 0, %33 ]
  %58 = call i32 @net_ratelimit() #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %256, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %4, align 4
  %62 = zext i8 %57 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe_attach, ptr noundef nonnull @.str.55, i32 noundef %61, i32 noundef 40, i32 noundef %62) #12
  br label %256

63:                                               ; preds = %48
  %64 = load ptr, ptr %39, align 4
  %65 = getelementptr inbounds %struct.sdio_func, ptr %64, i32 0, i32 6
  %66 = load i16, ptr %65, align 4
  %67 = call ptr @brcmf_chip_attach(ptr noundef %39, i16 noundef zeroext %66, ptr noundef nonnull @brcmf_sdio_buscore_ops) #12
  %68 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = call i32 @net_ratelimit() #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe_attach, ptr noundef nonnull @.str.56) #12
  br label %74

74:                                               ; preds = %73, %70
  store ptr null, ptr %68, align 4
  br label %256

75:                                               ; preds = %63
  %76 = call ptr @brcmf_chip_get_core(ptr noundef %67, i16 noundef zeroext 2089) #12
  %77 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 2
  store ptr %76, ptr %77, align 8
  %78 = icmp eq ptr %76, null
  br i1 %78, label %256, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %68, align 4
  %81 = call ptr @brcmf_chip_get_core(ptr noundef %80, i16 noundef zeroext 2048) #12
  %82 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %39, i32 0, i32 3
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %256, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %39, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %68, align 4
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.brcmf_chip, ptr %87, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = call ptr @brcmf_get_module_param(ptr noundef %86, i32 noundef 0, i32 noundef %88, i32 noundef %90) #12
  %92 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %39, i32 0, i32 7
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = call i32 @net_ratelimit() #12
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %256, label %97

97:                                               ; preds = %94
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe_attach, ptr noundef nonnull @.str.57) #12
  br label %256

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 64
  store i16 4, ptr %99, align 4
  %100 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 65
  store i16 4, ptr %100, align 2
  %101 = load ptr, ptr %92, align 4
  %102 = getelementptr inbounds %struct.brcmf_mp_device, ptr %101, i32 0, i32 8, i32 0, i32 6
  %103 = load i16, ptr %102, align 2
  %104 = icmp ugt i16 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  store i16 %103, ptr %99, align 4
  %106 = load ptr, ptr %92, align 4
  br label %107

107:                                              ; preds = %105, %98
  %108 = phi ptr [ %106, %105 ], [ %101, %98 ]
  %109 = getelementptr inbounds %struct.brcmf_mp_device, ptr %108, i32 0, i32 8, i32 0, i32 7
  %110 = load i16, ptr %109, align 4
  %111 = icmp ugt i16 %110, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i16 %110, ptr %100, align 2
  br label %113

113:                                              ; preds = %112, %107
  call void @brcmf_sdiod_sgtable_alloc(ptr noundef %39) #12
  %114 = load ptr, ptr %39, align 4
  %115 = call i32 @sdio_get_host_pm_caps(ptr noundef %114) #12
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %39, align 4
  %120 = call i32 @sdio_get_host_pm_caps(ptr noundef %119) #12
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load ptr, ptr %92, align 4
  %125 = getelementptr inbounds %struct.brcmf_mp_device, ptr %124, i32 0, i32 8, i32 0, i32 2
  %126 = load i8, ptr %125, align 4, !range !8
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123, %118
  %129 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %39, i32 0, i32 6
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.brcmf_bus, ptr %130, i32 0, i32 10
  store i8 1, ptr %131, align 1
  br label %132

132:                                              ; preds = %128, %123, %113
  %133 = load ptr, ptr %77, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %134 = getelementptr inbounds %struct.brcmf_core, ptr %133, i32 0, i32 1
  %135 = load i16, ptr %134, align 2
  %136 = icmp ult i16 %135, 12
  br i1 %136, label %158, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %6, align 8
  %139 = load ptr, ptr %138, align 4
  %140 = call zeroext i8 @sdio_readb(ptr noundef %139, i32 noundef 65567, ptr noundef nonnull %3) #12
  %141 = load i32, ptr %3, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = call i32 @net_ratelimit() #12
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %161, label %159

146:                                              ; preds = %137
  %147 = and i8 %140, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = or i8 %140, 1
  %151 = load ptr, ptr %6, align 8
  %152 = load ptr, ptr %151, align 4
  call void @sdio_writeb(ptr noundef %152, i8 noundef zeroext %150, i32 noundef 65567, ptr noundef nonnull %3) #12
  %153 = load i32, ptr %3, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = call i32 @net_ratelimit() #12
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %159

158:                                              ; preds = %149, %146, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %168

159:                                              ; preds = %155, %143
  %160 = phi ptr [ @.str.62, %143 ], [ @.str.63, %155 ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_kso_init, ptr noundef nonnull %160) #12
  br label %161

161:                                              ; preds = %159, %155, %143
  %162 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = call i32 @net_ratelimit() #12
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %256, label %167

167:                                              ; preds = %164
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe_attach, ptr noundef nonnull @.str.58) #12
  br label %256

168:                                              ; preds = %161, %158
  %169 = load ptr, ptr %92, align 4
  %170 = getelementptr inbounds %struct.brcmf_mp_device, ptr %169, i32 0, i32 8, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 6, i32 %171
  %174 = load ptr, ptr %68, align 4
  %175 = getelementptr inbounds %struct.brcmf_chip, ptr %174, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 268435456
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %224, label %179

179:                                              ; preds = %168
  %180 = load i32, ptr %174, align 4
  %181 = shl i32 %180, 16
  %182 = getelementptr inbounds %struct.brcmf_chip, ptr %174, i32 0, i32 6
  %183 = load i32, ptr %182, align 4
  %184 = or i32 %181, %183
  switch i32 %184, label %224 [
    i32 1127219212, label %194
    i32 1127481361, label %185
    i32 -1467547631, label %186
    i32 -1453195251, label %193
  ]

185:                                              ; preds = %179
  br label %194

186:                                              ; preds = %179
  %187 = icmp ugt i32 %173, 3
  br i1 %187, label %194, label %188

188:                                              ; preds = %186
  %189 = call i32 @net_ratelimit() #12
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %224, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.brcmf_chip, ptr %174, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_drivestrengthinit, ptr noundef nonnull @.str.64, ptr noundef %192, i32 noundef %173) #12
  br label %224

193:                                              ; preds = %179
  br label %194

194:                                              ; preds = %193, %186, %185, %179
  %195 = phi i32 [ 0, %186 ], [ 11, %179 ], [ 11, %185 ], [ 11, %193 ]
  %196 = phi i32 [ -8, %186 ], [ -14337, %179 ], [ -6145, %185 ], [ -14337, %193 ]
  %197 = phi ptr [ @sdiod_drvstr_tab2_3v3, %186 ], [ @sdiod_drvstr_tab1_1v8, %179 ], [ @sdiod_drvstr_tab6_1v8, %185 ], [ @sdiod_drive_strength_tab5_1v8, %193 ]
  %198 = call ptr @brcmf_chip_get_pmu(ptr noundef %174) #12
  %199 = load i8, ptr %197, align 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %215, label %201

201:                                              ; preds = %210, %194
  %202 = phi i8 [ %213, %210 ], [ %199, %194 ]
  %203 = phi i32 [ %211, %210 ], [ 0, %194 ]
  %204 = zext i8 %202 to i32
  %205 = icmp ult i32 %173, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = getelementptr %struct.sdiod_drive_str, ptr %197, i32 %203, i32 1
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  br label %215

210:                                              ; preds = %201
  %211 = add i32 %203, 1
  %212 = getelementptr %struct.sdiod_drive_str, ptr %197, i32 %211
  %213 = load i8, ptr %212, align 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %201

215:                                              ; preds = %210, %206, %194
  %216 = phi i32 [ %209, %206 ], [ 0, %194 ], [ 0, %210 ]
  %217 = getelementptr inbounds %struct.brcmf_core, ptr %198, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, 1616
  call void @brcmf_sdiod_writel(ptr noundef %39, i32 noundef %219, i32 noundef 1, ptr noundef null) #12
  %220 = call i32 @brcmf_sdiod_readl(ptr noundef %39, i32 noundef %219, ptr noundef null) #12
  %221 = and i32 %220, %196
  %222 = shl i32 %216, %195
  %223 = or i32 %221, %222
  call void @brcmf_sdiod_writel(ptr noundef %39, i32 noundef %219, i32 noundef %223, ptr noundef null) #12
  br label %224

224:                                              ; preds = %215, %191, %188, %179, %168
  %225 = load ptr, ptr %39, align 4
  %226 = call zeroext i8 @sdio_f0_readb(ptr noundef %225, i32 noundef 241, ptr noundef nonnull %4) #12
  %227 = load i32, ptr %4, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %224
  %230 = or i8 %226, 2
  %231 = load ptr, ptr %39, align 4
  call void @sdio_f0_writeb(ptr noundef %231, i8 noundef zeroext %230, i32 noundef 241, ptr noundef nonnull %4) #12
  %232 = load i32, ptr %4, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %256

234:                                              ; preds = %229
  %235 = load ptr, ptr %68, align 4
  %236 = call ptr @brcmf_chip_get_pmu(ptr noundef %235) #12
  %237 = getelementptr inbounds %struct.brcmf_core, ptr %236, i32 0, i32 2
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 1536
  %240 = call i32 @brcmf_sdiod_readl(ptr noundef %39, i32 noundef %239, ptr noundef nonnull %4) #12
  %241 = load i32, ptr %4, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %234
  %244 = or i32 %240, 16384
  call void @brcmf_sdiod_writel(ptr noundef %39, i32 noundef %239, i32 noundef %244, ptr noundef nonnull %4) #12
  %245 = load i32, ptr %4, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %243
  %248 = load ptr, ptr %39, align 4
  call void @sdio_release_host(ptr noundef %248) #12
  %249 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 8
  call void @brcmu_pktq_init(ptr noundef %249, i32 noundef 8, i32 noundef 2048) #12
  %250 = load i16, ptr %99, align 4
  %251 = zext i16 %250 to i32
  %252 = add nuw nsw i32 %251, 64
  %253 = call noalias align 64 ptr @__kmalloc(i32 noundef %252, i32 noundef 3520) #14
  %254 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 12
  store ptr %253, ptr %254, align 4
  %255 = icmp eq ptr %253, null
  br i1 %255, label %258, label %262

256:                                              ; preds = %243, %234, %229, %224, %167, %164, %97, %94, %79, %75, %74, %60, %56
  %257 = load ptr, ptr %39, align 4
  call void @sdio_release_host(ptr noundef %257) #12
  br label %258

258:                                              ; preds = %256, %247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %259 = call i32 @net_ratelimit() #12
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %355, label %261

261:                                              ; preds = %258
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.5) #12
  br label %355

262:                                              ; preds = %247
  %263 = load i16, ptr %99, align 4
  %264 = ptrtoint ptr %253 to i32
  %265 = zext i16 %263 to i32
  %266 = add i32 %264, -1
  %267 = add i32 %266, %265
  %268 = urem i32 %267, %265
  %269 = sub i32 %267, %268
  %270 = inttoptr i32 %269 to ptr
  %271 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 13
  store ptr %270, ptr %271, align 8
  %272 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 30
  store i8 1, ptr %272, align 1
  %273 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 31
  store i8 0, ptr %273, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %274 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 28
  store i32 0, ptr %274, align 8
  %275 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 47
  store i32 0, ptr %275, align 8
  %276 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 48
  call void @__init_waitqueue_head(ptr noundef %276, ptr noundef nonnull @.str.6, ptr noundef nonnull @brcmf_sdio_probe.__key) #12
  %277 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 49
  call void @__init_waitqueue_head(ptr noundef %277, ptr noundef nonnull @.str.8, ptr noundef nonnull @brcmf_sdio_probe.__key.7) #12
  %278 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 50
  call void @init_timer_key(ptr noundef %278, ptr noundef nonnull @brcmf_sdio_watchdog, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %279 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 51
  store i32 0, ptr %279, align 8
  %280 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 51, i32 1
  call void @__init_swait_queue_head(ptr noundef %280, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #12
  %281 = load ptr, ptr %0, align 4
  %282 = getelementptr inbounds %struct.sdio_func, ptr %281, i32 0, i32 1, i32 3
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %262
  %286 = getelementptr inbounds %struct.sdio_func, ptr %281, i32 0, i32 1
  %287 = load ptr, ptr %286, align 4
  br label %288

288:                                              ; preds = %285, %262
  %289 = phi ptr [ %287, %285 ], [ %283, %262 ]
  %290 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @brcmf_sdio_watchdog_thread, ptr noundef %6, i32 noundef -1, ptr noundef nonnull @.str.9, ptr noundef %289) #12
  %291 = icmp ugt ptr %290, inttoptr (i32 -4096 to ptr)
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = call i32 @wake_up_process(ptr noundef %290) #12
  %294 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 52
  store ptr %290, ptr %294, align 8
  br label %298

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 52
  store ptr %290, ptr %296, align 8
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  store ptr null, ptr %296, align 8
  br label %298

298:                                              ; preds = %295, %292
  %299 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 56
  store i8 0, ptr %299, align 4
  %300 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 57
  store i8 0, ptr %300, align 1
  %301 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 62
  store i8 12, ptr %301, align 2
  %302 = load ptr, ptr %6, align 8
  %303 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %302, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.sdio_func, ptr %304, i32 0, i32 8
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 6
  store i32 %306, ptr %307, align 8
  %308 = call i32 @llvm.umin.i32(i32 %306, i32 512)
  %309 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 7
  store i32 %308, ptr %309, align 4
  %310 = load ptr, ptr %302, align 4
  call void @sdio_claim_host(ptr noundef %310) #12
  %311 = load ptr, ptr %6, align 8
  %312 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %311, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = call i32 @sdio_disable_func(ptr noundef %313) #12
  %315 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 41
  store i8 0, ptr %315, align 1
  %316 = load ptr, ptr %6, align 8
  %317 = load ptr, ptr %316, align 4
  call void @sdio_writeb(ptr noundef %317, i8 noundef zeroext 0, i32 noundef 65550, ptr noundef null) #12
  %318 = load ptr, ptr %6, align 8
  %319 = load ptr, ptr %318, align 4
  call void @sdio_release_host(ptr noundef %319) #12
  %320 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 36
  store i32 1, ptr %320, align 8
  %321 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 37
  store i32 1, ptr %321, align 4
  %322 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 39
  store i32 0, ptr %322, align 4
  %323 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 60
  store i8 0, ptr %323, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  store ptr @.str.66, ptr %2, align 4
  %324 = getelementptr inbounds %struct.brcmf_fw_name, ptr %2, i32 0, i32 1
  %325 = load ptr, ptr %6, align 8
  %326 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %325, i32 0, i32 18
  store ptr %326, ptr %324, align 4
  %327 = getelementptr inbounds %struct.brcmf_fw_name, ptr %2, i32 1
  store ptr @.str.67, ptr %327, align 4
  %328 = getelementptr inbounds %struct.brcmf_fw_name, ptr %2, i32 1, i32 1
  %329 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %325, i32 0, i32 19
  store ptr %329, ptr %328, align 4
  %330 = load ptr, ptr %68, align 4
  %331 = load i32, ptr %330, align 4
  %332 = getelementptr inbounds %struct.brcmf_chip, ptr %330, i32 0, i32 1
  %333 = load i32, ptr %332, align 4
  %334 = call ptr @brcmf_fw_alloc_request(i32 noundef %331, i32 noundef %333, ptr noundef nonnull @brcmf_sdio_fwnames, i32 noundef 23, ptr noundef nonnull %2, i32 noundef 2) #12
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %337

336:                                              ; preds = %298
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %355

337:                                              ; preds = %298
  %338 = getelementptr inbounds %struct.brcmf_fw_request, ptr %334, i32 1, i32 2
  store i32 0, ptr %338, align 4
  %339 = getelementptr %struct.brcmf_fw_request, ptr %334, i32 3
  store i32 1, ptr %339, align 4
  %340 = load ptr, ptr %6, align 8
  %341 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %340, i32 0, i32 7
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.brcmf_mp_device, ptr %342, i32 0, i32 7
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.brcmf_fw_request, ptr %334, i32 0, i32 3
  store ptr %344, ptr %345, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %346 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 5
  %347 = load ptr, ptr %346, align 4
  %348 = call i32 @brcmf_fw_get_firmwares(ptr noundef %347, ptr noundef nonnull %334, ptr noundef nonnull @brcmf_sdio_firmware_callback) #12
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %337
  %351 = call i32 @net_ratelimit() #12
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %350
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.11, i32 noundef %348) #12
  br label %354

354:                                              ; preds = %353, %350
  call void @kfree(ptr noundef nonnull %334) #12
  br label %355

355:                                              ; preds = %354, %336, %261, %258, %32, %29, %1
  call void @brcmf_sdio_remove(ptr noundef %6)
  br label %356

356:                                              ; preds = %355, %337
  %357 = phi ptr [ null, %355 ], [ %6, %337 ]
  ret ptr %357
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_freezer_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdio_dataworker(ptr noundef %0) #0 {
  %2 = alloca %struct.sk_buff_head, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_sdio_hdrinfo, align 2
  %6 = alloca %struct.brcmf_sdio_hdrinfo, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr i8, ptr %0, i32 -572
  %11 = getelementptr i8, ptr %0, i32 17
  store i8 1, ptr %11, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %12 = getelementptr i8, ptr %0, i32 16
  %13 = load volatile i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %1607, label %15

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -564
  %17 = getelementptr i8, ptr %0, i32 -180
  %18 = getelementptr i8, ptr %0, i32 132
  %19 = getelementptr i8, ptr %0, i32 -108
  %20 = getelementptr i8, ptr %0, i32 -124
  %21 = getelementptr i8, ptr %0, i32 104
  %22 = getelementptr i8, ptr %0, i32 -560
  %23 = getelementptr i8, ptr %0, i32 -552
  %24 = getelementptr i8, ptr %0, i32 -556
  %25 = getelementptr i8, ptr %0, i32 -186
  %26 = getelementptr i8, ptr %0, i32 -128
  %27 = getelementptr i8, ptr %0, i32 -212
  %28 = getelementptr i8, ptr %0, i32 72
  %29 = getelementptr i8, ptr %0, i32 76
  %30 = getelementptr i8, ptr %0, i32 68
  %31 = getelementptr i8, ptr %0, i32 -184
  %32 = getelementptr i8, ptr %0, i32 -198
  %33 = getelementptr i8, ptr %0, i32 -185
  %34 = getelementptr i8, ptr %0, i32 -200
  %35 = getelementptr i8, ptr %0, i32 -172
  %36 = getelementptr i8, ptr %0, i32 138
  %37 = getelementptr i8, ptr %0, i32 -548
  %38 = getelementptr i8, ptr %0, i32 -168
  %39 = getelementptr i8, ptr %0, i32 -196
  %40 = getelementptr i8, ptr %0, i32 96
  %41 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %5, i32 0, i32 2
  %42 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %5, i32 0, i32 4
  %43 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %5, i32 0, i32 5
  %44 = getelementptr i8, ptr %0, i32 88
  %45 = getelementptr i8, ptr %0, i32 84
  %46 = getelementptr i8, ptr %0, i32 80
  %47 = getelementptr i8, ptr %0, i32 -194
  %48 = getelementptr i8, ptr %0, i32 -204
  %49 = getelementptr i8, ptr %0, i32 92
  %50 = getelementptr i8, ptr %0, i32 -197
  %51 = getelementptr i8, ptr %0, i32 -544
  %52 = getelementptr i8, ptr %0, i32 136
  %53 = getelementptr i8, ptr %0, i32 128
  %54 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %6, i32 0, i32 2
  %55 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %6, i32 0, i32 4
  %56 = getelementptr i8, ptr %0, i32 -192
  %57 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %6, i32 0, i32 5
  %59 = getelementptr i8, ptr %0, i32 -190
  %60 = getelementptr i8, ptr %0, i32 -148
  %61 = getelementptr i8, ptr %0, i32 -152
  %62 = getelementptr i8, ptr %0, i32 52
  %63 = getelementptr i8, ptr %0, i32 48
  %64 = getelementptr i8, ptr %0, i32 -132
  %65 = getelementptr i8, ptr %0, i32 -144
  %66 = getelementptr i8, ptr %0, i32 -140
  %67 = getelementptr i8, ptr %0, i32 -136
  %68 = getelementptr i8, ptr %0, i32 -60
  %69 = getelementptr i8, ptr %0, i32 56
  %70 = getelementptr i8, ptr %0, i32 -82
  %71 = getelementptr i8, ptr %0, i32 -210
  %72 = getelementptr i8, ptr %0, i32 -211
  %73 = getelementptr i8, ptr %0, i32 -88
  %74 = getelementptr i8, ptr %0, i32 -84
  %75 = getelementptr i8, ptr %0, i32 134
  %76 = getelementptr i8, ptr %0, i32 135
  %77 = getelementptr i8, ptr %0, i32 -80
  %78 = getelementptr i8, ptr %0, i32 -72
  %79 = getelementptr i8, ptr %0, i32 -540
  %80 = getelementptr i8, ptr %0, i32 -176
  %81 = getelementptr inbounds %struct.anon.120, ptr %2, i32 0, i32 1
  %82 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %83 = getelementptr i8, ptr %0, i32 -76
  %84 = getelementptr i8, ptr %0, i32 100
  %85 = getelementptr i8, ptr %0, i32 -127
  %86 = getelementptr i8, ptr %0, i32 18
  %87 = getelementptr i8, ptr %0, i32 -534
  %88 = getelementptr i8, ptr %0, i32 -100
  br label %89

89:                                               ; preds = %1604, %15
  store i8 0, ptr %12, align 4
  %90 = load ptr, ptr %10, align 4
  %91 = load ptr, ptr %16, align 4
  %92 = getelementptr inbounds %struct.brcmf_core, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 32
  %95 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4
  %96 = load ptr, ptr %90, align 4
  call void @sdio_claim_host(ptr noundef %96) #12
  %97 = load i8, ptr %18, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  %100 = load i32, ptr %19, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load ptr, ptr %10, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = call zeroext i8 @sdio_readb(ptr noundef %104, i32 noundef 65550, ptr noundef nonnull %9) #12
  %106 = icmp ugt i8 %105, -65
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load ptr, ptr %10, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = call zeroext i8 @sdio_readb(ptr noundef %109, i32 noundef 65545, ptr noundef nonnull %9) #12
  %111 = and i8 %110, -5
  %112 = load ptr, ptr %10, align 4
  %113 = load ptr, ptr %112, align 4
  call void @sdio_writeb(ptr noundef %113, i8 noundef zeroext %111, i32 noundef 65545, ptr noundef nonnull %9) #12
  store i32 3, ptr %19, align 4
  br label %114

114:                                              ; preds = %107, %102, %99, %89
  %115 = call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %116 = load volatile i32, ptr %20, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %114
  store volatile i32 0, ptr %20, align 4
  %119 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %120 = getelementptr inbounds %struct.brcmf_core, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, 32
  %123 = load ptr, ptr %10, align 4
  %124 = call i32 @brcmf_sdiod_readl(ptr noundef %123, i32 noundef %122, ptr noundef nonnull %8) #12
  %125 = load i32, ptr %21, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %21, align 4
  %127 = load i32, ptr %8, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %118
  %130 = load i32, ptr %22, align 4
  %131 = and i32 %130, %124
  %132 = lshr i32 %131, 4
  %133 = and i32 %132, 1
  store volatile i32 %133, ptr %23, align 4
  %134 = icmp eq i32 %131, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %10, align 4
  call void @brcmf_sdiod_writel(ptr noundef %136, i32 noundef %122, i32 noundef %131, ptr noundef nonnull %8) #12
  %137 = load i32, ptr %21, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %21, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #12, !srcloc !10
  %139 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %131, ptr elementtype(i32) %24) #12, !srcloc !11
  %140 = load i32, ptr %8, align 4
  br label %141

141:                                              ; preds = %135, %129, %118
  %142 = phi i32 [ %127, %118 ], [ %140, %135 ], [ 0, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  store i32 %142, ptr %9, align 4
  br label %143

143:                                              ; preds = %141, %114
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #12, !srcloc !10
  %144 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %24) #12, !srcloc !14
  %145 = extractvalue { i32, i32 } %144, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %146 = and i32 %145, 32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %143
  %149 = and i32 %145, -33
  call void @brcmf_sdiod_writel(ptr noundef %90, i32 noundef %94, i32 noundef 32, ptr noundef nonnull %9) #12
  %150 = call i32 @brcmf_sdiod_readl(ptr noundef %90, i32 noundef %94, ptr noundef nonnull %9) #12
  %151 = load i32, ptr %21, align 4
  %152 = add i32 %151, 2
  store i32 %152, ptr %21, align 4
  %153 = and i32 %150, 48
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  store volatile i32 %155, ptr %23, align 4
  %156 = load i32, ptr %22, align 4
  %157 = and i32 %156, %150
  %158 = or i32 %157, %149
  br label %159

159:                                              ; preds = %148, %143
  %160 = phi i32 [ %158, %148 ], [ %145, %143 ]
  %161 = and i32 %160, 128
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %243, label %163

163:                                              ; preds = %159
  %164 = and i32 %160, -129
  %165 = load ptr, ptr %10, align 4
  %166 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %167 = getelementptr inbounds %struct.brcmf_core, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 76
  %170 = call i32 @brcmf_sdiod_readl(ptr noundef %165, i32 noundef %169, ptr noundef nonnull %7) #12
  %171 = load i32, ptr %7, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load i32, ptr %167, align 4
  %175 = add i32 %174, 64
  call void @brcmf_sdiod_writel(ptr noundef %165, i32 noundef %175, i32 noundef 2, ptr noundef nonnull %7) #12
  br label %176

176:                                              ; preds = %173, %163
  %177 = load i32, ptr %21, align 4
  %178 = add i32 %177, 2
  store i32 %178, ptr %21, align 4
  %179 = and i32 %170, 16
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr %165, align 4
  %183 = getelementptr inbounds %struct.sdio_func, ptr %182, i32 0, i32 1
  call void @brcmf_fw_crashed(ptr noundef %183) #12
  br label %184

184:                                              ; preds = %181, %176
  %185 = and i32 %170, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %184
  %188 = load i8, ptr %25, align 2, !range !8
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = call i32 @net_ratelimit() #12
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.17) #12
  br label %194

194:                                              ; preds = %193, %190, %187
  store i8 0, ptr %25, align 2
  br label %195

195:                                              ; preds = %194, %184
  %196 = phi i32 [ 64, %194 ], [ 0, %184 ]
  %197 = and i32 %170, 10
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %195
  %200 = lshr i32 %170, 16
  %201 = trunc i32 %200 to i8
  store i8 %201, ptr %26, align 4
  %202 = and i32 %170, 16711680
  %203 = icmp eq i32 %202, 262144
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = call i32 @net_ratelimit() #12
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i8, ptr %26, align 4
  %209 = zext i8 %208 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.18, i32 noundef %209, i32 noundef 4) #12
  br label %210

210:                                              ; preds = %207, %204, %199, %195
  %211 = and i32 %170, 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %234, label %213

213:                                              ; preds = %210
  %214 = lshr i32 %170, 24
  %215 = trunc i32 %214 to i8
  %216 = load i8, ptr %27, align 4
  %217 = zext i8 %216 to i32
  %218 = xor i32 %217, -1
  %219 = and i32 %214, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %213
  %222 = load i32, ptr %28, align 4
  %223 = add i32 %222, 1
  store i32 %223, ptr %28, align 4
  br label %224

224:                                              ; preds = %221, %213
  %225 = xor i32 %214, -1
  %226 = and i32 %217, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = load i32, ptr %29, align 4
  %230 = add i32 %229, 1
  store i32 %230, ptr %29, align 4
  br label %231

231:                                              ; preds = %228, %224
  %232 = load i32, ptr %30, align 4
  %233 = add i32 %232, 1
  store i32 %233, ptr %30, align 4
  store i8 %215, ptr %27, align 4
  br label %234

234:                                              ; preds = %231, %210
  %235 = and i32 %170, 65504
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = call i32 @net_ratelimit() #12
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.19, i32 noundef %170) #12
  br label %241

241:                                              ; preds = %240, %237, %234
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %242 = or i32 %196, %164
  br label %243

243:                                              ; preds = %241, %159
  %244 = phi i32 [ %242, %241 ], [ %160, %159 ]
  %245 = load ptr, ptr %10, align 4
  %246 = load ptr, ptr %245, align 4
  call void @sdio_release_host(ptr noundef %246) #12
  %247 = and i32 %244, 256
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = call i32 @net_ratelimit() #12
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.12) #12
  br label %253

253:                                              ; preds = %252, %249
  %254 = and i32 %244, -257
  br label %255

255:                                              ; preds = %253, %243
  %256 = phi i32 [ %254, %253 ], [ %244, %243 ]
  %257 = and i32 %256, 512
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %255
  %260 = call i32 @net_ratelimit() #12
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.13) #12
  br label %263

263:                                              ; preds = %262, %259
  %264 = and i32 %256, -513
  br label %265

265:                                              ; preds = %263, %255
  %266 = phi i32 [ %264, %263 ], [ %256, %255 ]
  %267 = and i32 %266, 268435456
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %265
  %270 = call i32 @net_ratelimit() #12
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.14) #12
  br label %273

273:                                              ; preds = %272, %269
  %274 = and i32 %266, -268435457
  br label %275

275:                                              ; preds = %273, %265
  %276 = phi i32 [ %274, %273 ], [ %266, %265 ]
  %277 = and i32 %276, -536870913
  %278 = load i8, ptr %25, align 2, !range !8
  %279 = icmp eq i8 %278, 0
  %280 = and i32 %276, -536870977
  %281 = select i1 %279, i32 %277, i32 %280
  %282 = and i32 %281, 64
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %968, label %284

284:                                              ; preds = %275
  %285 = load i32, ptr %19, align 4
  %286 = icmp eq i32 %285, 3
  br i1 %286, label %287, label %971

287:                                              ; preds = %284
  %288 = load i32, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %6, i8 0, i32 12, i1 false) #12, !annotation !9
  store i8 1, ptr %33, align 1
  %289 = load i8, ptr %34, align 4
  store i8 %289, ptr %32, align 2
  %290 = icmp ne i32 %288, 0
  %291 = and i1 %279, %290
  br i1 %291, label %292, label %957

292:                                              ; preds = %947, %287
  %293 = phi i8 [ %951, %947 ], [ %289, %287 ]
  %294 = phi i32 [ %952, %947 ], [ %288, %287 ]
  %295 = phi i8 [ %948, %947 ], [ 0, %287 ]
  %296 = load ptr, ptr %10, align 4
  %297 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %296, i32 0, i32 21
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %963

300:                                              ; preds = %292
  %301 = load ptr, ptr %35, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load ptr, ptr %38, align 4
  %305 = icmp eq ptr %304, %38
  br i1 %305, label %567, label %306

306:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %5, i8 0, i32 12, i1 false) #12, !annotation !9
  br label %419

307:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %5, i8 0, i32 12, i1 false) #12, !annotation !9
  %308 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 5
  %309 = load i32, ptr %308, align 8
  %310 = trunc i32 %309 to i16
  %311 = icmp ne i16 %310, 0
  %312 = and i32 %309, 1
  %313 = icmp eq i32 %312, 0
  %314 = and i1 %311, %313
  br i1 %314, label %320, label %315

315:                                              ; preds = %307
  %316 = call i32 @net_ratelimit() #12
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %408, label %318

318:                                              ; preds = %315
  %319 = and i32 %309, 65535
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.26, i32 noundef %319) #12
  br label %408

320:                                              ; preds = %307
  %321 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 17
  %322 = load ptr, ptr %321, align 4
  br label %323

323:                                              ; preds = %406, %320
  %324 = phi i16 [ %310, %320 ], [ %329, %406 ]
  %325 = phi i32 [ 0, %320 ], [ %371, %406 ]
  %326 = phi ptr [ %322, %320 ], [ %330, %406 ]
  %327 = phi i8 [ 0, %320 ], [ %407, %406 ]
  %328 = load i16, ptr %326, align 1
  %329 = add i16 %324, -2
  %330 = getelementptr i8, ptr %326, i32 2
  %331 = zext i16 %328 to i32
  %332 = icmp ult i16 %328, 12
  br i1 %332, label %337, label %333

333:                                              ; preds = %323
  %334 = icmp eq i8 %327, 0
  %335 = icmp ult i16 %328, 24
  %336 = select i1 %334, i1 %335, i1 false
  br i1 %336, label %337, label %344

337:                                              ; preds = %333, %323
  %338 = phi i8 [ %327, %323 ], [ 0, %333 ]
  %339 = call i32 @net_ratelimit() #12
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %408, label %341

341:                                              ; preds = %337
  %342 = zext i16 %328 to i32
  %343 = zext i8 %338 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.27, i32 noundef %343, i32 noundef %342) #12
  br label %408

344:                                              ; preds = %333
  %345 = load i16, ptr %36, align 2
  %346 = urem i16 %328, %345
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %344
  %349 = call i32 @net_ratelimit() #12
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load i16, ptr %36, align 2
  %353 = zext i16 %352 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.28, i32 noundef %331, i32 noundef %353) #12
  br label %354

354:                                              ; preds = %351, %348, %344
  %355 = and i32 %325, 65535
  %356 = add nuw nsw i32 %355, %331
  %357 = icmp eq i16 %329, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %354
  %359 = load i32, ptr %37, align 4
  %360 = and i32 %356, 65535
  %361 = add nsw i32 %360, -1
  %362 = add i32 %361, %359
  %363 = urem i32 %362, %359
  %364 = sub i32 %362, %363
  %365 = sub i32 %364, %356
  %366 = trunc i32 %365 to i16
  %367 = add i16 %328, %366
  %368 = zext i16 %367 to i32
  br label %369

369:                                              ; preds = %358, %354
  %370 = phi i32 [ %368, %358 ], [ %331, %354 ]
  %371 = phi i32 [ %364, %358 ], [ %356, %354 ]
  %372 = load i16, ptr %36, align 2
  %373 = zext i16 %372 to i32
  %374 = add nuw nsw i32 %370, %373
  %375 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %374) #12
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %382

377:                                              ; preds = %369
  %378 = call i32 @net_ratelimit() #12
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %408, label %380

380:                                              ; preds = %377
  %381 = zext i8 %327 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.29, i32 noundef %381, i32 noundef %370) #12
  br label %408

382:                                              ; preds = %369
  call void @skb_queue_tail(ptr noundef %38, ptr noundef nonnull %375) #12
  %383 = load i16, ptr %36, align 2
  %384 = zext i16 %383 to i32
  %385 = getelementptr inbounds %struct.sk_buff, ptr %375, i32 0, i32 17
  %386 = load ptr, ptr %385, align 4
  %387 = ptrtoint ptr %386 to i32
  %388 = add nsw i32 %384, -1
  %389 = add i32 %388, %387
  %390 = urem i32 %389, %384
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %396, label %392

392:                                              ; preds = %382
  %393 = add i32 %390, %387
  %394 = sub i32 %389, %393
  %395 = call ptr @skb_pull(ptr noundef nonnull %375, i32 noundef %394) #12
  br label %396

396:                                              ; preds = %392, %382
  %397 = getelementptr inbounds %struct.sk_buff, ptr %375, i32 0, i32 6
  %398 = load i32, ptr %397, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %401, label %400, !prof !16

400:                                              ; preds = %396
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %406

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.sk_buff, ptr %375, i32 0, i32 5
  store i32 %370, ptr %402, align 8
  %403 = load ptr, ptr %385, align 4
  %404 = getelementptr i8, ptr %403, i32 %370
  %405 = getelementptr inbounds %struct.sk_buff, ptr %375, i32 0, i32 14
  store ptr %404, ptr %405, align 8
  br label %406

406:                                              ; preds = %401, %400
  %407 = add i8 %327, 1
  br i1 %357, label %415, label %323

408:                                              ; preds = %380, %377, %341, %337, %318, %315
  %409 = load ptr, ptr %38, align 4
  %410 = icmp eq ptr %409, %38
  br i1 %410, label %415, label %411

411:                                              ; preds = %411, %408
  %412 = phi ptr [ %413, %411 ], [ %409, %408 ]
  %413 = load ptr, ptr %412, align 8
  call void @skb_unlink(ptr noundef %412, ptr noundef %38) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %412) #12
  %414 = icmp eq ptr %413, %38
  br i1 %414, label %415, label %411

415:                                              ; preds = %411, %408, %406
  %416 = phi i8 [ 0, %408 ], [ 0, %411 ], [ %407, %406 ]
  %417 = load ptr, ptr %35, align 4
  call void @brcmu_pkt_buf_free_skb(ptr noundef %417) #12
  store ptr null, ptr %35, align 4
  store i16 0, ptr %39, align 2
  %418 = load ptr, ptr %38, align 4
  br label %419

419:                                              ; preds = %415, %306
  %420 = phi ptr [ %418, %415 ], [ %304, %306 ]
  %421 = phi i8 [ %416, %415 ], [ 0, %306 ]
  %422 = icmp eq ptr %420, %38
  br i1 %422, label %558, label %423

423:                                              ; preds = %423, %419
  %424 = phi ptr [ %429, %423 ], [ %420, %419 ]
  %425 = phi i32 [ %428, %423 ], [ 0, %419 ]
  %426 = getelementptr inbounds %struct.sk_buff, ptr %424, i32 0, i32 5
  %427 = load i32, ptr %426, align 8
  %428 = add i32 %427, %425
  %429 = load ptr, ptr %424, align 4
  %430 = icmp eq ptr %429, %38
  br i1 %430, label %431, label %423

431:                                              ; preds = %423
  %432 = load ptr, ptr %10, align 4
  %433 = load ptr, ptr %432, align 4
  call void @sdio_claim_host(ptr noundef %433) #12
  %434 = load ptr, ptr %10, align 4
  %435 = and i32 %428, 65535
  %436 = call i32 @brcmf_sdiod_recv_chain(ptr noundef %434, ptr noundef %38, i32 noundef %435) #12
  %437 = load ptr, ptr %10, align 4
  %438 = load ptr, ptr %437, align 4
  call void @sdio_release_host(ptr noundef %438) #12
  %439 = load i32, ptr %40, align 4
  %440 = add i32 %439, 1
  store i32 %440, ptr %40, align 4
  %441 = icmp slt i32 %436, 0
  br i1 %441, label %442, label %460

442:                                              ; preds = %431
  %443 = call i32 @net_ratelimit() #12
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %442
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.30, i32 noundef %435, i32 noundef %436) #12
  br label %446

446:                                              ; preds = %445, %442
  %447 = load ptr, ptr %10, align 4
  %448 = load ptr, ptr %447, align 4
  call void @sdio_claim_host(ptr noundef %448) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %449 = load i32, ptr %46, align 4
  %450 = add i32 %449, 1
  store i32 %450, ptr %46, align 4
  %451 = load ptr, ptr %38, align 4
  %452 = icmp eq ptr %451, %38
  br i1 %452, label %457, label %453

453:                                              ; preds = %453, %446
  %454 = phi ptr [ %455, %453 ], [ %451, %446 ]
  %455 = load ptr, ptr %454, align 8
  call void @skb_unlink(ptr noundef %454, ptr noundef %38) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %454) #12
  %456 = icmp eq ptr %455, %38
  br i1 %456, label %457, label %453

457:                                              ; preds = %453, %446
  %458 = load ptr, ptr %10, align 4
  %459 = load ptr, ptr %458, align 4
  call void @sdio_release_host(ptr noundef %459) #12
  br label %558

460:                                              ; preds = %431
  %461 = trunc i32 %428 to i16
  %462 = getelementptr inbounds %struct.sk_buff, ptr %420, i32 0, i32 17
  store i8 %293, ptr %5, align 2
  store i16 %461, ptr %41, align 2
  %463 = load ptr, ptr %10, align 4
  %464 = load ptr, ptr %463, align 4
  call void @sdio_claim_host(ptr noundef %464) #12
  %465 = load ptr, ptr %462, align 4
  %466 = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %10, ptr noundef %465, ptr noundef nonnull %5, i32 noundef 1) #12
  %467 = load ptr, ptr %10, align 4
  %468 = load ptr, ptr %467, align 4
  call void @sdio_release_host(ptr noundef %468) #12
  %469 = load i16, ptr %42, align 2
  %470 = shl i16 %469, 4
  store i16 %470, ptr %39, align 2
  %471 = load i8, ptr %43, align 2
  %472 = zext i8 %471 to i32
  %473 = call ptr @skb_pull(ptr noundef %420, i32 noundef %472) #12
  %474 = load ptr, ptr %38, align 4
  %475 = icmp eq ptr %474, %38
  %476 = icmp ne i32 %466, 0
  %477 = select i1 %475, i1 true, i1 %476
  br i1 %477, label %498, label %478

478:                                              ; preds = %478, %460
  %479 = phi ptr [ %494, %478 ], [ %474, %460 ]
  %480 = phi i8 [ %485, %478 ], [ %293, %460 ]
  %481 = phi i8 [ %493, %478 ], [ 0, %460 ]
  %482 = getelementptr inbounds %struct.sk_buff, ptr %479, i32 0, i32 5
  %483 = load i32, ptr %482, align 8
  %484 = trunc i32 %483 to i16
  store i16 %484, ptr %41, align 2
  %485 = add i8 %480, 1
  store i8 %480, ptr %5, align 2
  %486 = load ptr, ptr %10, align 4
  %487 = load ptr, ptr %486, align 4
  call void @sdio_claim_host(ptr noundef %487) #12
  %488 = getelementptr inbounds %struct.sk_buff, ptr %479, i32 0, i32 17
  %489 = load ptr, ptr %488, align 4
  %490 = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %10, ptr noundef %489, ptr noundef nonnull %5, i32 noundef 2) #12
  %491 = load ptr, ptr %10, align 4
  %492 = load ptr, ptr %491, align 4
  call void @sdio_release_host(ptr noundef %492) #12
  %493 = add i8 %481, 1
  %494 = load ptr, ptr %479, align 4
  %495 = icmp eq ptr %494, %38
  %496 = icmp ne i32 %490, 0
  %497 = select i1 %495, i1 true, i1 %496
  br i1 %497, label %498, label %478

498:                                              ; preds = %478, %460
  %499 = phi i8 [ 0, %460 ], [ %493, %478 ]
  %500 = phi i1 [ %476, %460 ], [ %496, %478 ]
  br i1 %500, label %501, label %515

501:                                              ; preds = %498
  %502 = load ptr, ptr %10, align 4
  %503 = load ptr, ptr %502, align 4
  call void @sdio_claim_host(ptr noundef %503) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %504 = load i32, ptr %46, align 4
  %505 = add i32 %504, 1
  store i32 %505, ptr %46, align 4
  %506 = load ptr, ptr %38, align 4
  %507 = icmp eq ptr %506, %38
  br i1 %507, label %512, label %508

508:                                              ; preds = %508, %501
  %509 = phi ptr [ %510, %508 ], [ %506, %501 ]
  %510 = load ptr, ptr %509, align 8
  call void @skb_unlink(ptr noundef %509, ptr noundef %38) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %509) #12
  %511 = icmp eq ptr %510, %38
  br i1 %511, label %512, label %508

512:                                              ; preds = %508, %501
  %513 = load ptr, ptr %10, align 4
  %514 = load ptr, ptr %513, align 4
  call void @sdio_release_host(ptr noundef %514) #12
  store i16 0, ptr %39, align 2
  br label %558

515:                                              ; preds = %498
  %516 = load ptr, ptr %38, align 4
  %517 = icmp eq ptr %516, %38
  br i1 %517, label %555, label %518

518:                                              ; preds = %553, %515
  %519 = phi ptr [ %520, %553 ], [ %516, %515 ]
  %520 = load ptr, ptr %519, align 8
  %521 = getelementptr inbounds %struct.sk_buff, ptr %519, i32 0, i32 17
  %522 = load ptr, ptr %521, align 4
  %523 = getelementptr i8, ptr %522, i32 4
  %524 = load i32, ptr %523, align 4
  %525 = lshr i32 %524, 24
  %526 = getelementptr inbounds %struct.sk_buff, ptr %519, i32 0, i32 5
  %527 = getelementptr inbounds %struct.sk_buff, ptr %519, i32 0, i32 6
  %528 = load i32, ptr %527, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %531, label %530, !prof !16

530:                                              ; preds = %518
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %536

531:                                              ; preds = %518
  %532 = load i16, ptr %522, align 1
  %533 = zext i16 %532 to i32
  store i32 %533, ptr %526, align 8
  %534 = getelementptr i8, ptr %522, i32 %533
  %535 = getelementptr inbounds %struct.sk_buff, ptr %519, i32 0, i32 14
  store ptr %534, ptr %535, align 8
  br label %536

536:                                              ; preds = %531, %530
  %537 = call ptr @skb_pull(ptr noundef %519, i32 noundef %525) #12
  %538 = load i32, ptr %526, align 8
  %539 = icmp eq i32 %538, 0
  call void @skb_unlink(ptr noundef %519, ptr noundef %38) #12
  br i1 %539, label %540, label %541

540:                                              ; preds = %536
  call void @brcmu_pkt_buf_free_skb(ptr noundef %519) #12
  br label %553

541:                                              ; preds = %536
  %542 = load i32, ptr %523, align 4
  %543 = and i32 %542, 3840
  %544 = icmp eq i32 %543, 256
  %545 = load ptr, ptr %10, align 4
  %546 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %545, i32 0, i32 5
  %547 = load ptr, ptr %546, align 4
  br i1 %544, label %548, label %549

548:                                              ; preds = %541
  call void @brcmf_rx_event(ptr noundef %547, ptr noundef %519) #12
  br label %550

549:                                              ; preds = %541
  call void @brcmf_rx_frame(ptr noundef %547, ptr noundef %519, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %550

550:                                              ; preds = %549, %548
  %551 = load i32, ptr %44, align 4
  %552 = add i32 %551, 1
  store i32 %552, ptr %44, align 4
  br label %553

553:                                              ; preds = %550, %540
  %554 = icmp eq ptr %520, %38
  br i1 %554, label %555, label %518

555:                                              ; preds = %553, %515
  %556 = load i32, ptr %45, align 4
  %557 = add i32 %556, 1
  store i32 %557, ptr %45, align 4
  br label %558

558:                                              ; preds = %555, %512, %457, %419
  %559 = phi i8 [ 0, %457 ], [ 0, %512 ], [ %421, %419 ], [ %499, %555 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  %560 = zext i8 %559 to i32
  %561 = add i8 %559, -1
  %562 = load i8, ptr %32, align 2
  %563 = add i8 %561, %562
  store i8 %563, ptr %32, align 2
  %564 = icmp ugt i32 %294, %560
  %565 = sub i32 %294, %560
  %566 = select i1 %564, i32 %565, i32 1
  br label %947

567:                                              ; preds = %303
  %568 = load i16, ptr %39, align 2
  store i16 %568, ptr %47, align 2
  %569 = load ptr, ptr %296, align 4
  call void @sdio_claim_host(ptr noundef %569) #12
  %570 = load i16, ptr %39, align 2
  %571 = icmp eq i16 %570, 0
  br i1 %571, label %572, label %725

572:                                              ; preds = %567
  %573 = load ptr, ptr %10, align 4
  %574 = load ptr, ptr %48, align 4
  %575 = call i32 @brcmf_sdiod_recv_buf(ptr noundef %573, ptr noundef %574, i32 noundef 64) #12
  %576 = load i32, ptr %49, align 4
  %577 = add i32 %576, 1
  store i32 %577, ptr %49, align 4
  %578 = icmp slt i32 %575, 0
  br i1 %578, label %579, label %588

579:                                              ; preds = %572
  %580 = call i32 @net_ratelimit() #12
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %583, label %582

582:                                              ; preds = %579
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.20, i32 noundef %575) #12
  br label %583

583:                                              ; preds = %582, %579
  %584 = load i32, ptr %69, align 4
  %585 = add i32 %584, 1
  store i32 %585, ptr %69, align 4
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %586 = load ptr, ptr %10, align 4
  %587 = load ptr, ptr %586, align 4
  call void @sdio_release_host(ptr noundef %587) #12
  br label %947

588:                                              ; preds = %572
  %589 = load ptr, ptr %48, align 4
  %590 = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %10, ptr noundef %589, ptr noundef %32, i32 noundef 0) #12
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %600, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr %10, align 4
  %594 = load ptr, ptr %593, align 4
  call void @sdio_release_host(ptr noundef %594) #12
  %595 = load i8, ptr %33, align 1, !range !8
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %597, label %947

597:                                              ; preds = %592
  %598 = load i8, ptr %25, align 2
  %599 = load i8, ptr %32, align 2
  br label %957

600:                                              ; preds = %588
  %601 = load i8, ptr %50, align 1
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %603, label %722

603:                                              ; preds = %600
  %604 = load ptr, ptr %48, align 4
  %605 = load i16, ptr %39, align 2
  %606 = zext i16 %605 to i32
  %607 = load i8, ptr %59, align 2
  %608 = zext i8 %607 to i32
  %609 = load i32, ptr %60, align 4
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %717, label %611

611:                                              ; preds = %603
  %612 = call noalias ptr @vzalloc(i32 noundef %609) #14
  %613 = icmp eq ptr %612, null
  br i1 %613, label %717, label %614

614:                                              ; preds = %611
  %615 = load ptr, ptr %61, align 4
  %616 = ptrtoint ptr %615 to i32
  %617 = load i16, ptr %52, align 4
  %618 = zext i16 %617 to i32
  %619 = urem i32 %616, %618
  %620 = icmp eq i32 %619, 0
  %621 = sub nsw i32 %618, %619
  %622 = select i1 %620, i32 0, i32 %621
  %623 = getelementptr i8, ptr %615, i32 %622
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %612, ptr noundef align 1 dereferenceable(64) %604, i32 64, i1 false) #12
  %624 = icmp ult i16 %605, 65
  br i1 %624, label %706, label %625

625:                                              ; preds = %614
  %626 = add nsw i32 %606, -64
  %627 = load i32, ptr %51, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %650, label %629

629:                                              ; preds = %625
  %630 = load i32, ptr %37, align 4
  %631 = icmp ne i32 %630, 0
  %632 = icmp ugt i32 %626, %630
  %633 = and i1 %631, %632
  br i1 %633, label %634, label %650

634:                                              ; preds = %629
  %635 = urem i32 %626, %630
  %636 = sub i32 %630, %635
  %637 = icmp ule i32 %636, %627
  %638 = icmp ult i32 %636, %630
  %639 = and i1 %637, %638
  br i1 %639, label %640, label %658

640:                                              ; preds = %634
  %641 = add i32 %636, %606
  %642 = load ptr, ptr %10, align 4
  %643 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %642, i32 0, i32 6
  %644 = load ptr, ptr %643, align 4
  %645 = getelementptr inbounds %struct.brcmf_bus, ptr %644, i32 0, i32 6
  %646 = load i32, ptr %645, align 4
  %647 = icmp ult i32 %641, %646
  %648 = select i1 %647, i32 %636, i32 0
  %649 = add i32 %648, %626
  br label %658

650:                                              ; preds = %629, %625
  %651 = trunc i32 %626 to i16
  %652 = urem i16 %651, %617
  %653 = icmp eq i16 %652, 0
  br i1 %653, label %658, label %654

654:                                              ; preds = %650
  %655 = zext i16 %652 to i32
  %656 = add nsw i32 %626, %618
  %657 = sub nsw i32 %656, %655
  br label %658

658:                                              ; preds = %654, %650, %640, %634
  %659 = phi i32 [ %626, %634 ], [ %657, %654 ], [ %626, %650 ], [ %649, %640 ]
  %660 = add i32 %659, 64
  %661 = load ptr, ptr %10, align 4
  %662 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %661, i32 0, i32 6
  %663 = load ptr, ptr %662, align 4
  %664 = getelementptr inbounds %struct.brcmf_bus, ptr %663, i32 0, i32 6
  %665 = load i32, ptr %664, align 4
  %666 = icmp ugt i32 %660, %665
  br i1 %666, label %667, label %677

667:                                              ; preds = %658
  %668 = call i32 @net_ratelimit() #12
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %676, label %670

670:                                              ; preds = %667
  %671 = load ptr, ptr %10, align 4
  %672 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %671, i32 0, i32 6
  %673 = load ptr, ptr %672, align 4
  %674 = getelementptr inbounds %struct.brcmf_bus, ptr %673, i32 0, i32 6
  %675 = load i32, ptr %674, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.48, i32 noundef %659, i32 noundef %675) #12
  br label %676

676:                                              ; preds = %670, %667
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %717

677:                                              ; preds = %658
  %678 = sub nsw i32 %606, %608
  %679 = icmp ugt i32 %678, %665
  br i1 %679, label %680, label %692

680:                                              ; preds = %677
  %681 = call i32 @net_ratelimit() #12
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %689, label %683

683:                                              ; preds = %680
  %684 = load ptr, ptr %10, align 4
  %685 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %684, i32 0, i32 6
  %686 = load ptr, ptr %685, align 4
  %687 = getelementptr inbounds %struct.brcmf_bus, ptr %686, i32 0, i32 6
  %688 = load i32, ptr %687, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.49, i32 noundef %606, i32 noundef %678, i32 noundef %688) #12
  br label %689

689:                                              ; preds = %683, %680
  %690 = load i32, ptr %63, align 4
  %691 = add i32 %690, 1
  store i32 %691, ptr %63, align 4
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %717

692:                                              ; preds = %677
  %693 = call i32 @brcmf_sdiod_recv_buf(ptr noundef %661, ptr noundef %623, i32 noundef %659) #12
  %694 = load i32, ptr %40, align 4
  %695 = add i32 %694, 1
  store i32 %695, ptr %40, align 4
  %696 = icmp slt i32 %693, 0
  br i1 %696, label %697, label %704

697:                                              ; preds = %692
  %698 = call i32 @net_ratelimit() #12
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %701, label %700

700:                                              ; preds = %697
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.50, i32 noundef %659, i32 noundef %693) #12
  br label %701

701:                                              ; preds = %700, %697
  %702 = load i32, ptr %62, align 4
  %703 = add i32 %702, 1
  store i32 %703, ptr %62, align 4
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %717

704:                                              ; preds = %692
  %705 = getelementptr i8, ptr %612, i32 64
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %705, ptr align 1 %623, i32 %659, i1 false) #12
  br label %706

706:                                              ; preds = %704, %614
  call void @_raw_spin_lock_bh(ptr noundef %64) #12
  %707 = load ptr, ptr %65, align 4
  %708 = icmp eq ptr %707, null
  br i1 %708, label %714, label %709

709:                                              ; preds = %706
  %710 = call i32 @net_ratelimit() #12
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %713, label %712

712:                                              ; preds = %709
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.51) #12
  br label %713

713:                                              ; preds = %712, %709
  call void @_raw_spin_unlock_bh(ptr noundef %64) #12
  call void @vfree(ptr noundef nonnull %612) #12
  br label %717

714:                                              ; preds = %706
  %715 = getelementptr i8, ptr %612, i32 %608
  store ptr %715, ptr %65, align 4
  store ptr %612, ptr %66, align 4
  %716 = sub nsw i32 %606, %608
  store i32 %716, ptr %67, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %64) #12
  br label %717

717:                                              ; preds = %714, %713, %701, %689, %676, %611, %603
  call void @__wake_up(ptr noundef %68, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %718 = load i16, ptr %56, align 2
  %719 = shl i16 %718, 4
  store i16 %719, ptr %39, align 2
  store i16 0, ptr %56, align 2
  store i8 1, ptr %50, align 1
  %720 = load ptr, ptr %10, align 4
  %721 = load ptr, ptr %720, align 4
  call void @sdio_release_host(ptr noundef %721) #12
  br label %947

722:                                              ; preds = %600
  %723 = load i16, ptr %39, align 2
  %724 = call i16 @llvm.usub.sat.i16(i16 %723, i16 64) #12
  store i16 %724, ptr %47, align 2
  br label %725

725:                                              ; preds = %722, %567
  %726 = phi i8 [ %295, %567 ], [ 64, %722 ]
  %727 = load i32, ptr %51, align 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %748, label %729

729:                                              ; preds = %725
  %730 = load i32, ptr %37, align 4
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %748, label %732

732:                                              ; preds = %729
  %733 = load i16, ptr %47, align 2
  %734 = zext i16 %733 to i32
  %735 = icmp ult i32 %730, %734
  br i1 %735, label %736, label %748

736:                                              ; preds = %732
  %737 = urem i32 %734, %730
  %738 = sub i32 %730, %737
  %739 = and i32 %738, 65535
  %740 = icmp ule i32 %739, %727
  %741 = icmp ult i32 %739, %730
  %742 = select i1 %740, i1 %741, i1 false
  br i1 %742, label %743, label %758

743:                                              ; preds = %736
  %744 = add nuw nsw i32 %739, %734
  %745 = icmp ult i32 %744, 1984
  br i1 %745, label %746, label %758

746:                                              ; preds = %743
  %747 = trunc i32 %744 to i16
  br label %756

748:                                              ; preds = %732, %729, %725
  %749 = load i16, ptr %47, align 2
  %750 = load i16, ptr %52, align 4
  %751 = urem i16 %749, %750
  %752 = icmp eq i16 %751, 0
  br i1 %752, label %758, label %753

753:                                              ; preds = %748
  %754 = add i16 %750, %749
  %755 = sub i16 %754, %751
  br label %756

756:                                              ; preds = %753, %746
  %757 = phi i16 [ %755, %753 ], [ %747, %746 ]
  store i16 %757, ptr %47, align 2
  br label %758

758:                                              ; preds = %756, %748, %743, %736
  %759 = phi i16 [ %733, %736 ], [ %733, %743 ], [ %749, %748 ], [ %757, %756 ]
  %760 = zext i16 %759 to i32
  %761 = zext i8 %726 to i32
  %762 = add nuw nsw i32 %760, %761
  %763 = load i16, ptr %52, align 4
  %764 = zext i16 %763 to i32
  %765 = add nuw nsw i32 %762, %764
  %766 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %765) #12
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %777

768:                                              ; preds = %758
  %769 = call i32 @net_ratelimit() #12
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %772, label %771

771:                                              ; preds = %768
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.21) #12
  br label %772

772:                                              ; preds = %771, %768
  %773 = load i8, ptr %50, align 1
  %774 = icmp eq i8 %773, 1
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext %774) #12
  %775 = load ptr, ptr %10, align 4
  %776 = load ptr, ptr %775, align 4
  call void @sdio_release_host(ptr noundef %776) #12
  br label %947

777:                                              ; preds = %758
  %778 = call ptr @skb_pull(ptr noundef nonnull %766, i32 noundef %761) #12
  %779 = load i16, ptr %47, align 2
  %780 = zext i16 %779 to i32
  %781 = load i16, ptr %52, align 4
  %782 = zext i16 %781 to i32
  %783 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 17
  %784 = load ptr, ptr %783, align 4
  %785 = ptrtoint ptr %784 to i32
  %786 = add nsw i32 %782, -1
  %787 = add i32 %786, %785
  %788 = urem i32 %787, %782
  %789 = icmp eq i32 %786, %788
  br i1 %789, label %794, label %790

790:                                              ; preds = %777
  %791 = add i32 %788, %785
  %792 = sub i32 %787, %791
  %793 = call ptr @skb_pull(ptr noundef nonnull %766, i32 noundef %792) #12
  br label %794

794:                                              ; preds = %790, %777
  %795 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 6
  %796 = load i32, ptr %795, align 4
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %799, label %798, !prof !16

798:                                              ; preds = %794
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %804

799:                                              ; preds = %794
  %800 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 5
  store i32 %780, ptr %800, align 8
  %801 = load ptr, ptr %783, align 4
  %802 = getelementptr i8, ptr %801, i32 %780
  %803 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 14
  store ptr %802, ptr %803, align 8
  br label %804

804:                                              ; preds = %799, %798
  %805 = load ptr, ptr %10, align 4
  %806 = call i32 @brcmf_sdiod_recv_pkt(ptr noundef %805, ptr noundef nonnull %766) #12
  %807 = load i32, ptr %40, align 4
  %808 = add i32 %807, 1
  store i32 %808, ptr %40, align 4
  %809 = load ptr, ptr %10, align 4
  %810 = load ptr, ptr %809, align 4
  call void @sdio_release_host(ptr noundef %810) #12
  %811 = icmp slt i32 %806, 0
  br i1 %811, label %812, label %827

812:                                              ; preds = %804
  %813 = call i32 @net_ratelimit() #12
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %820, label %815

815:                                              ; preds = %812
  %816 = load i16, ptr %39, align 2
  %817 = zext i16 %816 to i32
  %818 = load i8, ptr %50, align 1
  %819 = zext i8 %818 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.22, i32 noundef %817, i32 noundef %819, i32 noundef %806) #12
  br label %820

820:                                              ; preds = %815, %812
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %766) #12
  %821 = load ptr, ptr %10, align 4
  %822 = load ptr, ptr %821, align 4
  call void @sdio_claim_host(ptr noundef %822) #12
  %823 = load i8, ptr %50, align 1
  %824 = icmp eq i8 %823, 1
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext %824) #12
  %825 = load ptr, ptr %10, align 4
  %826 = load ptr, ptr %825, align 4
  call void @sdio_release_host(ptr noundef %826) #12
  br label %947

827:                                              ; preds = %804
  %828 = icmp eq i8 %726, 0
  br i1 %828, label %834, label %829

829:                                              ; preds = %827
  %830 = call ptr @skb_push(ptr noundef nonnull %766, i32 noundef %761) #12
  %831 = load ptr, ptr %783, align 4
  %832 = load ptr, ptr %48, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %831, ptr align 1 %832, i32 %761, i1 false) #12
  %833 = load i8, ptr %50, align 1
  br label %884

834:                                              ; preds = %827
  %835 = load ptr, ptr %48, align 4
  %836 = load ptr, ptr %783, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %835, ptr noundef align 1 dereferenceable(12) %836, i32 12, i1 false) #12
  %837 = load i8, ptr %32, align 2
  store i8 %837, ptr %6, align 2
  %838 = load ptr, ptr %10, align 4
  %839 = load ptr, ptr %838, align 4
  call void @sdio_claim_host(ptr noundef %839) #12
  %840 = load ptr, ptr %48, align 4
  %841 = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %10, ptr noundef %840, ptr noundef nonnull %6, i32 noundef 0) #12
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %846, label %843

843:                                              ; preds = %834
  store i16 0, ptr %39, align 2
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %844 = load ptr, ptr %10, align 4
  %845 = load ptr, ptr %844, align 4
  call void @sdio_release_host(ptr noundef %845) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %766) #12
  br label %947

846:                                              ; preds = %834
  %847 = load i32, ptr %53, align 4
  %848 = add i32 %847, 1
  store i32 %848, ptr %53, align 4
  %849 = load i16, ptr %39, align 2
  %850 = zext i16 %849 to i32
  %851 = load i16, ptr %54, align 2
  %852 = zext i16 %851 to i32
  %853 = add nuw nsw i32 %852, 15
  %854 = and i32 %853, 131056
  %855 = icmp eq i32 %854, %850
  br i1 %855, label %866, label %856

856:                                              ; preds = %846
  %857 = call i32 @net_ratelimit() #12
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %863, label %859

859:                                              ; preds = %856
  %860 = load i16, ptr %39, align 2
  %861 = zext i16 %860 to i32
  %862 = lshr i32 %853, 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.23, i32 noundef %861, i32 noundef %862) #12
  br label %863

863:                                              ; preds = %859, %856
  store i16 0, ptr %39, align 2
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %864 = load ptr, ptr %10, align 4
  %865 = load ptr, ptr %864, align 4
  call void @sdio_release_host(ptr noundef %865) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %766) #12
  br label %947

866:                                              ; preds = %846
  %867 = load ptr, ptr %10, align 4
  %868 = load ptr, ptr %867, align 4
  call void @sdio_release_host(ptr noundef %868) #12
  %869 = load i16, ptr %55, align 2
  store i16 %869, ptr %56, align 2
  %870 = load i8, ptr %57, align 1
  store i8 %870, ptr %50, align 1
  %871 = load i8, ptr %58, align 2
  store i8 %871, ptr %59, align 2
  %872 = icmp eq i8 %870, 0
  br i1 %872, label %873, label %884

873:                                              ; preds = %866
  %874 = call i32 @net_ratelimit() #12
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %879, label %876

876:                                              ; preds = %873
  %877 = load i8, ptr %6, align 2
  %878 = zext i8 %877 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.24, i32 noundef %878) #12
  br label %879

879:                                              ; preds = %876, %873
  store i16 0, ptr %39, align 2
  %880 = load ptr, ptr %10, align 4
  %881 = load ptr, ptr %880, align 4
  call void @sdio_claim_host(ptr noundef %881) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %882 = load ptr, ptr %10, align 4
  %883 = load ptr, ptr %882, align 4
  call void @sdio_release_host(ptr noundef %883) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %766) #12
  br label %947

884:                                              ; preds = %866, %829
  %885 = phi i8 [ %833, %829 ], [ %870, %866 ]
  %886 = icmp eq i8 %885, 3
  br i1 %886, label %887, label %917

887:                                              ; preds = %884
  %888 = load ptr, ptr %48, align 4
  %889 = getelementptr i8, ptr %888, i32 5
  %890 = load i8, ptr %889, align 1
  %891 = icmp sgt i8 %890, -1
  br i1 %891, label %905, label %892

892:                                              ; preds = %887
  %893 = load i32, ptr %795, align 4
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %896, label %895, !prof !16

895:                                              ; preds = %892
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %903

896:                                              ; preds = %892
  %897 = load i16, ptr %39, align 2
  %898 = zext i16 %897 to i32
  %899 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 5
  store i32 %898, ptr %899, align 8
  %900 = load ptr, ptr %783, align 4
  %901 = getelementptr i8, ptr %900, i32 %898
  %902 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 14
  store ptr %901, ptr %902, align 8
  br label %903

903:                                              ; preds = %896, %895
  %904 = call ptr @skb_pull(ptr noundef nonnull %766, i32 noundef 12) #12
  store ptr %766, ptr %35, align 4
  br label %914

905:                                              ; preds = %887
  %906 = call i32 @net_ratelimit() #12
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %909, label %908

908:                                              ; preds = %905
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.brcmf_sdio_readframes) #12
  br label %909

909:                                              ; preds = %908, %905
  %910 = load ptr, ptr %10, align 4
  %911 = load ptr, ptr %910, align 4
  call void @sdio_claim_host(ptr noundef %911) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %912 = load ptr, ptr %10, align 4
  %913 = load ptr, ptr %912, align 4
  call void @sdio_release_host(ptr noundef %913) #12
  br label %914

914:                                              ; preds = %909, %903
  %915 = load i16, ptr %56, align 2
  %916 = shl i16 %915, 4
  store i16 %916, ptr %39, align 2
  store i16 0, ptr %56, align 2
  store i8 1, ptr %50, align 1
  br label %947

917:                                              ; preds = %884
  %918 = load i32, ptr %795, align 4
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %921, label %920, !prof !16

920:                                              ; preds = %917
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %928

921:                                              ; preds = %917
  %922 = load i16, ptr %39, align 2
  %923 = zext i16 %922 to i32
  %924 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 5
  store i32 %923, ptr %924, align 8
  %925 = load ptr, ptr %783, align 4
  %926 = getelementptr i8, ptr %925, i32 %923
  %927 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 14
  store ptr %926, ptr %927, align 8
  br label %928

928:                                              ; preds = %921, %920
  %929 = load i8, ptr %59, align 2
  %930 = zext i8 %929 to i32
  %931 = call ptr @skb_pull(ptr noundef nonnull %766, i32 noundef %930) #12
  %932 = getelementptr inbounds %struct.sk_buff, ptr %766, i32 0, i32 5
  %933 = load i32, ptr %932, align 8
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %936

935:                                              ; preds = %928
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %766) #12
  br label %944

936:                                              ; preds = %928
  %937 = load i8, ptr %50, align 1
  %938 = icmp eq i8 %937, 1
  %939 = load ptr, ptr %10, align 4
  %940 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %939, i32 0, i32 5
  %941 = load ptr, ptr %940, align 4
  br i1 %938, label %942, label %943

942:                                              ; preds = %936
  call void @brcmf_rx_event(ptr noundef %941, ptr noundef nonnull %766) #12
  br label %944

943:                                              ; preds = %936
  call void @brcmf_rx_frame(ptr noundef %941, ptr noundef nonnull %766, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %944

944:                                              ; preds = %943, %942, %935
  %945 = load i16, ptr %56, align 2
  %946 = shl i16 %945, 4
  store i16 %946, ptr %39, align 2
  store i16 0, ptr %56, align 2
  store i8 1, ptr %50, align 1
  br label %947

947:                                              ; preds = %944, %914, %879, %863, %843, %820, %772, %717, %592, %583, %558
  %948 = phi i8 [ %295, %558 ], [ %726, %820 ], [ 0, %914 ], [ 0, %944 ], [ 0, %843 ], [ 0, %863 ], [ 0, %879 ], [ %726, %772 ], [ %295, %583 ], [ %295, %592 ], [ %295, %717 ]
  %949 = phi i32 [ %566, %558 ], [ %294, %820 ], [ %294, %914 ], [ %294, %944 ], [ %294, %843 ], [ %294, %863 ], [ %294, %879 ], [ %294, %772 ], [ %294, %583 ], [ %294, %592 ], [ %294, %717 ]
  %950 = load i8, ptr %32, align 2
  %951 = add i8 %950, 1
  store i8 %951, ptr %32, align 2
  %952 = add i32 %949, -1
  %953 = load i8, ptr %25, align 2, !range !8
  %954 = icmp eq i8 %953, 0
  %955 = icmp ne i32 %952, 0
  %956 = select i1 %954, i1 %955, i1 false
  br i1 %956, label %292, label %957

957:                                              ; preds = %947, %597, %287
  %958 = phi i8 [ %289, %287 ], [ %599, %597 ], [ %951, %947 ]
  %959 = phi i8 [ %278, %287 ], [ %598, %597 ], [ %953, %947 ]
  %960 = icmp eq i8 %959, 0
  br i1 %960, label %963, label %961

961:                                              ; preds = %957
  %962 = add i8 %958, -1
  store i8 %962, ptr %32, align 2
  br label %963

963:                                              ; preds = %961, %957, %292
  %964 = phi i8 [ %962, %961 ], [ %958, %957 ], [ %293, %292 ]
  store i8 %964, ptr %34, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  %965 = load i8, ptr %33, align 1, !range !8
  %966 = icmp eq i8 %965, 0
  %967 = select i1 %966, i32 %280, i32 %281
  br label %968

968:                                              ; preds = %963, %275
  %969 = phi i32 [ %281, %275 ], [ %967, %963 ]
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %974, label %971

971:                                              ; preds = %968, %284
  %972 = phi i32 [ %969, %968 ], [ %281, %284 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #12, !srcloc !10
  %973 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %972, ptr elementtype(i32) %24) #12, !srcloc !11
  br label %974

974:                                              ; preds = %971, %968
  %975 = load ptr, ptr %10, align 4
  %976 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %975, i32 0, i32 8
  %977 = load i8, ptr %976, align 4, !range !8
  %978 = icmp eq i8 %977, 0
  br i1 %978, label %994, label %979

979:                                              ; preds = %974
  %980 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %975, i32 0, i32 11
  %981 = call i32 @_raw_spin_lock_irqsave(ptr noundef %980) #12
  %982 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %975, i32 0, i32 10
  %983 = load i8, ptr %982, align 2, !range !8
  %984 = icmp eq i8 %983, 0
  br i1 %984, label %985, label %993

985:                                              ; preds = %979
  %986 = load volatile i32, ptr %20, align 4
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %993

988:                                              ; preds = %985
  %989 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %975, i32 0, i32 7
  %990 = load ptr, ptr %989, align 4
  %991 = getelementptr inbounds %struct.brcmf_mp_device, ptr %990, i32 0, i32 8, i32 0, i32 3
  %992 = load i32, ptr %991, align 4
  call void @enable_irq(i32 noundef %992) #12
  store i8 1, ptr %982, align 2
  br label %993

993:                                              ; preds = %988, %985, %979
  call void @_raw_spin_unlock_irqrestore(ptr noundef %980, i32 noundef %981) #12
  br label %994

994:                                              ; preds = %993, %974
  %995 = load i8, ptr %70, align 2, !range !8
  %996 = icmp eq i8 %995, 0
  br i1 %996, label %1123, label %997

997:                                              ; preds = %994
  %998 = load i32, ptr %19, align 4
  %999 = icmp eq i32 %998, 3
  br i1 %999, label %1000, label %1550

1000:                                             ; preds = %997
  %1001 = load i8, ptr %71, align 2
  %1002 = load i8, ptr %72, align 1
  %1003 = icmp ne i8 %1001, %1002
  %1004 = zext i8 %1002 to i32
  %1005 = zext i8 %1001 to i32
  %1006 = sub nsw i32 %1005, %1004
  %1007 = and i32 %1006, 128
  %1008 = icmp eq i32 %1007, 0
  %1009 = select i1 %1003, i1 %1008, i1 false
  br i1 %1009, label %1010, label %1123

1010:                                             ; preds = %1000
  %1011 = load ptr, ptr %10, align 4
  %1012 = load ptr, ptr %1011, align 4
  call void @sdio_claim_host(ptr noundef %1012) #12
  %1013 = load i8, ptr %70, align 2, !range !8
  %1014 = icmp eq i8 %1013, 0
  br i1 %1014, label %1120, label %1015

1015:                                             ; preds = %1010
  %1016 = load ptr, ptr %73, align 4
  %1017 = load i16, ptr %74, align 4
  %1018 = load i8, ptr %75, align 2
  %1019 = zext i8 %1018 to i32
  %1020 = sub nsw i32 0, %1019
  %1021 = getelementptr i8, ptr %1016, i32 %1020
  %1022 = zext i8 %1018 to i16
  %1023 = add i16 %1017, %1022
  %1024 = ptrtoint ptr %1021 to i32
  %1025 = load i16, ptr %52, align 4
  %1026 = zext i16 %1025 to i32
  %1027 = urem i32 %1024, %1026
  %1028 = trunc i32 %1027 to i8
  %1029 = icmp eq i8 %1028, 0
  br i1 %1029, label %1037, label %1030

1030:                                             ; preds = %1015
  %1031 = and i32 %1027, 255
  %1032 = sub nsw i32 0, %1031
  %1033 = getelementptr i8, ptr %1021, i32 %1032
  %1034 = trunc i32 %1031 to i16
  %1035 = add i16 %1023, %1034
  %1036 = getelementptr i8, ptr %1033, i32 %1019
  call void @llvm.memset.p0.i32(ptr align 1 %1036, i8 0, i32 %1031, i1 false) #12
  br label %1037

1037:                                             ; preds = %1030, %1015
  %1038 = phi i16 [ %1035, %1030 ], [ %1023, %1015 ]
  %1039 = phi ptr [ %1033, %1030 ], [ %1021, %1015 ]
  %1040 = load i32, ptr %51, align 4
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1057, label %1042

1042:                                             ; preds = %1037
  %1043 = load i32, ptr %37, align 4
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1057, label %1045

1045:                                             ; preds = %1042
  %1046 = zext i16 %1038 to i32
  %1047 = icmp ult i32 %1043, %1046
  br i1 %1047, label %1048, label %1057

1048:                                             ; preds = %1045
  %1049 = urem i32 %1046, %1043
  %1050 = sub i32 %1043, %1049
  %1051 = and i32 %1050, 65535
  %1052 = icmp ule i32 %1051, %1040
  %1053 = trunc i32 %1050 to i16
  %1054 = icmp ult i32 %1051, %1043
  %1055 = select i1 %1052, i1 %1054, i1 false
  %1056 = select i1 %1055, i16 %1053, i16 0
  br label %1063

1057:                                             ; preds = %1045, %1042, %1037
  %1058 = load i16, ptr %52, align 4
  %1059 = urem i16 %1038, %1058
  %1060 = icmp eq i16 %1059, 0
  %1061 = sub i16 %1058, %1059
  %1062 = select i1 %1060, i16 0, i16 %1061
  br label %1063

1063:                                             ; preds = %1057, %1048
  %1064 = phi i16 [ %1062, %1057 ], [ %1056, %1048 ]
  %1065 = add i16 %1064, %1038
  %1066 = zext i16 %1065 to i32
  %1067 = load i8, ptr %75, align 2
  %1068 = add i8 %1067, %1028
  %1069 = load i8, ptr %72, align 1
  store i16 %1038, ptr %1039, align 2
  %1070 = xor i16 %1038, -1
  %1071 = getelementptr i16, ptr %1039, i32 1
  store i16 %1070, ptr %1071, align 2
  %1072 = load i8, ptr %76, align 1, !range !8
  %1073 = icmp eq i8 %1072, 0
  br i1 %1073, label %1082, label %1074

1074:                                             ; preds = %1063
  %1075 = zext i16 %1038 to i32
  %1076 = add nsw i32 %1075, -4
  %1077 = or i32 %1076, 16777216
  %1078 = getelementptr i8, ptr %1039, i32 4
  store i32 %1077, ptr %1078, align 4
  %1079 = zext i16 %1064 to i32
  %1080 = shl nuw i32 %1079, 16
  %1081 = getelementptr i8, ptr %1039, i32 8
  store i32 %1080, ptr %1081, align 4
  br label %1082

1082:                                             ; preds = %1074, %1063
  %1083 = phi i32 [ 12, %1074 ], [ 4, %1063 ]
  %1084 = zext i8 %1069 to i32
  %1085 = zext i8 %1068 to i32
  %1086 = shl nuw i32 %1085, 24
  %1087 = or i32 %1086, %1084
  %1088 = getelementptr i8, ptr %1039, i32 %1083
  store i32 %1087, ptr %1088, align 4
  %1089 = getelementptr i32, ptr %1088, i32 1
  store i32 0, ptr %1089, align 4
  %1090 = load i8, ptr %76, align 1, !range !8
  %1091 = icmp eq i8 %1090, 0
  br i1 %1091, label %1094, label %1092

1092:                                             ; preds = %1082
  store i16 %1065, ptr %1039, align 2
  %1093 = xor i16 %1065, -1
  store i16 %1093, ptr %1071, align 2
  br label %1094

1094:                                             ; preds = %1092, %1082
  %1095 = load ptr, ptr %10, align 4
  %1096 = call i32 @brcmf_sdiod_send_buf(ptr noundef %1095, ptr noundef %1039, i32 noundef %1066) #12
  %1097 = icmp slt i32 %1096, 0
  br i1 %1097, label %1098, label %1107

1098:                                             ; preds = %1094
  call fastcc void @brcmf_sdio_txfail(ptr noundef %10) #12
  %1099 = load ptr, ptr %10, align 4
  %1100 = call i32 @brcmf_sdiod_send_buf(ptr noundef %1099, ptr noundef %1039, i32 noundef %1066) #12
  %1101 = icmp slt i32 %1100, 0
  br i1 %1101, label %1102, label %1107

1102:                                             ; preds = %1098
  call fastcc void @brcmf_sdio_txfail(ptr noundef %10) #12
  %1103 = load ptr, ptr %10, align 4
  %1104 = call i32 @brcmf_sdiod_send_buf(ptr noundef %1103, ptr noundef %1039, i32 noundef %1066) #12
  %1105 = icmp slt i32 %1104, 0
  br i1 %1105, label %1106, label %1107

1106:                                             ; preds = %1102
  call fastcc void @brcmf_sdio_txfail(ptr noundef %10) #12
  br label %1111

1107:                                             ; preds = %1102, %1098, %1094
  %1108 = phi i32 [ %1096, %1094 ], [ %1100, %1098 ], [ %1104, %1102 ]
  %1109 = load i8, ptr %72, align 1
  %1110 = add i8 %1109, 1
  store i8 %1110, ptr %72, align 1
  br label %1111

1111:                                             ; preds = %1107, %1106
  %1112 = phi i32 [ %1104, %1106 ], [ %1108, %1107 ]
  store i32 %1112, ptr %9, align 4
  store i32 %1112, ptr %77, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  call void @arm_heavy_mb() #12
  store i8 0, ptr %70, align 2
  %1113 = load i32, ptr %9, align 4
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1120, label %1115

1115:                                             ; preds = %1111
  %1116 = call i32 @net_ratelimit() #12
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1120, label %1118

1118:                                             ; preds = %1115
  %1119 = load i32, ptr %9, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.15, i32 noundef %1119) #12
  br label %1120

1120:                                             ; preds = %1118, %1115, %1111, %1010
  %1121 = load ptr, ptr %10, align 4
  %1122 = load ptr, ptr %1121, align 4
  call void @sdio_release_host(ptr noundef %1122) #12
  call void @__wake_up(ptr noundef %78, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %1123

1123:                                             ; preds = %1120, %1000, %994
  %1124 = load i32, ptr %19, align 4
  %1125 = icmp eq i32 %1124, 3
  br i1 %1125, label %1126, label %1550

1126:                                             ; preds = %1123
  %1127 = load volatile i32, ptr %23, align 4
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1550

1129:                                             ; preds = %1126
  %1130 = load i8, ptr %27, align 4
  %1131 = zext i8 %1130 to i32
  %1132 = xor i32 %1131, -1
  %1133 = call i32 @brcmu_pktq_mlen(ptr noundef %79, i32 noundef %1132) #12
  %1134 = icmp ne i32 %1133, 0
  %1135 = icmp ne i32 %95, 0
  %1136 = select i1 %1134, i1 %1135, i1 false
  br i1 %1136, label %1137, label %1550

1137:                                             ; preds = %1129
  %1138 = load i8, ptr %70, align 2, !range !8
  %1139 = icmp eq i8 %1138, 0
  %1140 = select i1 %1139, i32 0, i32 -2
  %1141 = load i8, ptr %71, align 2
  %1142 = zext i8 %1141 to i32
  %1143 = load i8, ptr %72, align 1
  %1144 = zext i8 %1143 to i32
  %1145 = sub nsw i32 %1142, %1144
  %1146 = add nsw i32 %1145, %1140
  %1147 = icmp ne i32 %1146, 0
  %1148 = and i32 %1146, 128
  %1149 = icmp eq i32 %1148, 0
  %1150 = and i1 %1147, %1149
  br i1 %1150, label %1151, label %1550

1151:                                             ; preds = %1137
  %1152 = load i8, ptr %33, align 1, !range !8
  %1153 = icmp eq i8 %1152, 0
  br i1 %1153, label %1157, label %1154

1154:                                             ; preds = %1151
  %1155 = load i32, ptr %80, align 4
  %1156 = call i32 @llvm.umin.i32(i32 %95, i32 %1155) #12
  br label %1157

1157:                                             ; preds = %1154, %1151
  %1158 = phi i32 [ %1156, %1154 ], [ %95, %1151 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #12, !annotation !9
  %1159 = load ptr, ptr %16, align 4
  %1160 = getelementptr inbounds %struct.brcmf_core, ptr %1159, i32 0, i32 2
  %1161 = load i32, ptr %1160, align 4
  %1162 = add i32 %1161, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %1163 = icmp eq i32 %1158, 0
  br i1 %1163, label %1535, label %1164

1164:                                             ; preds = %1157
  %1165 = load i8, ptr %27, align 4
  %1166 = xor i8 %1165, -1
  %1167 = zext i8 %1166 to i32
  br label %1168

1168:                                             ; preds = %1521, %1164
  %1169 = phi i32 [ %1500, %1521 ], [ 0, %1164 ]
  %1170 = phi i8 [ %1523, %1521 ], [ %1141, %1164 ]
  %1171 = phi i8 [ %1524, %1521 ], [ %1143, %1164 ]
  %1172 = load i8, ptr %76, align 1, !range !8
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1182, label %1174

1174:                                             ; preds = %1168
  %1175 = sub i8 %1170, %1171
  %1176 = load ptr, ptr %10, align 4
  %1177 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1176, i32 0, i32 16
  %1178 = load i32, ptr %1177, align 4
  %1179 = zext i8 %1175 to i32
  %1180 = and i32 %1178, 255
  %1181 = call i32 @llvm.umin.i32(i32 %1180, i32 %1179) #12
  br label %1182

1182:                                             ; preds = %1174, %1168
  %1183 = phi i32 [ %1181, %1174 ], [ 1, %1168 ]
  %1184 = load i8, ptr %27, align 4
  %1185 = zext i8 %1184 to i32
  %1186 = xor i32 %1185, -1
  %1187 = call i32 @brcmu_pktq_mlen(ptr noundef %79, i32 noundef %1186) #12
  %1188 = call i32 @llvm.umin.i32(i32 %1183, i32 %1187) #12
  store ptr %2, ptr %2, align 4
  store ptr %2, ptr %81, align 4
  store i32 0, ptr %82, align 4
  call void @_raw_spin_lock_bh(ptr noundef %83) #12
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1190, label %1191

1190:                                             ; preds = %1182
  call void @_raw_spin_unlock_bh(ptr noundef %83) #12
  br label %1535

1191:                                             ; preds = %1195, %1182
  %1192 = phi i32 [ %1200, %1195 ], [ 0, %1182 ]
  %1193 = call ptr @brcmu_pktq_mdeq(ptr noundef %79, i32 noundef %1167, ptr noundef nonnull %4) #12
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1202, label %1195

1195:                                             ; preds = %1191
  %1196 = load ptr, ptr %81, align 4
  store volatile ptr %2, ptr %1193, align 8
  %1197 = getelementptr inbounds %struct.anon.41, ptr %1193, i32 0, i32 1
  store volatile ptr %1196, ptr %1197, align 4
  store volatile ptr %1193, ptr %81, align 4
  store volatile ptr %1193, ptr %1196, align 4
  %1198 = load i32, ptr %82, align 4
  %1199 = add i32 %1198, 1
  store volatile i32 %1199, ptr %82, align 4
  %1200 = add nuw nsw i32 %1192, 1
  %1201 = icmp eq i32 %1200, %1188
  br i1 %1201, label %1202, label %1191

1202:                                             ; preds = %1195, %1191
  %1203 = phi i32 [ %1188, %1195 ], [ %1192, %1191 ]
  call void @_raw_spin_unlock_bh(ptr noundef %83) #12
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1535, label %1205

1205:                                             ; preds = %1202
  %1206 = load ptr, ptr %2, align 4
  %1207 = icmp eq ptr %1206, %2
  br i1 %1207, label %1408, label %1208

1208:                                             ; preds = %1205
  %1209 = load i8, ptr %72, align 1
  br label %1210

1210:                                             ; preds = %1402, %1208
  %1211 = phi ptr [ %1206, %1208 ], [ %1406, %1402 ]
  %1212 = phi i8 [ %1209, %1208 ], [ %1405, %1402 ]
  %1213 = phi i16 [ 0, %1208 ], [ %1404, %1402 ]
  %1214 = phi i16 [ 0, %1208 ], [ %1403, %1402 ]
  %1215 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 3
  %1216 = load i16, ptr %1215, align 8
  %1217 = icmp sgt i16 %1216, -1
  br i1 %1217, label %1218, label %1402

1218:                                             ; preds = %1210
  %1219 = call fastcc i32 @brcmf_sdio_txpkt_hdalign(ptr noundef %10, ptr noundef %1211) #12
  %1220 = icmp slt i32 %1219, 0
  br i1 %1220, label %1430, label %1221

1221:                                             ; preds = %1218
  %1222 = trunc i32 %1219 to i16
  %1223 = icmp eq i16 %1222, 0
  br i1 %1223, label %1231, label %1224

1224:                                             ; preds = %1221
  %1225 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 17
  %1226 = load ptr, ptr %1225, align 4
  %1227 = load i8, ptr %75, align 2
  %1228 = zext i8 %1227 to i32
  %1229 = getelementptr i8, ptr %1226, i32 %1228
  %1230 = and i32 %1219, 65535
  call void @llvm.memset.p0.i32(ptr align 1 %1229, i8 0, i32 %1230, i1 false) #12
  br label %1231

1231:                                             ; preds = %1224, %1221
  %1232 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 5
  %1233 = load i32, ptr %1232, align 8
  %1234 = trunc i32 %1233 to i16
  %1235 = add i16 %1213, %1234
  %1236 = load ptr, ptr %1211, align 8
  %1237 = icmp eq ptr %1236, %2
  %1238 = load i8, ptr %76, align 1, !range !8
  %1239 = icmp ne i8 %1238, 0
  %1240 = load i32, ptr %82, align 4
  %1241 = icmp ugt i32 %1240, 1
  %1242 = select i1 %1239, i1 %1241, i1 false
  br i1 %1242, label %1243, label %1371

1243:                                             ; preds = %1231
  %1244 = load ptr, ptr %10, align 4
  %1245 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1244, i32 0, i32 1
  %1246 = load ptr, ptr %1245, align 4
  %1247 = getelementptr inbounds %struct.sdio_func, ptr %1246, i32 0, i32 8
  %1248 = load i32, ptr %1247, align 4
  %1249 = load i16, ptr %36, align 2
  %1250 = zext i16 %1249 to i32
  %1251 = urem i32 %1248, %1250
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1258, label %1253, !prof !16

1253:                                             ; preds = %1243
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 2132, i32 noundef 9, ptr noundef null) #12
  %1254 = load i16, ptr %36, align 2
  %1255 = zext i16 %1254 to i32
  %1256 = load ptr, ptr %1211, align 8
  %1257 = load i32, ptr %1232, align 8
  br label %1258

1258:                                             ; preds = %1253, %1243
  %1259 = phi i32 [ %1257, %1253 ], [ %1233, %1243 ]
  %1260 = phi ptr [ %1256, %1253 ], [ %1236, %1243 ]
  %1261 = phi i32 [ %1255, %1253 ], [ %1250, %1243 ]
  %1262 = phi i16 [ %1254, %1253 ], [ %1249, %1243 ]
  %1263 = icmp eq ptr %1260, %2
  %1264 = urem i32 %1259, %1261
  %1265 = icmp eq i32 %1264, 0
  %1266 = trunc i32 %1264 to i16
  %1267 = sub i16 %1262, %1266
  %1268 = select i1 %1265, i16 0, i16 %1267
  %1269 = zext i16 %1235 to i32
  %1270 = zext i16 %1268 to i32
  %1271 = add nuw nsw i32 %1270, %1269
  %1272 = urem i32 %1271, %1248
  %1273 = and i32 %1272, 65535
  %1274 = icmp ne i32 %1273, 0
  %1275 = select i1 %1263, i1 %1274, i1 false
  %1276 = sub i32 %1248, %1272
  %1277 = trunc i32 %1276 to i16
  %1278 = select i1 %1275, i16 %1277, i16 0
  %1279 = add i16 %1278, %1268
  %1280 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 6
  %1281 = load i32, ptr %1280, align 4
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1283, label %1291

1283:                                             ; preds = %1258
  %1284 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 15
  %1285 = load ptr, ptr %1284, align 4
  %1286 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 14
  %1287 = load ptr, ptr %1286, align 8
  %1288 = ptrtoint ptr %1285 to i32
  %1289 = ptrtoint ptr %1287 to i32
  %1290 = sub i32 %1288, %1289
  br label %1291

1291:                                             ; preds = %1283, %1258
  %1292 = phi i32 [ %1290, %1283 ], [ 0, %1258 ]
  %1293 = zext i16 %1279 to i32
  %1294 = icmp slt i32 %1292, %1293
  %1295 = icmp ugt i32 %1259, %1248
  %1296 = select i1 %1294, i1 %1295, i1 false
  br i1 %1296, label %1297, label %1326

1297:                                             ; preds = %1291
  %1298 = add nuw nsw i32 %1264, %1293
  %1299 = load i16, ptr %52, align 4
  %1300 = zext i16 %1299 to i32
  %1301 = add nuw nsw i32 %1298, %1300
  %1302 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %1301) #12
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1430, label %1304

1304:                                             ; preds = %1297
  %1305 = call fastcc i32 @brcmf_sdio_txpkt_hdalign(ptr noundef %10, ptr noundef nonnull %1302) #12
  %1306 = icmp slt i32 %1305, 0
  br i1 %1306, label %1307, label %1308, !prof !18

1307:                                             ; preds = %1304
  call void @kfree_skb_reason(ptr noundef nonnull %1302, i32 noundef 0) #12
  br label %1430

1308:                                             ; preds = %1304
  %1309 = getelementptr inbounds %struct.sk_buff, ptr %1302, i32 0, i32 17
  %1310 = load ptr, ptr %1309, align 4
  %1311 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 17
  %1312 = load ptr, ptr %1311, align 4
  %1313 = load i32, ptr %1232, align 8
  %1314 = getelementptr i8, ptr %1312, i32 %1313
  %1315 = sub nsw i32 0, %1264
  %1316 = getelementptr i8, ptr %1314, i32 %1315
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1310, ptr align 1 %1316, i32 %1264, i1 false) #12
  %1317 = xor i16 %1266, -32768
  %1318 = getelementptr inbounds %struct.sk_buff, ptr %1302, i32 0, i32 3
  store i16 %1317, ptr %1318, align 8
  %1319 = load i32, ptr %1232, align 8
  %1320 = sub i32 %1319, %1264
  call void @skb_trim(ptr noundef %1211, i32 noundef %1320) #12
  call void @skb_trim(ptr noundef nonnull %1302, i32 noundef %1298) #12
  %1321 = load ptr, ptr %1211, align 4
  store volatile ptr %1321, ptr %1302, align 8
  %1322 = getelementptr inbounds %struct.anon.41, ptr %1302, i32 0, i32 1
  store volatile ptr %1211, ptr %1322, align 4
  %1323 = getelementptr inbounds %struct.sk_buff_list, ptr %1321, i32 0, i32 1
  store volatile ptr %1302, ptr %1323, align 4
  store volatile ptr %1302, ptr %1211, align 4
  %1324 = load i32, ptr %82, align 4
  %1325 = add i32 %1324, 1
  store volatile i32 %1325, ptr %82, align 4
  br label %1369

1326:                                             ; preds = %1291
  %1327 = add i32 %1281, %1293
  %1328 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 15
  %1329 = load ptr, ptr %1328, align 4
  %1330 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 14
  %1331 = load ptr, ptr %1330, align 8
  %1332 = ptrtoint ptr %1329 to i32
  %1333 = ptrtoint ptr %1331 to i32
  %1334 = sub i32 %1333, %1332
  %1335 = add i32 %1327, %1334
  %1336 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 11
  %1337 = load i8, ptr %1336, align 2
  %1338 = and i8 %1337, 1
  %1339 = icmp eq i8 %1338, 0
  br i1 %1339, label %1345, label %1340

1340:                                             ; preds = %1326
  %1341 = getelementptr inbounds %struct.skb_shared_info, ptr %1329, i32 0, i32 10
  %1342 = load volatile i32, ptr %1341, align 4
  %1343 = and i32 %1342, 65535
  %1344 = icmp ne i32 %1343, 1
  br label %1345

1345:                                             ; preds = %1340, %1326
  %1346 = phi i1 [ false, %1326 ], [ %1344, %1340 ]
  %1347 = icmp sgt i32 %1335, 0
  %1348 = select i1 %1346, i1 true, i1 %1347
  br i1 %1348, label %1349, label %1354

1349:                                             ; preds = %1345
  %1350 = call i32 @pskb_expand_head(ptr noundef %1211, i32 noundef 0, i32 noundef %1335, i32 noundef 2592) #12
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1352, label %1430

1352:                                             ; preds = %1349
  %1353 = load i32, ptr %1280, align 4
  br label %1354

1354:                                             ; preds = %1352, %1345
  %1355 = phi i32 [ %1353, %1352 ], [ %1281, %1345 ]
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1364, label %1357

1357:                                             ; preds = %1354
  %1358 = call ptr @__pskb_pull_tail(ptr noundef %1211, i32 noundef %1355) #12
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1430, label %1360

1360:                                             ; preds = %1357
  %1361 = load i32, ptr %1280, align 4
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1364, label %1363, !prof !16

1363:                                             ; preds = %1360
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !19
  unreachable

1364:                                             ; preds = %1360, %1354
  %1365 = load ptr, ptr %1330, align 8
  %1366 = getelementptr i8, ptr %1365, i32 %1293
  store ptr %1366, ptr %1330, align 8
  %1367 = load i32, ptr %1232, align 8
  %1368 = add i32 %1367, %1293
  store i32 %1368, ptr %1232, align 8
  br label %1369

1369:                                             ; preds = %1364, %1308
  %1370 = add i16 %1279, %1235
  br label %1371

1371:                                             ; preds = %1369, %1231
  %1372 = phi i16 [ %1214, %1231 ], [ %1279, %1369 ]
  %1373 = phi i16 [ %1235, %1231 ], [ %1370, %1369 ]
  %1374 = load i8, ptr %75, align 2
  %1375 = trunc i32 %1219 to i8
  %1376 = add i8 %1374, %1375
  %1377 = add i8 %1212, 1
  %1378 = getelementptr inbounds %struct.sk_buff, ptr %1211, i32 0, i32 17
  %1379 = load ptr, ptr %1378, align 4
  store i16 %1234, ptr %1379, align 2
  %1380 = xor i16 %1234, -1
  %1381 = getelementptr i16, ptr %1379, i32 1
  store i16 %1380, ptr %1381, align 2
  %1382 = load i8, ptr %76, align 1, !range !8
  %1383 = icmp eq i8 %1382, 0
  br i1 %1383, label %1393, label %1384

1384:                                             ; preds = %1371
  %1385 = and i32 %1233, 65535
  %1386 = add nsw i32 %1385, -4
  %1387 = select i1 %1237, i32 16777216, i32 0
  %1388 = or i32 %1387, %1386
  %1389 = getelementptr i8, ptr %1379, i32 4
  store i32 %1388, ptr %1389, align 4
  %1390 = zext i16 %1372 to i32
  %1391 = shl nuw i32 %1390, 16
  %1392 = getelementptr i8, ptr %1379, i32 8
  store i32 %1391, ptr %1392, align 4
  br label %1393

1393:                                             ; preds = %1384, %1371
  %1394 = phi i32 [ 12, %1384 ], [ 4, %1371 ]
  %1395 = zext i8 %1212 to i32
  %1396 = zext i8 %1376 to i32
  %1397 = shl nuw i32 %1396, 24
  %1398 = or i32 %1397, %1395
  %1399 = or i32 %1398, 512
  %1400 = getelementptr i8, ptr %1379, i32 %1394
  store i32 %1399, ptr %1400, align 4
  %1401 = getelementptr i32, ptr %1400, i32 1
  store i32 0, ptr %1401, align 4
  br label %1402

1402:                                             ; preds = %1393, %1210
  %1403 = phi i16 [ %1372, %1393 ], [ %1214, %1210 ]
  %1404 = phi i16 [ %1373, %1393 ], [ %1213, %1210 ]
  %1405 = phi i8 [ %1377, %1393 ], [ %1212, %1210 ]
  %1406 = load ptr, ptr %1211, align 4
  %1407 = icmp eq ptr %1406, %2
  br i1 %1407, label %1408, label %1210

1408:                                             ; preds = %1402, %1205
  %1409 = phi i16 [ 0, %1205 ], [ %1404, %1402 ]
  %1410 = load i8, ptr %76, align 1, !range !8
  %1411 = icmp eq i8 %1410, 0
  br i1 %1411, label %1418, label %1412

1412:                                             ; preds = %1408
  %1413 = load ptr, ptr %2, align 4
  %1414 = getelementptr inbounds %struct.sk_buff, ptr %1413, i32 0, i32 17
  %1415 = load ptr, ptr %1414, align 4
  store i16 %1409, ptr %1415, align 2
  %1416 = xor i16 %1409, -1
  %1417 = getelementptr i16, ptr %1415, i32 1
  store i16 %1416, ptr %1417, align 2
  br label %1418

1418:                                             ; preds = %1412, %1408
  %1419 = load ptr, ptr %10, align 4
  %1420 = load ptr, ptr %1419, align 4
  call void @sdio_claim_host(ptr noundef %1420) #12
  %1421 = load ptr, ptr %10, align 4
  %1422 = call i32 @brcmf_sdiod_send_pkt(ptr noundef %1421, ptr noundef nonnull %2) #12
  %1423 = load i32, ptr %84, align 4
  %1424 = add i32 %1423, 1
  store i32 %1424, ptr %84, align 4
  %1425 = icmp slt i32 %1422, 0
  br i1 %1425, label %1426, label %1427

1426:                                             ; preds = %1418
  call fastcc void @brcmf_sdio_txfail(ptr noundef %10) #12
  br label %1427

1427:                                             ; preds = %1426, %1418
  %1428 = load ptr, ptr %10, align 4
  %1429 = load ptr, ptr %1428, align 4
  call void @sdio_release_host(ptr noundef %1429) #12
  br label %1430

1430:                                             ; preds = %1427, %1357, %1349, %1307, %1297, %1218
  %1431 = phi i32 [ %1422, %1427 ], [ %1305, %1307 ], [ %1219, %1218 ], [ -12, %1357 ], [ -12, %1349 ], [ -12, %1297 ]
  %1432 = load ptr, ptr %2, align 4
  %1433 = icmp eq ptr %1432, %2
  br i1 %1433, label %1476, label %1434

1434:                                             ; preds = %1474, %1430
  %1435 = phi ptr [ %1436, %1474 ], [ %1432, %1430 ]
  %1436 = load ptr, ptr %1435, align 8
  %1437 = getelementptr inbounds %struct.sk_buff, ptr %1435, i32 0, i32 3
  %1438 = load i16, ptr %1437, align 8
  %1439 = icmp sgt i16 %1438, -1
  br i1 %1439, label %1455, label %1440

1440:                                             ; preds = %1434
  %1441 = and i16 %1438, 32767
  %1442 = icmp eq i16 %1441, 0
  br i1 %1442, label %1448, label %1443

1443:                                             ; preds = %1440
  %1444 = getelementptr inbounds %struct.anon.41, ptr %1435, i32 0, i32 1
  %1445 = load ptr, ptr %1444, align 4
  %1446 = zext i16 %1441 to i32
  %1447 = call ptr @skb_put(ptr noundef %1445, i32 noundef %1446) #12
  br label %1448

1448:                                             ; preds = %1443, %1440
  %1449 = load i32, ptr %82, align 4
  %1450 = add i32 %1449, -1
  store volatile i32 %1450, ptr %82, align 4
  %1451 = load ptr, ptr %1435, align 8
  %1452 = getelementptr inbounds %struct.anon.41, ptr %1435, i32 0, i32 1
  %1453 = load ptr, ptr %1452, align 4
  store ptr null, ptr %1452, align 4
  store ptr null, ptr %1435, align 8
  %1454 = getelementptr inbounds %struct.anon.41, ptr %1451, i32 0, i32 1
  store volatile ptr %1453, ptr %1454, align 4
  store volatile ptr %1451, ptr %1453, align 8
  call void @brcmu_pkt_buf_free_skb(ptr noundef %1435) #12
  br label %1474

1455:                                             ; preds = %1434
  %1456 = getelementptr inbounds %struct.sk_buff, ptr %1435, i32 0, i32 17
  %1457 = load ptr, ptr %1456, align 4
  %1458 = load i8, ptr %75, align 2
  %1459 = zext i8 %1458 to i32
  %1460 = getelementptr i8, ptr %1457, i32 -8
  %1461 = getelementptr i8, ptr %1460, i32 %1459
  %1462 = load i32, ptr %1461, align 4
  %1463 = lshr i32 %1462, 24
  %1464 = call ptr @skb_pull(ptr noundef %1435, i32 noundef %1463) #12
  %1465 = load i8, ptr %76, align 1, !range !8
  %1466 = icmp eq i8 %1465, 0
  br i1 %1466, label %1474, label %1467

1467:                                             ; preds = %1455
  %1468 = getelementptr i8, ptr %1461, i32 -2
  %1469 = load i16, ptr %1468, align 2
  %1470 = getelementptr inbounds %struct.sk_buff, ptr %1435, i32 0, i32 5
  %1471 = load i32, ptr %1470, align 8
  %1472 = zext i16 %1469 to i32
  %1473 = sub i32 %1471, %1472
  call void @skb_trim(ptr noundef %1435, i32 noundef %1473) #12
  br label %1474

1474:                                             ; preds = %1467, %1455, %1448
  %1475 = icmp eq ptr %1436, %2
  br i1 %1475, label %1476, label %1434

1476:                                             ; preds = %1474, %1430
  %1477 = icmp eq i32 %1431, 0
  br i1 %1477, label %1478, label %1483

1478:                                             ; preds = %1476
  %1479 = load i8, ptr %72, align 1
  %1480 = load i32, ptr %82, align 4
  %1481 = trunc i32 %1480 to i8
  %1482 = add i8 %1479, %1481
  store i8 %1482, ptr %72, align 1
  br label %1483

1483:                                             ; preds = %1478, %1476
  %1484 = load ptr, ptr %2, align 4
  %1485 = icmp eq ptr %1484, %2
  br i1 %1485, label %1499, label %1486

1486:                                             ; preds = %1486, %1483
  %1487 = phi ptr [ %1488, %1486 ], [ %1484, %1483 ]
  %1488 = load ptr, ptr %1487, align 8
  %1489 = load i32, ptr %82, align 4
  %1490 = add i32 %1489, -1
  store volatile i32 %1490, ptr %82, align 4
  %1491 = load ptr, ptr %1487, align 8
  %1492 = getelementptr inbounds %struct.anon.41, ptr %1487, i32 0, i32 1
  %1493 = load ptr, ptr %1492, align 4
  store ptr null, ptr %1492, align 4
  store ptr null, ptr %1487, align 8
  %1494 = getelementptr inbounds %struct.anon.41, ptr %1491, i32 0, i32 1
  store volatile ptr %1493, ptr %1494, align 4
  store volatile ptr %1491, ptr %1493, align 8
  %1495 = load ptr, ptr %10, align 4
  %1496 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1495, i32 0, i32 5
  %1497 = load ptr, ptr %1496, align 4
  call void @brcmf_proto_bcdc_txcomplete(ptr noundef %1497, ptr noundef %1487, i1 noundef zeroext %1477) #12
  %1498 = icmp eq ptr %1488, %2
  br i1 %1498, label %1499, label %1486

1499:                                             ; preds = %1486, %1483
  store i32 %1431, ptr %3, align 4
  %1500 = add i32 %1203, %1169
  %1501 = load i8, ptr %85, align 1, !range !8
  %1502 = icmp eq i8 %1501, 0
  br i1 %1502, label %1503, label %1519

1503:                                             ; preds = %1499
  %1504 = load ptr, ptr %10, align 4
  %1505 = load ptr, ptr %1504, align 4
  call void @sdio_claim_host(ptr noundef %1505) #12
  %1506 = load ptr, ptr %10, align 4
  %1507 = call i32 @brcmf_sdiod_readl(ptr noundef %1506, i32 noundef %1162, ptr noundef nonnull %3) #12
  %1508 = load ptr, ptr %10, align 4
  %1509 = load ptr, ptr %1508, align 4
  call void @sdio_release_host(ptr noundef %1509) #12
  %1510 = load i32, ptr %84, align 4
  %1511 = add i32 %1510, 1
  store i32 %1511, ptr %84, align 4
  %1512 = load i32, ptr %3, align 4
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1514, label %1535

1514:                                             ; preds = %1503
  %1515 = load i32, ptr %22, align 4
  %1516 = and i32 %1515, %1507
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1519, label %1518

1518:                                             ; preds = %1514
  store volatile i32 1, ptr %20, align 4
  br label %1519

1519:                                             ; preds = %1518, %1514, %1499
  %1520 = icmp ult i32 %1500, %1158
  br i1 %1520, label %1521, label %1535

1521:                                             ; preds = %1519
  %1522 = load i8, ptr %70, align 2, !range !8
  %1523 = load i8, ptr %71, align 2
  %1524 = load i8, ptr %72, align 1
  %1525 = icmp eq i8 %1522, 0
  %1526 = select i1 %1525, i32 0, i32 -2
  %1527 = zext i8 %1523 to i32
  %1528 = zext i8 %1524 to i32
  %1529 = sub nsw i32 %1527, %1528
  %1530 = add nsw i32 %1526, %1529
  %1531 = icmp ne i32 %1530, 0
  %1532 = and i32 %1530, 128
  %1533 = icmp eq i32 %1532, 0
  %1534 = and i1 %1531, %1533
  br i1 %1534, label %1168, label %1535

1535:                                             ; preds = %1521, %1519, %1503, %1202, %1190, %1157
  %1536 = load ptr, ptr %10, align 4
  %1537 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1536, i32 0, i32 21
  %1538 = load i32, ptr %1537, align 4
  %1539 = icmp eq i32 %1538, 1
  br i1 %1539, label %1540, label %1549

1540:                                             ; preds = %1535
  %1541 = load i8, ptr %86, align 2, !range !8
  %1542 = icmp eq i8 %1541, 0
  br i1 %1542, label %1549, label %1543

1543:                                             ; preds = %1540
  %1544 = load i16, ptr %87, align 2
  %1545 = icmp ult i16 %1544, 1536
  br i1 %1545, label %1546, label %1549

1546:                                             ; preds = %1543
  store i8 0, ptr %86, align 2
  %1547 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1536, i32 0, i32 5
  %1548 = load ptr, ptr %1547, align 4
  call void @brcmf_proto_bcdc_txflowblock(ptr noundef %1548, i1 noundef zeroext false) #12
  br label %1549

1549:                                             ; preds = %1546, %1543, %1540, %1535
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %1550

1550:                                             ; preds = %1549, %1137, %1129, %1126, %1123, %997
  %1551 = load ptr, ptr %10, align 4
  %1552 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1551, i32 0, i32 21
  %1553 = load i32, ptr %1552, align 4
  %1554 = icmp ne i32 %1553, 1
  %1555 = load i32, ptr %9, align 4
  %1556 = icmp ne i32 %1555, 0
  %1557 = select i1 %1554, i1 true, i1 %1556
  br i1 %1557, label %1558, label %1574

1558:                                             ; preds = %1550
  %1559 = call i32 @net_ratelimit() #12
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1562, label %1561

1561:                                             ; preds = %1558
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.16) #12
  br label %1562

1562:                                             ; preds = %1561, %1558
  store volatile i32 0, ptr %24, align 4
  %1563 = load i8, ptr %70, align 2, !range !8
  %1564 = icmp eq i8 %1563, 0
  br i1 %1564, label %1604, label %1565

1565:                                             ; preds = %1562
  %1566 = load ptr, ptr %10, align 4
  %1567 = load ptr, ptr %1566, align 4
  call void @sdio_claim_host(ptr noundef %1567) #12
  %1568 = load i8, ptr %70, align 2, !range !8
  %1569 = icmp eq i8 %1568, 0
  br i1 %1569, label %1571, label %1570

1570:                                             ; preds = %1565
  store i32 -19, ptr %77, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  call void @arm_heavy_mb() #12
  store i8 0, ptr %70, align 2
  call void @__wake_up(ptr noundef %78, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %1571

1571:                                             ; preds = %1570, %1565
  %1572 = load ptr, ptr %10, align 4
  %1573 = load ptr, ptr %1572, align 4
  call void @sdio_release_host(ptr noundef %1573) #12
  br label %1604

1574:                                             ; preds = %1550
  %1575 = load volatile i32, ptr %24, align 4
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1577, label %1603

1577:                                             ; preds = %1574
  %1578 = load volatile i32, ptr %20, align 4
  %1579 = icmp sgt i32 %1578, 0
  br i1 %1579, label %1603, label %1580

1580:                                             ; preds = %1577
  %1581 = load volatile i32, ptr %23, align 4
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1583, label %1604

1583:                                             ; preds = %1580
  %1584 = load i8, ptr %27, align 4
  %1585 = zext i8 %1584 to i32
  %1586 = xor i32 %1585, -1
  %1587 = call i32 @brcmu_pktq_mlen(ptr noundef %79, i32 noundef %1586) #12
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1604, label %1589

1589:                                             ; preds = %1583
  %1590 = load i8, ptr %70, align 2, !range !8
  %1591 = icmp eq i8 %1590, 0
  %1592 = select i1 %1591, i32 0, i32 -2
  %1593 = load i8, ptr %71, align 2
  %1594 = zext i8 %1593 to i32
  %1595 = load i8, ptr %72, align 1
  %1596 = zext i8 %1595 to i32
  %1597 = sub nsw i32 %1594, %1596
  %1598 = add nsw i32 %1597, %1592
  %1599 = icmp ne i32 %1598, 0
  %1600 = and i32 %1598, 128
  %1601 = icmp eq i32 %1600, 0
  %1602 = and i1 %1599, %1601
  br i1 %1602, label %1603, label %1604

1603:                                             ; preds = %1589, %1577, %1574
  store i8 1, ptr %12, align 4
  br label %1604

1604:                                             ; preds = %1603, %1589, %1583, %1580, %1571, %1562
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %88, align 4
  %1605 = load volatile i8, ptr %12, align 4, !range !8
  %1606 = icmp eq i8 %1605, 0
  br i1 %1606, label %1607, label %89

1607:                                             ; preds = %1604, %1
  store i8 0, ptr %11, align 1
  %1608 = load ptr, ptr %10, align 4
  %1609 = call zeroext i1 @brcmf_sdiod_freezing(ptr noundef %1608) #12
  br i1 %1609, label %1610, label %1614

1610:                                             ; preds = %1607
  %1611 = load ptr, ptr %10, align 4
  call void @brcmf_sdiod_change_state(ptr noundef %1611, i32 noundef 0) #12
  %1612 = load ptr, ptr %10, align 4
  call void @brcmf_sdiod_try_freeze(ptr noundef %1612) #12
  %1613 = load ptr, ptr %10, align 4
  call void @brcmf_sdiod_change_state(ptr noundef %1613, i32 noundef 1) #12
  br label %1614

1614:                                             ; preds = %1610, %1607
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdio_watchdog(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 20
  tail call void @complete(ptr noundef %6) #12
  %7 = getelementptr i8, ptr %0, i32 40
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %11, 1
  %13 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %12) #12
  br label %14

14:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_watchdog_thread(ptr noundef %0) #0 {
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #12
  %2 = load ptr, ptr %0, align 4
  tail call void @brcmf_sdiod_freezer_count(ptr noundef %2) #12
  %3 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %3, label %102, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 51
  %6 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 60
  %7 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 31
  %8 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 35
  %9 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 34
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 30
  %11 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59
  %12 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 1
  %13 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 56
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 2
  %15 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 32
  %16 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 54
  %17 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 55
  %18 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 38
  %19 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 57
  %20 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 37
  %21 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  %22 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 53
  %23 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %24 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 22
  br label %25

25:                                               ; preds = %98, %4
  %26 = load ptr, ptr %0, align 4
  tail call void @brcmf_sdiod_freezer_uncount(ptr noundef %26) #12
  %27 = tail call i32 @wait_for_completion_interruptible(ptr noundef %5) #12
  %28 = load ptr, ptr %0, align 4
  tail call void @brcmf_sdiod_freezer_count(ptr noundef %28) #12
  %29 = load ptr, ptr %0, align 4
  tail call void @brcmf_sdiod_try_freeze(ptr noundef %29) #12
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %102

31:                                               ; preds = %25
  %32 = load i8, ptr %6, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31
  %35 = load i8, ptr %7, align 2, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %8, align 4
  %40 = load i32, ptr %9, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %69, label %42

42:                                               ; preds = %37
  store i32 0, ptr %8, align 4
  %43 = load i8, ptr %10, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %11, align 4
  %47 = load i32, ptr %12, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45, %42
  %50 = load i8, ptr %13, align 4, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 4
  %54 = load ptr, ptr %53, align 4
  tail call void @sdio_claim_host(ptr noundef %54) #12
  %55 = load ptr, ptr %0, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = tail call zeroext i8 @sdio_f0_readb(ptr noundef %56, i32 noundef 5, ptr noundef null) #12
  %58 = load ptr, ptr %0, align 4
  %59 = load ptr, ptr %58, align 4
  tail call void @sdio_release_host(ptr noundef %59) #12
  %60 = and i8 %57, 6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load i32, ptr %14, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %14, align 4
  store volatile i32 1, ptr %15, align 4
  store i8 1, ptr %13, align 4
  %65 = load ptr, ptr %16, align 4
  %66 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %65, ptr noundef %17) #12
  br label %67

67:                                               ; preds = %62, %52, %49, %45
  %68 = load i32, ptr %11, align 4
  store i32 %68, ptr %12, align 4
  br label %69

69:                                               ; preds = %67, %37, %34, %31
  %70 = load i8, ptr %13, align 4, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !21
  %73 = load i8, ptr %19, align 1, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i32, ptr %20, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32, ptr %21, align 4
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i32, ptr %18, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %18, align 4
  %84 = icmp sgt i32 %83, %76
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load ptr, ptr %0, align 4
  %87 = load ptr, ptr %86, align 4
  tail call void @sdio_claim_host(ptr noundef %87) #12
  %88 = load i8, ptr %22, align 4, !range !8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = tail call i32 @del_timer_sync(ptr noundef %23) #12
  store i8 0, ptr %22, align 4
  br label %92

92:                                               ; preds = %90, %85
  store i32 0, ptr %18, align 4
  %93 = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %94 = load ptr, ptr %0, align 4
  %95 = load ptr, ptr %94, align 4
  tail call void @sdio_release_host(ptr noundef %95) #12
  br label %98

96:                                               ; preds = %78, %75, %72
  store i32 0, ptr %18, align 4
  br label %98

97:                                               ; preds = %69
  store i32 0, ptr %18, align 4
  br label %98

98:                                               ; preds = %97, %96, %92, %81
  %99 = load i32, ptr %24, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %24, align 4
  store i32 0, ptr %5, align 4
  %101 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %101, label %102, label %25

102:                                              ; preds = %98, %25, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fw_get_firmwares(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdio_firmware_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %253

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.brcmf_fw_request, ptr %2, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.brcmf_fw_request, ptr %2, i32 3, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.brcmf_fw_request, ptr %2, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void @kfree(ptr noundef %2) #12
  %20 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 42
  store i8 1, ptr %20, align 2
  %21 = load ptr, ptr %9, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void @sdio_claim_host(ptr noundef %22) #12
  %23 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 36
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %26 [
    i32 3, label %27
    i32 0, label %25
  ]

25:                                               ; preds = %13
  store i32 1, ptr %23, align 4
  br label %26

26:                                               ; preds = %25, %13
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %27

27:                                               ; preds = %26, %13
  %28 = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 1
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.brcmf_chip, ptr %33, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %15, align 4
  %37 = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %31, i1 noundef zeroext true, i32 noundef %35, ptr noundef %29, i32 noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %27
  %40 = tail call i32 @net_ratelimit() #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %15, align 4
  %44 = load ptr, ptr %32, align 4
  %45 = getelementptr inbounds %struct.brcmf_chip, ptr %44, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_code_file, ptr noundef nonnull @.str.75, i32 noundef %37, i32 noundef %43, i32 noundef %46) #12
  br label %47

47:                                               ; preds = %42, %39
  tail call void @release_firmware(ptr noundef %15) #12
  %48 = tail call i32 @net_ratelimit() #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.72) #12
  br label %51

51:                                               ; preds = %50, %47
  tail call void @brcmf_fw_nvram_free(ptr noundef %17) #12
  br label %78

52:                                               ; preds = %27
  tail call void @release_firmware(ptr noundef %15) #12
  %53 = load ptr, ptr %32, align 4
  %54 = getelementptr inbounds %struct.brcmf_chip, ptr %53, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %55, %19
  %57 = getelementptr inbounds %struct.brcmf_chip, ptr %53, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %56, %58
  %60 = load ptr, ptr %9, align 4
  %61 = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %60, i1 noundef zeroext true, i32 noundef %59, ptr noundef %17, i32 noundef %19) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %52
  %64 = tail call i32 @net_ratelimit() #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_nvram, ptr noundef nonnull @.str.76, i32 noundef %61, i32 noundef %19, i32 noundef %59) #12
  br label %67

67:                                               ; preds = %66, %63
  tail call void @brcmf_fw_nvram_free(ptr noundef %17) #12
  %68 = tail call i32 @net_ratelimit() #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.73) #12
  br label %78

71:                                               ; preds = %52
  tail call void @brcmf_fw_nvram_free(ptr noundef %17) #12
  %72 = load ptr, ptr %32, align 4
  %73 = tail call zeroext i1 @brcmf_chip_set_active(ptr noundef %72, i32 noundef %30) #12
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @net_ratelimit() #12
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.74) #12
  br label %78

78:                                               ; preds = %77, %74, %71, %70, %67, %51
  %79 = phi i32 [ %37, %51 ], [ %61, %70 ], [ %61, %67 ], [ 0, %71 ], [ 0, %77 ], [ 0, %74 ]
  %80 = load i32, ptr %23, align 4
  switch i32 %80, label %83 [
    i32 1, label %88
    i32 0, label %81
    i32 3, label %82
  ]

81:                                               ; preds = %78
  store i32 1, ptr %23, align 4
  br label %88

82:                                               ; preds = %78
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %88

83:                                               ; preds = %78
  %84 = tail call i32 @net_ratelimit() #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.90, i32 noundef %87, i32 noundef 1) #12
  br label %88

88:                                               ; preds = %86, %83, %82, %81, %78
  %89 = load ptr, ptr %9, align 4
  %90 = load ptr, ptr %89, align 4
  tail call void @sdio_release_host(ptr noundef %90) #12
  store i32 %79, ptr %4, align 4
  %91 = icmp eq i32 %79, 0
  br i1 %91, label %92, label %253

92:                                               ; preds = %88
  store i8 0, ptr %20, align 2
  %93 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 59, i32 22
  store i32 0, ptr %93, align 4
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %94, i32 0, i32 21
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 53
  %100 = load i8, ptr %99, align 4, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = add i32 %103, 1
  %105 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 50
  %106 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 50, i32 1
  store i32 %104, ptr %106, align 4
  tail call void @add_timer(ptr noundef %105) #12
  store i8 1, ptr %99, align 4
  br label %112

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 50
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = add i32 %109, 1
  %111 = tail call i32 @mod_timer(ptr noundef %108, i32 noundef %110) #12
  br label %112

112:                                              ; preds = %107, %102, %92
  %113 = load ptr, ptr %7, align 4
  tail call void @sdio_claim_host(ptr noundef %113) #12
  %114 = load i32, ptr %23, align 4
  switch i32 %114, label %116 [
    i32 3, label %119
    i32 0, label %115
  ]

115:                                              ; preds = %112
  store i32 1, ptr %23, align 4
  br label %116

116:                                              ; preds = %115, %112
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %117 = load i32, ptr %23, align 4
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %251

119:                                              ; preds = %116, %112
  %120 = load ptr, ptr %7, align 4
  %121 = call zeroext i8 @sdio_readb(ptr noundef %120, i32 noundef 65550, ptr noundef nonnull %4) #12
  %122 = load i32, ptr %4, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load ptr, ptr %32, align 4
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 43012
  %128 = select i1 %127, i8 16, i8 2
  %129 = or i8 %128, %121
  %130 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %130, i8 noundef zeroext %129, i32 noundef 65550, ptr noundef nonnull %4) #12
  %131 = load i32, ptr %4, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %124, %119
  %134 = call i32 @net_ratelimit() #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %251, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.68, i32 noundef %137) #12
  br label %251

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.brcmf_core, ptr %11, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 72
  call void @brcmf_sdiod_writel(ptr noundef %7, i32 noundef %141, i32 noundef 262144, ptr noundef null) #12
  %142 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = call i32 @sdio_enable_func(ptr noundef %143) #12
  store i32 %144, ptr %4, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 3
  store i32 536871152, ptr %147, align 4
  %148 = load i32, ptr %139, align 4
  %149 = add i32 %148, 36
  call void @brcmf_sdiod_writel(ptr noundef %7, i32 noundef %149, i32 noundef 536871152, ptr noundef null) #12
  %150 = load ptr, ptr %7, align 4
  %151 = getelementptr inbounds %struct.sdio_func, ptr %150, i32 0, i32 6
  %152 = load i16, ptr %151, align 4
  switch i16 %152, label %183 [
    i16 17267, label %153
    i16 -21784, label %153
    i16 -22524, label %159
    i16 17193, label %165
    i16 17209, label %165
    i16 -22081, label %171
    i16 17241, label %177
    i16 17236, label %177
    i16 17238, label %177
  ]

153:                                              ; preds = %146, %146
  call void @sdio_writeb(ptr noundef %150, i8 noundef zeroext 64, i32 noundef 65544, ptr noundef nonnull %4) #12
  %154 = load ptr, ptr %7, align 4
  %155 = call zeroext i8 @sdio_readb(ptr noundef %154, i32 noundef 65545, ptr noundef nonnull %4) #12
  %156 = or i8 %155, 16
  %157 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %157, i8 noundef zeroext %156, i32 noundef 65545, ptr noundef nonnull %4) #12
  %158 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %158, i8 noundef zeroext -64, i32 noundef 65565, ptr noundef nonnull %4) #12
  br label %187

159:                                              ; preds = %146
  call void @sdio_writeb(ptr noundef %150, i8 noundef zeroext 96, i32 noundef 65544, ptr noundef nonnull %4) #12
  %160 = load ptr, ptr %7, align 4
  %161 = call zeroext i8 @sdio_readb(ptr noundef %160, i32 noundef 65545, ptr noundef nonnull %4) #12
  %162 = or i8 %161, 16
  %163 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %163, i8 noundef zeroext %162, i32 noundef 65545, ptr noundef nonnull %4) #12
  %164 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %164, i8 noundef zeroext -48, i32 noundef 65565, ptr noundef nonnull %4) #12
  br label %187

165:                                              ; preds = %146, %146
  call void @sdio_writeb(ptr noundef %150, i8 noundef zeroext 48, i32 noundef 65544, ptr noundef nonnull %4) #12
  %166 = load ptr, ptr %7, align 4
  %167 = call zeroext i8 @sdio_readb(ptr noundef %166, i32 noundef 65545, ptr noundef nonnull %4) #12
  %168 = or i8 %167, 16
  %169 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %169, i8 noundef zeroext %168, i32 noundef 65545, ptr noundef nonnull %4) #12
  %170 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %170, i8 noundef zeroext -48, i32 noundef 65565, ptr noundef nonnull %4) #12
  br label %187

171:                                              ; preds = %146
  call void @sdio_writeb(ptr noundef %150, i8 noundef zeroext 96, i32 noundef 65544, ptr noundef nonnull %4) #12
  %172 = load ptr, ptr %7, align 4
  %173 = call zeroext i8 @sdio_readb(ptr noundef %172, i32 noundef 65545, ptr noundef nonnull %4) #12
  %174 = or i8 %173, 16
  %175 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %175, i8 noundef zeroext %174, i32 noundef 65545, ptr noundef nonnull %4) #12
  %176 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %176, i8 noundef zeroext -48, i32 noundef 65565, ptr noundef nonnull %4) #12
  br label %187

177:                                              ; preds = %146, %146, %146
  call void @sdio_writeb(ptr noundef %150, i8 noundef zeroext 64, i32 noundef 65544, ptr noundef nonnull %4) #12
  %178 = load ptr, ptr %7, align 4
  %179 = call zeroext i8 @sdio_readb(ptr noundef %178, i32 noundef 65545, ptr noundef nonnull %4) #12
  %180 = or i8 %179, 16
  %181 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %181, i8 noundef zeroext %180, i32 noundef 65545, ptr noundef nonnull %4) #12
  %182 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %182, i8 noundef zeroext -64, i32 noundef 65565, ptr noundef nonnull %4) #12
  br label %187

183:                                              ; preds = %146
  call void @sdio_writeb(ptr noundef %150, i8 noundef zeroext 8, i32 noundef 65544, ptr noundef nonnull %4) #12
  br label %187

184:                                              ; preds = %138
  %185 = load ptr, ptr %142, align 4
  %186 = call i32 @sdio_disable_func(ptr noundef %185) #12
  br label %251

187:                                              ; preds = %183, %177, %171, %165, %159, %153
  %188 = load ptr, ptr %32, align 4
  %189 = call zeroext i1 @brcmf_chip_sr_capable(ptr noundef %188) #12
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call fastcc void @brcmf_sdio_sr_init(ptr noundef %9)
  br label %193

191:                                              ; preds = %187
  %192 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %192, i8 noundef zeroext %121, i32 noundef 65550, ptr noundef nonnull %4) #12
  br label %193

193:                                              ; preds = %191, %190
  %194 = load i32, ptr %4, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 5
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 6
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.brcmf_bus, ptr %200, i32 0, i32 2
  store ptr %198, ptr %201, align 4
  %202 = load ptr, ptr %199, align 4
  %203 = getelementptr inbounds %struct.brcmf_bus, ptr %202, i32 0, i32 11
  store ptr @brcmf_sdio_bus_ops, ptr %203, align 4
  %204 = load ptr, ptr %32, align 4
  %205 = load i32, ptr %204, align 4
  %206 = load ptr, ptr %199, align 4
  %207 = getelementptr inbounds %struct.brcmf_bus, ptr %206, i32 0, i32 7
  store i32 %205, ptr %207, align 4
  %208 = load ptr, ptr %32, align 4
  %209 = getelementptr inbounds %struct.brcmf_chip, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = load ptr, ptr %199, align 4
  %212 = getelementptr inbounds %struct.brcmf_bus, ptr %211, i32 0, i32 8
  store i32 %210, ptr %212, align 4
  %213 = load ptr, ptr %9, align 4
  call void @brcmf_sdiod_change_state(ptr noundef %213, i32 noundef 1) #12
  %214 = call i32 @brcmf_sdiod_intr_register(ptr noundef %7) #12
  store i32 %214, ptr %4, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %196
  %217 = call i32 @net_ratelimit() #12
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.69, i32 noundef %220) #12
  br label %221

221:                                              ; preds = %219, %216
  %222 = load i32, ptr %4, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221, %193
  %225 = load i32, ptr %23, align 4
  switch i32 %225, label %227 [
    i32 0, label %251
    i32 3, label %226
  ]

226:                                              ; preds = %224
  call fastcc void @brcmf_sdio_htclk(ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %227

227:                                              ; preds = %226, %224
  store i32 0, ptr %23, align 4
  br label %251

228:                                              ; preds = %221, %196
  %229 = load ptr, ptr %7, align 4
  call void @sdio_release_host(ptr noundef %229) #12
  %230 = load ptr, ptr %197, align 4
  %231 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 7
  %232 = load ptr, ptr %231, align 4
  %233 = call i32 @brcmf_alloc(ptr noundef %230, ptr noundef %232) #12
  store i32 %233, ptr %4, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %228
  %236 = call i32 @net_ratelimit() #12
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %235
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.70) #12
  br label %249

239:                                              ; preds = %228
  %240 = load ptr, ptr %197, align 4
  %241 = call i32 @brcmf_attach(ptr noundef %240) #12
  store i32 %241, ptr %4, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %257, label %243

243:                                              ; preds = %239
  %244 = call i32 @net_ratelimit() #12
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.71) #12
  br label %247

247:                                              ; preds = %246, %243
  %248 = load ptr, ptr %197, align 4
  call void @brcmf_free(ptr noundef %248) #12
  br label %249

249:                                              ; preds = %247, %238, %235
  %250 = load ptr, ptr %7, align 4
  call void @sdio_claim_host(ptr noundef %250) #12
  br label %251

251:                                              ; preds = %249, %227, %224, %184, %136, %133, %116
  %252 = load ptr, ptr %7, align 4
  call void @sdio_release_host(ptr noundef %252) #12
  br label %253

253:                                              ; preds = %251, %88, %3
  %254 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.sdio_func, ptr %255, i32 0, i32 1
  call void @device_release_driver(ptr noundef %256) #12
  call void @device_release_driver(ptr noundef %0) #12
  br label %257

257:                                              ; preds = %253, %239
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %69, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 52
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @send_sig(i32 noundef 15, ptr noundef nonnull %5, i32 noundef 1) #12
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @kthread_stop(ptr noundef %9) #12
  store ptr null, ptr %4, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = load ptr, ptr %0, align 4
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %12) #12
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void @brcmf_detach(ptr noundef %15) #12
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void @brcmf_free(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 55
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #12
  %21 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 54
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  tail call void @destroy_workqueue(ptr noundef nonnull %22) #12
  br label %25

25:                                               ; preds = %24, %11
  %26 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %30, i32 0, i32 21
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %30, align 4
  tail call void @sdio_claim_host(ptr noundef %35) #12
  %36 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 53
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %41 = tail call i32 @del_timer_sync(ptr noundef %40) #12
  store i8 0, ptr %36, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %46 [
    i32 3, label %47
    i32 0, label %45
  ]

45:                                               ; preds = %42
  store i32 1, ptr %43, align 4
  br label %46

46:                                               ; preds = %45, %42
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef nonnull %0, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %47

47:                                               ; preds = %46, %42
  tail call void @msleep(i32 noundef 20) #12
  %48 = load ptr, ptr %26, align 4
  tail call void @brcmf_chip_set_passive(ptr noundef %48) #12
  %49 = load i32, ptr %43, align 4
  switch i32 %49, label %51 [
    i32 0, label %52
    i32 3, label %50
  ]

50:                                               ; preds = %47
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %51

51:                                               ; preds = %50, %47
  store i32 0, ptr %43, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr %0, align 4
  %54 = load ptr, ptr %53, align 4
  tail call void @sdio_release_host(ptr noundef %54) #12
  %55 = load ptr, ptr %26, align 4
  br label %56

56:                                               ; preds = %52, %29
  %57 = phi ptr [ %55, %52 ], [ %27, %29 ]
  tail call void @brcmf_chip_detach(ptr noundef %57) #12
  br label %58

58:                                               ; preds = %56, %25
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %59, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @brcmf_release_module_param(ptr noundef nonnull %61) #12
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 23
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #12
  %67 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %68) #12
  tail call void @kfree(ptr noundef nonnull %0) #12
  br label %69

69:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_intr_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_wd_timer(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  br i1 %1, label %10, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 53
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #12
  store i8 0, ptr %4, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %11, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 53
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %20, 1
  %22 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %23 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50, i32 1
  store i32 %21, ptr %23, align 4
  tail call void @add_timer(ptr noundef %22) #12
  store i8 1, ptr %16, align 4
  br label %29

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = add i32 %26, 1
  %28 = tail call i32 @mod_timer(ptr noundef %25, i32 noundef %27) #12
  br label %29

29:                                               ; preds = %24, %19, %10, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_chip_set_passive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_chip_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_release_module_param(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdio_sleep(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #12
  %5 = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext false)
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  tail call void @sdio_release_host(ptr noundef %7) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 60
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 61
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, %5
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  br i1 %1, label %14, label %25

14:                                               ; preds = %13
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = call zeroext i8 @sdio_readb(ptr noundef %16, i32 noundef 65550, ptr noundef nonnull %4) #12
  %18 = and i8 %17, 31
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %21, align 4
  call void @sdio_writeb(ptr noundef %22, i8 noundef zeroext 8, i32 noundef 65550, ptr noundef nonnull %4) #12
  br label %23

23:                                               ; preds = %20, %14
  %24 = call fastcc i32 @brcmf_sdio_kso_control(ptr noundef %0, i1 noundef zeroext false)
  br label %27

25:                                               ; preds = %13
  %26 = tail call fastcc i32 @brcmf_sdio_kso_control(ptr noundef %0, i1 noundef zeroext true)
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  store i32 %28, ptr %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = call i32 @net_ratelimit() #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_sleep, ptr noundef nonnull @.str.96, i32 noundef %34) #12
  br label %70

35:                                               ; preds = %27, %9, %3
  br i1 %1, label %36, label %44

36:                                               ; preds = %35
  %37 = load i8, ptr %6, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %43 [
    i32 0, label %68
    i32 3, label %42
  ]

42:                                               ; preds = %39
  call fastcc void @brcmf_sdio_htclk(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %43

43:                                               ; preds = %42, %39
  store i32 0, ptr %40, align 4
  br label %68

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %48 [
    i32 3, label %49
    i32 0, label %47
  ]

47:                                               ; preds = %44
  store i32 1, ptr %45, align 4
  br label %48

48:                                               ; preds = %47, %44
  call fastcc void @brcmf_sdio_htclk(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %2) #12
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %50, i32 0, i32 21
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 53
  %56 = load i8, ptr %55, align 4, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = add i32 %59, 1
  %61 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %62 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50, i32 1
  store i32 %60, ptr %62, align 4
  call void @add_timer(ptr noundef %61) #12
  store i8 1, ptr %55, align 4
  br label %68

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 50
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, 1
  %67 = call i32 @mod_timer(ptr noundef %64, i32 noundef %66) #12
  br label %68

68:                                               ; preds = %63, %58, %49, %43, %39, %36
  %69 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 61
  store i8 %5, ptr %69, align 1
  br label %70

70:                                               ; preds = %68, %33, %30
  %71 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_sdiod_freezing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_change_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_try_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmu_pktq_mlen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fw_crashed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_recv_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_rxfail(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %8 = tail call i32 @net_ratelimit() #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = select i1 %1, ptr @.str.32, ptr @.str.33
  %12 = select i1 %2, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.31, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  br label %13

13:                                               ; preds = %10, %3
  br i1 %1, label %14, label %19

14:                                               ; preds = %13
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @brcmf_sdiod_abort(ptr noundef %15, ptr noundef %17) #12
  br label %19

19:                                               ; preds = %14, %13
  %20 = load ptr, ptr %0, align 4
  %21 = load ptr, ptr %20, align 4
  call void @sdio_writeb(ptr noundef %21, i8 noundef zeroext 1, i32 noundef 65549, ptr noundef nonnull %4) #12
  %22 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %53, %19
  %26 = phi i32 [ 65535, %19 ], [ %55, %53 ]
  %27 = phi i32 [ 65535, %19 ], [ %56, %53 ]
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = call zeroext i8 @sdio_readb(ptr noundef %29, i32 noundef 65564, ptr noundef nonnull %4) #12
  %31 = load ptr, ptr %0, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = call zeroext i8 @sdio_readb(ptr noundef %32, i32 noundef 65563, ptr noundef nonnull %4) #12
  %34 = load i32, ptr %22, align 4
  %35 = add i32 %34, 2
  store i32 %35, ptr %22, align 4
  %36 = zext i8 %30 to i32
  %37 = icmp eq i8 %30, 0
  %38 = zext i8 %33 to i32
  %39 = icmp eq i8 %33, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %62, label %41

41:                                               ; preds = %25
  %42 = ashr i32 %26, 8
  %43 = icmp slt i32 %42, %36
  %44 = and i32 %26, 255
  %45 = icmp ult i32 %44, %38
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = call i32 @net_ratelimit() #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = shl nuw nsw i32 %36, 8
  %52 = or i32 %51, %38
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.35, i32 noundef %26, i32 noundef %52) #12
  br label %53

53:                                               ; preds = %50, %47, %41
  %54 = shl nuw nsw i32 %36, 8
  %55 = or i32 %54, %38
  %56 = add nsw i32 %27, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %25

58:                                               ; preds = %53
  %59 = call i32 @net_ratelimit() #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.36, i32 noundef %55) #12
  br label %62

62:                                               ; preds = %61, %58, %25
  br i1 %2, label %63, label %76

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.brcmf_core, ptr %7, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 64
  call void @brcmf_sdiod_writel(ptr noundef %5, i32 noundef %69, i32 noundef 1, ptr noundef nonnull %4) #12
  %70 = load i32, ptr %22, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %22, align 4
  %72 = load i32, ptr %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 16
  store i8 1, ptr %75, align 2
  br label %76

76:                                               ; preds = %74, %63, %62
  %77 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 15, i32 2
  store i16 0, ptr %77, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_hdparse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i16, ptr %1, align 1
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %5 to i32
  %9 = or i16 %7, %5
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 17
  store i8 0, ptr %12, align 1
  br label %197

13:                                               ; preds = %4
  %14 = xor i16 %7, %5
  %15 = icmp eq i16 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @net_ratelimit() #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.37) #12
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call fastcc void @brcmf_sdio_rxfail(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %197

24:                                               ; preds = %13
  %25 = icmp ult i16 %5, 12
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = tail call i32 @net_ratelimit() #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %197, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.38) #12
  br label %197

30:                                               ; preds = %24
  %31 = icmp eq i32 %3, 1
  br i1 %31, label %32, label %47

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %8, -1
  %36 = add i32 %35, %34
  %37 = urem i32 %36, %34
  %38 = sub i32 %36, %37
  %39 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %2, i32 0, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %32
  %44 = tail call i32 @net_ratelimit() #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %197, label %46

46:                                               ; preds = %43
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.39) #12
  br label %197

47:                                               ; preds = %30
  %48 = icmp eq i32 %3, 2
  br i1 %48, label %49, label %57

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %2, i32 0, i32 2
  %51 = load i16, ptr %50, align 2
  %52 = icmp ugt i16 %5, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = tail call i32 @net_ratelimit() #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %197, label %56

56:                                               ; preds = %53
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.40) #12
  br label %197

57:                                               ; preds = %49, %47
  %58 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %2, i32 0, i32 2
  store i16 %5, ptr %58, align 2
  br label %68

59:                                               ; preds = %32
  store i16 %5, ptr %39, align 2
  %60 = getelementptr i8, ptr %1, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = icmp sgt i8 %61, -1
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @net_ratelimit() #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.41) #12
  br label %67

67:                                               ; preds = %66, %63
  store i16 0, ptr %39, align 2
  br label %197

68:                                               ; preds = %59, %57
  %69 = phi ptr [ %58, %57 ], [ %39, %59 ]
  %70 = phi i1 [ %48, %57 ], [ false, %59 ]
  %71 = getelementptr i8, ptr %1, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = lshr i32 %72, 8
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 15
  %77 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %2, i32 0, i32 1
  store i8 %76, ptr %77, align 1
  %78 = icmp ugt i16 %5, 2048
  br i1 %78, label %79, label %91

79:                                               ; preds = %68
  %80 = icmp ne i8 %76, 0
  %81 = icmp ne i32 %3, 1
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = tail call i32 @net_ratelimit() #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.42) #12
  br label %87

87:                                               ; preds = %86, %83
  %88 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  tail call fastcc void @brcmf_sdio_rxfail(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false)
  store i16 0, ptr %69, align 2
  br label %197

91:                                               ; preds = %79, %68
  %92 = xor i1 %31, true
  %93 = icmp eq i8 %76, 3
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = tail call i32 @net_ratelimit() #12
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.43) #12
  br label %99

99:                                               ; preds = %98, %95
  store i16 0, ptr %69, align 2
  br label %197

100:                                              ; preds = %91
  %101 = xor i1 %70, true
  %102 = add nsw i8 %76, -1
  %103 = icmp ult i8 %102, 2
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = tail call i32 @net_ratelimit() #12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.44) #12
  br label %109

109:                                              ; preds = %108, %105
  store i16 0, ptr %69, align 2
  br label %197

110:                                              ; preds = %100
  %111 = load i32, ptr %71, align 4
  %112 = lshr i32 %111, 24
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %2, i32 0, i32 5
  store i8 %113, ptr %114, align 2
  %115 = icmp ult i8 %113, 12
  %116 = trunc i32 %112 to i16
  %117 = icmp ult i16 %5, %116
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = tail call i32 @net_ratelimit() #12
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = and i32 %72, 255
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.45, i32 noundef %123) #12
  br label %124

124:                                              ; preds = %122, %119
  %125 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 10
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 4
  tail call fastcc void @brcmf_sdio_rxfail(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false)
  store i16 0, ptr %69, align 2
  br label %197

128:                                              ; preds = %110
  %129 = load i8, ptr %2, align 2
  %130 = and i32 %72, 255
  %131 = icmp eq i8 %129, %73
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 11
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 4
  store i8 %73, ptr %2, align 2
  br label %136

136:                                              ; preds = %132, %128
  br i1 %70, label %197, label %137

137:                                              ; preds = %136
  %138 = lshr i32 %72, 16
  %139 = trunc i32 %138 to i16
  %140 = and i16 %139, 255
  %141 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %2, i32 0, i32 4
  store i16 %140, ptr %141, align 2
  %142 = icmp ugt i16 %140, 128
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i8, ptr %77, align 1
  %145 = icmp eq i8 %144, 3
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = tail call i32 @net_ratelimit() #12
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.46, i32 noundef %130) #12
  br label %150

150:                                              ; preds = %149, %146, %143
  store i16 0, ptr %141, align 2
  br label %151

151:                                              ; preds = %150, %137
  %152 = getelementptr i8, ptr %1, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 9
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i32
  %158 = and i32 %153, 255
  %159 = icmp eq i32 %158, %157
  br i1 %159, label %180, label %160

160:                                              ; preds = %151
  %161 = xor i32 %157, -1
  %162 = and i32 %158, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 13
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  br label %168

168:                                              ; preds = %164, %160
  %169 = xor i32 %158, -1
  %170 = and i32 %157, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 14
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 4
  br label %176

176:                                              ; preds = %172, %168
  %177 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 12
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %177, align 4
  store i8 %154, ptr %155, align 4
  br label %180

180:                                              ; preds = %176, %151
  %181 = lshr i32 %153, 8
  %182 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 10
  %183 = load i8, ptr %182, align 1
  %184 = trunc i32 %181 to i8
  %185 = sub i8 %184, %183
  %186 = icmp ugt i8 %185, 64
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = tail call i32 @net_ratelimit() #12
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.47, i32 noundef %130) #12
  br label %191

191:                                              ; preds = %190, %187
  %192 = load i8, ptr %182, align 1
  %193 = add i8 %192, 2
  br label %194

194:                                              ; preds = %191, %180
  %195 = phi i8 [ %193, %191 ], [ %184, %180 ]
  %196 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 11
  store i8 %195, ptr %196, align 2
  br label %197

197:                                              ; preds = %194, %136, %124, %109, %99, %87, %67, %56, %53, %46, %43, %29, %26, %20, %11
  %198 = phi i32 [ -5, %20 ], [ -22, %67 ], [ -71, %87 ], [ -22, %99 ], [ -22, %109 ], [ -6, %124 ], [ 0, %194 ], [ -61, %11 ], [ -71, %29 ], [ -71, %26 ], [ -71, %46 ], [ -71, %43 ], [ -71, %56 ], [ -71, %53 ], [ 0, %136 ]
  ret i32 %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_recv_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_rx_frame(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_recv_chain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_abort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_send_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_txfail(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @net_ratelimit() #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_txfail, ptr noundef nonnull @.str.53) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @brcmf_sdiod_abort(ptr noundef %2, ptr noundef %11) #12
  %13 = load ptr, ptr %2, align 4
  tail call void @sdio_writeb(ptr noundef %13, i8 noundef zeroext 2, i32 noundef 65549, ptr noundef null) #12
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 59, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = tail call zeroext i8 @sdio_readb(ptr noundef %17, i32 noundef 65562, ptr noundef null) #12
  %19 = load ptr, ptr %2, align 4
  %20 = tail call zeroext i8 @sdio_readb(ptr noundef %19, i32 noundef 65561, ptr noundef null) #12
  %21 = load i32, ptr %14, align 4
  %22 = add i32 %21, 2
  store i32 %22, ptr %14, align 4
  %23 = icmp eq i8 %18, 0
  %24 = icmp eq i8 %20, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %43, label %26

26:                                               ; preds = %6
  %27 = load ptr, ptr %2, align 4
  %28 = tail call zeroext i8 @sdio_readb(ptr noundef %27, i32 noundef 65562, ptr noundef null) #12
  %29 = load ptr, ptr %2, align 4
  %30 = tail call zeroext i8 @sdio_readb(ptr noundef %29, i32 noundef 65561, ptr noundef null) #12
  %31 = load i32, ptr %14, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %14, align 4
  %33 = icmp eq i8 %28, 0
  %34 = icmp eq i8 %30, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %2, align 4
  %38 = tail call zeroext i8 @sdio_readb(ptr noundef %37, i32 noundef 65562, ptr noundef null) #12
  %39 = load ptr, ptr %2, align 4
  %40 = tail call zeroext i8 @sdio_readb(ptr noundef %39, i32 noundef 65561, ptr noundef null) #12
  %41 = load i32, ptr %14, align 4
  %42 = add i32 %41, 2
  store i32 %42, ptr %14, align 4
  br label %43

43:                                               ; preds = %36, %26, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_mdeq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_txflowblock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_send_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_txcomplete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_txpkt_hdalign(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 64
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = urem i32 %5, %8
  %10 = trunc i32 %9 to i16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %14 to i32
  %16 = sub i32 %5, %15
  %17 = icmp ult i32 %16, %9
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmf_bus, ptr %21, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #12, !srcloc !10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #12, !srcloc !22
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 10
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 65535
  %34 = ashr i32 %32, 16
  %35 = sub nsw i32 %33, %34
  %36 = icmp ne i32 %35, 1
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %28, %18
  %39 = phi i32 [ %37, %28 ], [ 0, %18 ]
  %40 = load ptr, ptr %3, align 4
  %41 = load ptr, ptr %13, align 8
  %42 = ptrtoint ptr %40 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = tail call i32 @llvm.usub.sat.i32(i32 %9, i32 %44) #12
  %46 = or i32 %45, %39
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %38
  %49 = add nuw nsw i32 %45, 63
  %50 = and i32 %49, 131008
  %51 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %50, i32 noundef 0, i32 noundef 2592) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.brcmf_bus, ptr %21, i32 0, i32 5, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #12, !srcloc !10
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #12, !srcloc !22
  br label %69

56:                                               ; preds = %48, %38, %12
  %57 = phi i16 [ %10, %12 ], [ 0, %48 ], [ 0, %38 ]
  %58 = zext i16 %57 to i32
  %59 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %58) #12
  %60 = load ptr, ptr %3, align 4
  br label %61

61:                                               ; preds = %56, %2
  %62 = phi i16 [ %57, %56 ], [ 0, %2 ]
  %63 = phi ptr [ %60, %56 ], [ %4, %2 ]
  %64 = zext i16 %62 to i32
  %65 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 62
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, %64
  tail call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %68, i1 false)
  br label %69

69:                                               ; preds = %61, %53
  %70 = phi i32 [ -12, %53 ], [ %64, %61 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_chip_enum_base(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_attach(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_get_core(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_module_param(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_sgtable_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_get_pmu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pktq_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_buscore_read32(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @brcmf_sdiod_readl(ptr noundef %0, i32 noundef %1, ptr noundef null) #12
  %4 = icmp eq i32 %1, 402653184
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.sdio_func, ptr %6, i32 0, i32 6
  %8 = load i16, ptr %7, align 4
  switch i16 %8, label %15 [
    i16 17209, label %9
    i16 17205, label %9
  ]

9:                                                ; preds = %5, %5
  %10 = and i32 %3, 917504
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = and i32 %3, -65536
  %14 = or i32 %13, 17209
  br label %15

15:                                               ; preds = %12, %9, %5, %2
  %16 = phi i32 [ %14, %12 ], [ %3, %9 ], [ %3, %2 ], [ %3, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdio_buscore_write32(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @brcmf_sdiod_writel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_buscoreprep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %3 = load ptr, ptr %0, align 4
  call void @sdio_writeb(ptr noundef %3, i8 noundef zeroext 40, i32 noundef 65550, ptr noundef nonnull %2) #12
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = call i32 @net_ratelimit() #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_buscoreprep, ptr noundef nonnull @.str.59) #12
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i32, ptr %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 4
  %14 = call zeroext i8 @sdio_readb(ptr noundef %13, i32 noundef 65550, ptr noundef null) #12
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 63
  %17 = icmp eq i32 %16, 40
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 4
  %20 = call zeroext i8 @sdio_readb(ptr noundef %19, i32 noundef 65550, ptr noundef null) #12
  %21 = icmp ult i8 %20, 64
  br i1 %21, label %26, label %42

22:                                               ; preds = %12
  %23 = call i32 @net_ratelimit() #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %22
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_buscoreprep, ptr noundef nonnull @.str.60, i32 noundef 40, i32 noundef %15) #12
  br label %46

26:                                               ; preds = %26, %18
  %27 = phi i32 [ %29, %26 ], [ 1000009, %18 ]
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 2147480) #12
  %29 = add nsw i32 %27, -10
  %30 = load ptr, ptr %0, align 4
  %31 = call zeroext i8 @sdio_readb(ptr noundef %30, i32 noundef 65550, ptr noundef null) #12
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 192
  %34 = icmp eq i32 %33, 0
  %35 = icmp ugt i32 %29, 9
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %26, label %37

37:                                               ; preds = %26
  br i1 %34, label %38, label %42

38:                                               ; preds = %37
  %39 = call i32 @net_ratelimit() #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_buscoreprep, ptr noundef nonnull @.str.61, i32 noundef %32) #12
  br label %46

42:                                               ; preds = %37, %18
  %43 = load ptr, ptr %0, align 4
  call void @sdio_writeb(ptr noundef %43, i8 noundef zeroext 33, i32 noundef 65550, ptr noundef nonnull %2) #12
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 13958620) #12
  %45 = load ptr, ptr %0, align 4
  call void @sdio_writeb(ptr noundef %45, i8 noundef zeroext 0, i32 noundef 65551, ptr noundef null) #12
  br label %46

46:                                               ; preds = %42, %41, %38, %25, %22, %10
  %47 = phi i32 [ %11, %10 ], [ 0, %42 ], [ -13, %25 ], [ -13, %22 ], [ -16, %41 ], [ -16, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdio_buscore_activate(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_core, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 32
  tail call void @brcmf_sdiod_writel(ptr noundef %0, i32 noundef %11, i32 noundef -1, ptr noundef null) #12
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @brcmf_sdiod_ramrw(ptr noundef %0, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 4) #12
  br label %15

15:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_ramrw(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_freezer_uncount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_fw_alloc_request(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_chip_sr_capable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_sr_init(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 43012
  %7 = select i1 %6, i8 16, i8 2
  %8 = icmp eq i32 %5, 43752
  %9 = or i1 %6, %8
  %10 = select i1 %9, i8 8, i8 6
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = call zeroext i8 @sdio_readb(ptr noundef %12, i32 noundef 65566, ptr noundef nonnull %2) #12
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @net_ratelimit() #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %16
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.77) #12
  br label %53

20:                                               ; preds = %1
  %21 = xor i1 %6, true
  %22 = zext i1 %21 to i8
  %23 = shl nuw nsw i8 1, %22
  %24 = or i8 %23, %13
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %25, align 4
  call void @sdio_writeb(ptr noundef %26, i8 noundef zeroext %24, i32 noundef 65566, ptr noundef nonnull %2) #12
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = call i32 @net_ratelimit() #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.78) #12
  br label %53

33:                                               ; preds = %20
  %34 = load ptr, ptr %0, align 4
  %35 = load ptr, ptr %34, align 4
  call void @sdio_f0_writeb(ptr noundef %35, i8 noundef zeroext %10, i32 noundef 240, ptr noundef nonnull %2) #12
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = call i32 @net_ratelimit() #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.79) #12
  br label %53

42:                                               ; preds = %33
  %43 = load ptr, ptr %0, align 4
  %44 = load ptr, ptr %43, align 4
  call void @sdio_writeb(ptr noundef %44, i8 noundef zeroext %7, i32 noundef 65550, ptr noundef nonnull %2) #12
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = call i32 @net_ratelimit() #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.80) #12
  br label %53

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 60
  store i8 1, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %50, %47, %41, %38, %32, %29, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_intr_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fw_nvram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_chip_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_preinit(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %10 = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !18

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 3536, i32 noundef 9, ptr noundef null) #12
  br label %69

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  store i32 %17, ptr %10, align 4
  %18 = add i32 %17, 15
  %19 = and i32 %18, -4
  %20 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 64
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add i32 %19, %22
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 2592) #14
  %25 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 23
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 24
  store i32 %23, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %14
  %30 = getelementptr inbounds %struct.brcmf_core, ptr %9, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = icmp ult i16 %31, 12
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.brcmf_mp_device, ptr %35, i32 0, i32 8, i32 0, i32 7
  %37 = load i16, ptr %36, align 4
  %38 = tail call i16 @llvm.umax.i16(i16 %37, i16 4)
  %39 = zext i16 %38 to i32
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i32 [ %39, %33 ], [ 0, %29 ]
  %42 = phi ptr [ @.str.82, %33 ], [ @.str.81, %29 ]
  store i32 %41, ptr %2, align 4
  %43 = call i32 @brcmf_iovar_data_set(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull %2, i32 noundef 4) #12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62
  store i8 12, ptr %46, align 2
  %47 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 12
  %48 = load i8, ptr %47, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 63
  store i8 0, ptr %51, align 1
  store i32 1, ptr %2, align 4
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @brcmf_iovar_data_set(ptr noundef %54, ptr noundef nonnull @.str.83, ptr noundef nonnull %2, i32 noundef 4) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i8, ptr %46, align 2
  br label %62

59:                                               ; preds = %50
  store i8 1, ptr %51, align 1
  %60 = load i8, ptr %46, align 2
  %61 = add i8 %60, 8
  store i8 %61, ptr %46, align 2
  br label %62

62:                                               ; preds = %59, %57, %45
  %63 = phi i8 [ %61, %59 ], [ 12, %45 ], [ %58, %57 ]
  %64 = phi i32 [ %55, %59 ], [ %43, %45 ], [ 0, %57 ]
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %65, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = zext i8 %63 to i32
  call void @brcmf_bus_add_txhdrlen(ptr noundef %67, i32 noundef %68) #12
  br label %69

69:                                               ; preds = %62, %40, %13
  %70 = phi i32 [ -22, %13 ], [ %43, %40 ], [ %64, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdio_bus_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 52
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @send_sig(i32 noundef 15, ptr noundef nonnull %11, i32 noundef 1) #12
  %15 = load ptr, ptr %10, align 4
  %16 = tail call i32 @kthread_stop(ptr noundef %15) #12
  store ptr null, ptr %10, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 4
  tail call void @sdio_claim_host(ptr noundef %22) #12
  %23 = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext false)
  %24 = getelementptr inbounds %struct.brcmf_core, ptr %9, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 36
  tail call void @brcmf_sdiod_writel(ptr noundef %5, i32 noundef %26, i32 noundef 0, ptr noundef null) #12
  %27 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  store i32 0, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = call zeroext i8 @sdio_readb(ptr noundef %29, i32 noundef 65550, ptr noundef nonnull %2) #12
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 43012
  %38 = select i1 %37, i8 16, i8 2
  %39 = or i8 %38, %30
  %40 = load ptr, ptr %5, align 4
  call void @sdio_writeb(ptr noundef %40, i8 noundef zeroext %39, i32 noundef 65550, ptr noundef nonnull %2) #12
  %41 = load i32, ptr %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33, %21
  %44 = call i32 @net_ratelimit() #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %2, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_stop, ptr noundef nonnull @.str.68, i32 noundef %47) #12
  br label %48

48:                                               ; preds = %46, %43, %33
  %49 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @sdio_disable_func(ptr noundef %50) #12
  %52 = load i32, ptr %24, align 4
  %53 = add i32 %52, 32
  call void @brcmf_sdiod_writel(ptr noundef %5, i32 noundef %53, i32 noundef %28, ptr noundef null) #12
  %54 = load ptr, ptr %5, align 4
  call void @sdio_release_host(ptr noundef %54) #12
  br label %55

55:                                               ; preds = %48, %17
  %56 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 8
  call void @brcmu_pktq_flush(ptr noundef %56, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #12
  %57 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 21
  %58 = load ptr, ptr %57, align 4
  call void @brcmu_pkt_buf_free_skb(ptr noundef %58) #12
  %59 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 22
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %66, label %62

62:                                               ; preds = %62, %55
  %63 = phi ptr [ %64, %62 ], [ %60, %55 ]
  %64 = load ptr, ptr %63, align 8
  call void @skb_unlink(ptr noundef %63, ptr noundef %59) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %63) #12
  %65 = icmp eq ptr %64, %59
  br i1 %65, label %66, label %62

66:                                               ; preds = %62, %55
  %67 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 28
  call void @_raw_spin_lock_bh(ptr noundef %67) #12
  %68 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 27
  store i32 0, ptr %68, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %67) #12
  %69 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 49
  call void @__wake_up(ptr noundef %69, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %70 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 16
  store i8 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 14
  store i8 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 10
  store i8 0, ptr %72, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_txdata(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %6, i32 0, i32 21
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %96

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 62
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %15) #12
  %17 = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_pub, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 7
  %25 = tail call zeroext i8 @brcmf_map_prio_to_prec(ptr noundef %20, i8 noundef zeroext %24) #12
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 59, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 47
  tail call void @_raw_spin_lock_bh(ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i16 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 -1, ptr %3, align 4
  %33 = getelementptr %struct.brcmf_sdio, ptr %8, i32 0, i32 8, i32 4, i32 %26, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.brcmf_sdio, ptr %8, i32 0, i32 8, i32 4, i32 %26, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 8, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 8, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = icmp ult i16 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call ptr @brcmu_pktq_penq(ptr noundef %32, i32 noundef %26, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %80

47:                                               ; preds = %39
  %48 = call ptr @brcmu_pktq_peek_tail(ptr noundef %32, ptr noundef nonnull %3) #12
  %49 = load i32, ptr %3, align 4
  %50 = icmp sgt i32 %49, %26
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = icmp sgt i32 %49, -1
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = icmp eq i32 %49, %26
  br i1 %54, label %70, label %55

55:                                               ; preds = %53
  %56 = call ptr @brcmu_pktq_pdeq_tail(ptr noundef %32, i32 noundef %49) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = call i32 @net_ratelimit() #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_prec_enq, ptr noundef nonnull @.str.85) #12
  br label %62

62:                                               ; preds = %61, %58, %55
  call void @brcmu_pkt_buf_free_skb(ptr noundef %56) #12
  br label %63

63:                                               ; preds = %62, %51
  %64 = call ptr @brcmu_pktq_penq(ptr noundef %32, i32 noundef %26, ptr noundef %1) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = call i32 @net_ratelimit() #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_prec_enq, ptr noundef nonnull @.str.86) #12
  br label %71

70:                                               ; preds = %53, %47, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %73

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %73

72:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %80

73:                                               ; preds = %71, %70
  %74 = load i8, ptr %13, align 2
  %75 = zext i8 %74 to i32
  %76 = call ptr @skb_pull(ptr noundef %1, i32 noundef %75) #12
  %77 = call i32 @net_ratelimit() #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_txdata, ptr noundef nonnull @.str.84) #12
  br label %80

80:                                               ; preds = %79, %73, %72, %45
  %81 = phi i32 [ -63, %79 ], [ -63, %73 ], [ 0, %72 ], [ 0, %45 ]
  %82 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 8, i32 3
  %83 = load i16, ptr %82, align 2
  %84 = icmp ugt i16 %83, 1791
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 58
  store i8 1, ptr %86, align 2
  call void @brcmf_proto_bcdc_txflowblock(ptr noundef %0, i1 noundef zeroext true) #12
  br label %87

87:                                               ; preds = %85, %80
  call void @_raw_spin_unlock_bh(ptr noundef %30) #12
  %88 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 56
  %89 = load i8, ptr %88, align 4, !range !8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  store i8 1, ptr %88, align 4
  %92 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 54
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 55
  %95 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %93, ptr noundef %94) #12
  br label %96

96:                                               ; preds = %91, %87, %2
  %97 = phi i32 [ -5, %2 ], [ %81, %87 ], [ %81, %91 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_txctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %79

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 43
  store ptr %1, ptr %14, align 4
  %15 = trunc i32 %2 to i16
  %16 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 44
  store i16 %15, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !23
  tail call void @arm_heavy_mb() #12
  %17 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 45
  store i8 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 56
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  store i8 1, ptr %18, align 4
  %22 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 54
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 55
  %25 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %24) #12
  %26 = load i8, ptr %17, align 2, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %21, %13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #12
  %29 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 48
  %30 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 1) #12
  %31 = load i8, ptr %17, align 2, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %37, label %51

35:                                               ; preds = %37
  %36 = icmp eq i32 %40, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %46, %35 ], [ 250, %33 ]
  %39 = call i32 @schedule_timeout(i32 noundef %38) #12
  %40 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 1) #12
  %41 = load i8, ptr %17, align 2, !range !8
  %42 = icmp ne i8 %41, 0
  %43 = xor i1 %42, true
  %44 = icmp ne i32 %39, 0
  %45 = select i1 %42, i1 true, i1 %44
  %46 = select i1 %45, i32 %39, i32 1
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %43, i1 true, i1 %47
  br i1 %48, label %49, label %35

49:                                               ; preds = %37, %28
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %4) #12
  %50 = load i8, ptr %17, align 2
  br label %51

51:                                               ; preds = %49, %35, %33
  %52 = phi i8 [ %50, %49 ], [ 1, %33 ], [ %41, %35 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %9, align 4
  %56 = load ptr, ptr %55, align 4
  call void @sdio_claim_host(ptr noundef %56) #12
  %57 = load i8, ptr %17, align 2, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load ptr, ptr %9, align 4
  %61 = load ptr, ptr %60, align 4
  call void @sdio_release_host(ptr noundef %61) #12
  br label %65

62:                                               ; preds = %54
  store i8 0, ptr %17, align 2
  %63 = load ptr, ptr %9, align 4
  %64 = load ptr, ptr %63, align 4
  call void @sdio_release_host(ptr noundef %64) #12
  br label %69

65:                                               ; preds = %59, %51, %21
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %66 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 46
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65, %62
  %70 = phi i32 [ %67, %65 ], [ -110, %62 ]
  %71 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 59, i32 23
  br label %74

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 59, i32 24
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi ptr [ %71, %69 ], [ %73, %72 ]
  %76 = phi i32 [ %70, %69 ], [ 0, %72 ]
  %77 = load i32, ptr %75, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %75, align 4
  br label %79

79:                                               ; preds = %74, %3
  %80 = phi i32 [ -5, %3 ], [ %76, %74 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_rxctl(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %75

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %16 = tail call ptr @llvm.thread.pointer() #12
  store i32 0, ptr %4, align 4
  store ptr %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @default_wake_function, ptr %17, align 4
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 49
  call void @add_wait_queue(ptr noundef %20, ptr noundef nonnull %4) #12
  %21 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  store volatile i32 1, ptr %21, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %22 = load i32, ptr %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %35, %13
  %25 = phi i32 [ %36, %35 ], [ 250, %13 ]
  %26 = load volatile i32, ptr %16, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39, !prof !16

29:                                               ; preds = %24
  %30 = load volatile i32, ptr %16, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = icmp ne i32 %25, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 @schedule_timeout(i32 noundef %25) #12
  %37 = load i32, ptr %14, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %24, label %39

39:                                               ; preds = %35, %29, %24, %13
  %40 = phi i32 [ 250, %13 ], [ %25, %29 ], [ %36, %35 ], [ %25, %24 ]
  %41 = load volatile i32, ptr %16, align 4
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48, !prof !16

44:                                               ; preds = %39
  %45 = load volatile i32, ptr %16, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i1 [ true, %44 ], [ false, %48 ]
  store volatile i32 0, ptr %21, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  call void @remove_wait_queue(ptr noundef %20, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  %51 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 28
  call void @_raw_spin_lock_bh(ptr noundef %51) #12
  %52 = load i32, ptr %14, align 4
  %53 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 25
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @llvm.umin.i32(i32 %52, i32 %2)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %54, i32 %55, i1 false)
  store ptr null, ptr %53, align 4
  %56 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 26
  %57 = load ptr, ptr %56, align 4
  store ptr null, ptr %56, align 4
  store i32 0, ptr %14, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %51) #12
  call void @vfree(ptr noundef %57) #12
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = icmp eq i32 %40, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = call i32 @net_ratelimit() #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_rxctl, ptr noundef nonnull @.str.87) #12
  br label %68

65:                                               ; preds = %59
  br i1 %50, label %68, label %75

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 59, i32 26
  br label %70

68:                                               ; preds = %65, %64, %61
  %69 = getelementptr inbounds %struct.brcmf_sdio, ptr %9, i32 0, i32 59, i32 25
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi ptr [ %67, %66 ], [ %69, %68 ]
  %72 = phi i32 [ %52, %66 ], [ -110, %68 ]
  %73 = load i32, ptr %71, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %71, align 4
  br label %75

75:                                               ; preds = %70, %65, %3
  %76 = phi i32 [ -5, %3 ], [ -512, %65 ], [ %72, %70 ]
  ret i32 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @brcmf_sdio_bus_gettxq(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 8
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_wowl_config(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_sdio_bus_get_ramsize(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_chip, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_chip, ptr %8, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_get_memdump(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_sdio, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_chip, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %6, align 4
  tail call void @sdio_claim_host(ptr noundef %13) #12
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %29, %3
  %16 = phi ptr [ %30, %29 ], [ %1, %3 ]
  %17 = phi i32 [ %31, %29 ], [ 0, %3 ]
  %18 = phi i32 [ %32, %29 ], [ %12, %3 ]
  %19 = add i32 %17, 2048
  %20 = icmp ult i32 %19, %2
  %21 = sub i32 %2, %17
  %22 = select i1 %20, i32 2048, i32 %21
  %23 = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %6, i1 noundef zeroext false, i32 noundef %18, ptr noundef %16, i32 noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = tail call i32 @net_ratelimit() #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_get_memdump, ptr noundef nonnull @.str.88, i32 noundef %23, i32 noundef %22, i32 noundef %18) #12
  br label %34

29:                                               ; preds = %15
  %30 = getelementptr i8, ptr %16, i32 %22
  %31 = add i32 %22, %17
  %32 = add i32 %22, %18
  %33 = icmp ult i32 %31, %2
  br i1 %33, label %15, label %34

34:                                               ; preds = %29, %28, %25, %3
  %35 = phi i32 [ %23, %28 ], [ %23, %25 ], [ 0, %3 ], [ 0, %29 ]
  %36 = load ptr, ptr %6, align 4
  tail call void @sdio_release_host(ptr noundef %36) #12
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_get_fwname(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1 x %struct.brcmf_fw_name], align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.brcmf_fw_name, ptr %4, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.brcmf_bus, ptr %6, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_bus, ptr %6, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = call ptr @brcmf_fw_alloc_request(i32 noundef %9, i32 noundef %11, ptr noundef nonnull @brcmf_sdio_fwnames, i32 noundef 23, ptr noundef nonnull %4, i32 noundef 1) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @kfree(ptr noundef nonnull %12) #12
  br label %15

15:                                               ; preds = %14, %3
  %16 = phi i32 [ 0, %14 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @brcmf_sdio_debugfs_create(ptr nocapture noundef %0) #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %4) #12
  %5 = tail call i32 @brcmf_sdiod_remove(ptr noundef %4) #12
  %6 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %6) #12
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @mmc_hw_reset(ptr noundef %9) #12
  %11 = load ptr, ptr %4, align 4
  tail call void @sdio_release_host(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %13, i32 noundef 0) #12
  %14 = tail call i32 @brcmf_sdiod_probe(ptr noundef %4) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = tail call i32 @net_ratelimit() #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_reset, ptr noundef nonnull @.str.89, i32 noundef %14) #12
  br label %20

20:                                               ; preds = %19, %16, %1
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_add_txhdrlen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pktq_flush(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcmf_map_prio_to_prec(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_penq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_peek_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_pdeq_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_change_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_htclk(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 60
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = select i1 %1, i32 3, i32 1
  %10 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  store i32 %9, ptr %10, align 4
  br label %137

11:                                               ; preds = %3
  br i1 %1, label %12, label %116

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 42
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i8 16, i8 8
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 4
  call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext %16, i32 noundef 65550, ptr noundef nonnull %4) #12
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %12
  %22 = call i32 @net_ratelimit() #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %137, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.91, i32 noundef %25) #12
  br label %137

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = call zeroext i8 @sdio_readb(ptr noundef %28, i32 noundef 65550, ptr noundef nonnull %4) #12
  %30 = load i32, ptr %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = call i32 @net_ratelimit() #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %137, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.92, i32 noundef %36) #12
  br label %137

37:                                               ; preds = %26
  %38 = icmp ult i8 %29, 64
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = load i8, ptr %13, align 2, !range !8
  %41 = icmp ne i8 %40, 0
  %42 = icmp ugt i8 %29, -65
  %43 = select i1 %41, i1 true, i1 %42
  %44 = xor i1 %2, true
  %45 = or i1 %43, %44
  br i1 %45, label %63, label %47

46:                                               ; preds = %37
  br i1 %2, label %47, label %63

47:                                               ; preds = %46, %39
  %48 = load ptr, ptr %0, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = call zeroext i8 @sdio_readb(ptr noundef %49, i32 noundef 65545, ptr noundef nonnull %4) #12
  %51 = load i32, ptr %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = call i32 @net_ratelimit() #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %137, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.93, i32 noundef %57) #12
  br label %137

58:                                               ; preds = %47
  %59 = or i8 %50, 4
  %60 = load ptr, ptr %0, align 4
  %61 = load ptr, ptr %60, align 4
  call void @sdio_writeb(ptr noundef %61, i8 noundef zeroext %59, i32 noundef 65545, ptr noundef nonnull %4) #12
  %62 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  store i32 2, ptr %62, align 4
  br label %137

63:                                               ; preds = %46, %39
  %64 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = call zeroext i8 @sdio_readb(ptr noundef %69, i32 noundef 65545, ptr noundef nonnull %4) #12
  %71 = and i8 %70, -5
  %72 = load ptr, ptr %0, align 4
  %73 = load ptr, ptr %72, align 4
  call void @sdio_writeb(ptr noundef %73, i8 noundef zeroext %71, i32 noundef 65545, ptr noundef nonnull %4) #12
  br label %74

74:                                               ; preds = %67, %63
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = add i32 %75, 100
  br label %77

77:                                               ; preds = %92, %74
  %78 = phi i8 [ %29, %74 ], [ %88, %92 ]
  %79 = icmp ult i8 %78, 64
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i8, ptr %13, align 2, !range !8
  %82 = icmp ne i8 %81, 0
  %83 = icmp ugt i8 %78, -65
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %80, %77
  %86 = load ptr, ptr %0, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = call zeroext i8 @sdio_readb(ptr noundef %87, i32 noundef 65550, ptr noundef nonnull %4) #12
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = sub i32 %76, %89
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #12
  br label %77

93:                                               ; preds = %85, %80
  %94 = phi i8 [ %88, %85 ], [ %78, %80 ]
  %95 = load i32, ptr %4, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = call i32 @net_ratelimit() #12
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.91, i32 noundef %101) #12
  br label %137

102:                                              ; preds = %93
  %103 = zext i8 %94 to i32
  %104 = and i32 %103, 192
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load i8, ptr %13, align 2, !range !8
  %108 = icmp ne i8 %107, 0
  %109 = icmp eq i32 %104, 192
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %106, %102
  %112 = call i32 @net_ratelimit() #12
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %137, label %114

114:                                              ; preds = %111
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.94, i32 noundef 1000000, i32 noundef %103) #12
  br label %137

115:                                              ; preds = %106
  store i32 3, ptr %64, align 4
  br label %137

116:                                              ; preds = %11
  %117 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 36
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load ptr, ptr %0, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = call zeroext i8 @sdio_readb(ptr noundef %122, i32 noundef 65545, ptr noundef nonnull %4) #12
  %124 = and i8 %123, -5
  %125 = load ptr, ptr %0, align 4
  %126 = load ptr, ptr %125, align 4
  call void @sdio_writeb(ptr noundef %126, i8 noundef zeroext %124, i32 noundef 65545, ptr noundef nonnull %4) #12
  br label %127

127:                                              ; preds = %120, %116
  store i32 1, ptr %117, align 4
  %128 = load ptr, ptr %0, align 4
  %129 = load ptr, ptr %128, align 4
  call void @sdio_writeb(ptr noundef %129, i8 noundef zeroext 0, i32 noundef 65550, ptr noundef nonnull %4) #12
  %130 = load i32, ptr %4, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = call i32 @net_ratelimit() #12
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = load i32, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.95, i32 noundef %136) #12
  br label %137

137:                                              ; preds = %135, %132, %127, %115, %114, %111, %100, %97, %58, %56, %53, %35, %32, %24, %21, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_kso_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_retune_crc_disable(ptr noundef %5) #12
  br i1 %1, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  tail call void @sdio_retune_hold_now(ptr noundef %8) #12
  br label %9

9:                                                ; preds = %6, %2
  %10 = zext i1 %1 to i8
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %11, align 4
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext %10, i32 noundef 65567, ptr noundef nonnull %3) #12
  br i1 %1, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.brcmf_sdio, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 43012
  br i1 %17, label %57, label %19

18:                                               ; preds = %9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #12
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ 3, %18 ], [ 0, %13 ]
  %21 = phi i32 [ 3, %18 ], [ 1, %13 ]
  br label %22

22:                                               ; preds = %37, %19
  %23 = phi i32 [ 0, %19 ], [ %38, %37 ]
  %24 = phi i32 [ 0, %19 ], [ %42, %37 ]
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = call zeroext i8 @sdio_readb(ptr noundef %26, i32 noundef 65567, ptr noundef nonnull %3) #12
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = zext i8 %27 to i32
  %32 = and i32 %21, %31
  %33 = icmp eq i32 %32, %20
  br i1 %33, label %50, label %37

34:                                               ; preds = %22
  %35 = add nsw i32 %23, 1
  %36 = icmp sgt i32 %23, 5
  br i1 %36, label %50, label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %35, %34 ], [ 0, %30 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 10737400) #12
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 4
  call void @sdio_writeb(ptr noundef %41, i8 noundef zeroext %10, i32 noundef 65567, ptr noundef nonnull %3) #12
  %42 = add nuw nsw i32 %24, 1
  %43 = icmp eq i32 %42, 20001
  br i1 %43, label %44, label %22

44:                                               ; preds = %37
  %45 = call i32 @net_ratelimit() #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = zext i8 %27 to i32
  %49 = load i32, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_kso_control, ptr noundef nonnull @.str.97, i32 noundef %48, i32 noundef %49) #12
  br label %50

50:                                               ; preds = %47, %44, %34, %30
  br i1 %1, label %51, label %54

51:                                               ; preds = %50
  %52 = load ptr, ptr %0, align 4
  %53 = load ptr, ptr %52, align 4
  call void @sdio_retune_release(ptr noundef %53) #12
  br label %54

54:                                               ; preds = %51, %50
  %55 = load ptr, ptr %0, align 4
  %56 = load ptr, ptr %55, align 4
  call void @sdio_retune_crc_enable(ptr noundef %56) #12
  br label %57

57:                                               ; preds = %54, %13
  %58 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_crc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_hold_now(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_crc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 373192, i64 2147874758, i64 2147874784, i64 2147874831, i64 2147874853, i64 2147874881, i64 2147874901}
!11 = !{i64 2147956237, i64 2147956263, i64 2147956292, i64 2147956326, i64 2147956357, i64 2147956380}
!12 = !{i64 2157001958}
!13 = !{i64 2148235297}
!14 = !{i64 455723, i64 455740, i64 455764, i64 455790, i64 455808}
!15 = !{i64 2148235641}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2156942454}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153866589, i64 2153867077, i64 2153866626, i64 2153866682, i64 2153866716, i64 2153866740, i64 2153866781, i64 2153866802, i64 2153866830, i64 2153866864}
!20 = !{i64 2156947595}
!21 = !{i64 2157000329}
!22 = !{i64 2147948459, i64 2147948485, i64 2147948514, i64 2147948548, i64 2147948579, i64 2147948602}
!23 = !{i64 2156954411}
!24 = !{i64 2156957332}
!25 = !{i64 2156890785}
!26 = !{i64 2156893637}
