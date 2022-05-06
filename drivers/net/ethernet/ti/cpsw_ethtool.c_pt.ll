; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_ethtool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpsw_stats = type { [32 x i8], i32, i32, i32 }
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.cpsw_vector = type { ptr, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.cpdma_chan_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [8 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [40 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.116, i32, %struct.spinlock }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"Set coalesce to %d usecs.\0A\00", align 1
@cpsw_gstrings_stats = internal unnamed_addr constant [34 x %struct.cpsw_stats] [%struct.cpsw_stats { [32 x i8] c"Good Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 0 }, %struct.cpsw_stats { [32 x i8] c"Broadcast Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 4 }, %struct.cpsw_stats { [32 x i8] c"Multicast Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 8 }, %struct.cpsw_stats { [32 x i8] c"Pause Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 12 }, %struct.cpsw_stats { [32 x i8] c"Rx CRC Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 16 }, %struct.cpsw_stats { [32 x i8] c"Rx Align/Code Errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 20 }, %struct.cpsw_stats { [32 x i8] c"Oversize Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 24 }, %struct.cpsw_stats { [32 x i8] c"Rx Jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 28 }, %struct.cpsw_stats { [32 x i8] c"Undersize (Short) Rx Frames\00\00\00\00\00", i32 0, i32 4, i32 32 }, %struct.cpsw_stats { [32 x i8] c"Rx Fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 36 }, %struct.cpsw_stats { [32 x i8] c"Rx Octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 48 }, %struct.cpsw_stats { [32 x i8] c"Good Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 52 }, %struct.cpsw_stats { [32 x i8] c"Broadcast Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 56 }, %struct.cpsw_stats { [32 x i8] c"Multicast Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 60 }, %struct.cpsw_stats { [32 x i8] c"Pause Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 64 }, %struct.cpsw_stats { [32 x i8] c"Deferred Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 68 }, %struct.cpsw_stats { [32 x i8] c"Collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 72 }, %struct.cpsw_stats { [32 x i8] c"Single Collision Tx Frames\00\00\00\00\00\00", i32 0, i32 4, i32 76 }, %struct.cpsw_stats { [32 x i8] c"Multiple Collision Tx Frames\00\00\00\00", i32 0, i32 4, i32 80 }, %struct.cpsw_stats { [32 x i8] c"Excessive Collisions\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 84 }, %struct.cpsw_stats { [32 x i8] c"Late Collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 88 }, %struct.cpsw_stats { [32 x i8] c"Tx Underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 92 }, %struct.cpsw_stats { [32 x i8] c"Carrier Sense Errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 96 }, %struct.cpsw_stats { [32 x i8] c"Tx Octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 100 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 64 Octet Frames\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 104 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 65-127 Octet Frames\00\00\00\00\00", i32 0, i32 4, i32 108 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 128-255 Octet Frames\00\00\00\00", i32 0, i32 4, i32 112 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 256-511 Octet Frames\00\00\00\00", i32 0, i32 4, i32 116 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 512-1023 Octet Frames\00\00\00", i32 0, i32 4, i32 120 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 1024-Up Octet Frames\00\00\00\00", i32 0, i32 4, i32 124 }, %struct.cpsw_stats { [32 x i8] c"Net Octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 128 }, %struct.cpsw_stats { [32 x i8] c"Rx Start of Frame Overruns\00\00\00\00\00\00", i32 0, i32 4, i32 132 }, %struct.cpsw_stats { [32 x i8] c"Rx Middle of Frame Overruns\00\00\00\00\00", i32 0, i32 4, i32 136 }, %struct.cpsw_stats { [32 x i8] c"Rx DMA Overruns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 140 }], align 4
@cpsw_gstrings_ch_stats = internal constant [13 x %struct.cpsw_stats] [%struct.cpsw_stats { [32 x i8] c"head_enqueue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 0 }, %struct.cpsw_stats { [32 x i8] c"tail_enqueue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 4 }, %struct.cpsw_stats { [32 x i8] c"pad_enqueue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 8 }, %struct.cpsw_stats { [32 x i8] c"misqueued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 12 }, %struct.cpsw_stats { [32 x i8] c"desc_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 16 }, %struct.cpsw_stats { [32 x i8] c"pad_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 20 }, %struct.cpsw_stats { [32 x i8] c"runt_receive_buf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 24 }, %struct.cpsw_stats { [32 x i8] c"runt_transmit_buf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 28 }, %struct.cpsw_stats { [32 x i8] c"empty_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 32 }, %struct.cpsw_stats { [32 x i8] c"busy_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 36 }, %struct.cpsw_stats { [32 x i8] c"good_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 40 }, %struct.cpsw_stats { [32 x i8] c"requeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 44 }, %struct.cpsw_stats { [32 x i8] c"teardown_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 48 }], align 4
@cpsw_slave_index = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ethtool begin failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ethtool complete failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot set real number of tx queues\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot set real number of rx queues\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"cannot update channels number, closing device\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"cannot set ring params, closing device\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s DMA chan %ld: %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Maximum one tx/rx queue is allowed\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"created new %d %s channel\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"destroyed %d %s channel\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_msglevel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cpsw_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1416
  store i32 %1, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #3 {
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #4 {
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %13 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 2
  %16 = load i32, ptr %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = and i32 %12, -4130816
  br label %46

20:                                               ; preds = %4
  %21 = tail call i32 @llvm.umax.i32(i32 %8, i32 16)
  %22 = icmp ugt i32 %21, 500
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = icmp ult i32 %15, 1024
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = trunc i32 %15 to i16
  %27 = udiv i16 2047, %26
  %28 = zext i16 %27 to i32
  %29 = mul nuw nsw i32 %15, %28
  %30 = mul nuw nsw i32 %28, 500
  %31 = tail call i32 @llvm.umin.i32(i32 %21, i32 %30)
  %32 = mul nuw nsw i32 %28, 1000
  br label %33

33:                                               ; preds = %25, %23, %20
  %34 = phi i32 [ 1000, %20 ], [ %32, %25 ], [ 1000, %23 ]
  %35 = phi i32 [ %21, %20 ], [ %31, %25 ], [ 500, %23 ]
  %36 = phi i32 [ %15, %20 ], [ %29, %25 ], [ %15, %23 ]
  %37 = udiv i32 %34, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %38, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #14, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %40, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #14, !srcloc !11
  %42 = and i32 %12, -4130816
  %43 = and i32 %36, 2047
  %44 = or i32 %42, %43
  %45 = or i32 %44, 4128768
  br label %46

46:                                               ; preds = %33, %18
  %47 = phi i32 [ %35, %33 ], [ %8, %18 ]
  %48 = phi i32 [ %45, %33 ], [ %19, %18 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %49, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #14, !srcloc !11
  %51 = getelementptr i8, ptr %0, i32 1416
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = tail call i32 @net_ratelimit() #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %0, i32 1412
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %60, ptr noundef nonnull @.str, i32 noundef %47) #15
  br label %61

61:                                               ; preds = %58, %55, %46
  %62 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 9
  store i32 %47, ptr %62, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = mul i32 %11, 13
  %13 = add i32 %12, 34
  br label %14

14:                                               ; preds = %4, %2
  %15 = phi i32 [ %13, %4 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_get_strings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %49

7:                                                ; preds = %7, %3
  %8 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %9 = phi ptr [ %11, %7 ], [ %2, %3 ]
  %10 = getelementptr [34 x %struct.cpsw_stats], ptr @cpsw_gstrings_stats, i32 0, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %9, ptr noundef align 4 dereferenceable(32) %10, i32 32, i1 false)
  %11 = getelementptr i8, ptr %9, i32 32
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, 34
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 25
  %16 = load i32, ptr %15, align 8
  %17 = mul i32 %16, 13
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %28, %19 ], [ %11, %14 ]
  %21 = phi i32 [ %29, %19 ], [ 0, %14 ]
  %22 = freeze i32 %21
  %23 = udiv i32 %22, 13
  %24 = mul i32 %23, 13
  %25 = sub i32 %22, %24
  %26 = getelementptr [13 x %struct.cpsw_stats], ptr @cpsw_gstrings_ch_stats, i32 0, i32 %25
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %23, ptr noundef %26) #14
  %28 = getelementptr i8, ptr %20, i32 32
  %29 = add nuw nsw i32 %21, 1
  %30 = icmp eq i32 %29, %17
  br i1 %30, label %31, label %19

31:                                               ; preds = %19, %14
  %32 = phi ptr [ %11, %14 ], [ %28, %19 ]
  %33 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 26
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, 13
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %37, %31
  %38 = phi ptr [ %46, %37 ], [ %32, %31 ]
  %39 = phi i32 [ %47, %37 ], [ 0, %31 ]
  %40 = freeze i32 %39
  %41 = udiv i32 %40, 13
  %42 = mul i32 %41, 13
  %43 = sub i32 %40, %42
  %44 = getelementptr [13 x %struct.cpsw_stats], ptr @cpsw_gstrings_ch_stats, i32 0, i32 %43
  %45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %41, ptr noundef %44) #14
  %46 = getelementptr i8, ptr %38, i32 32
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq i32 %47, %35
  br i1 %48, label %49, label %37

49:                                               ; preds = %37, %31, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = alloca %struct.cpdma_chan_stats, align 4
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false), !annotation !14
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 6
  br label %25

8:                                                ; preds = %25
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 25
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %4, i32 4
  %14 = getelementptr inbounds i8, ptr %4, i32 8
  %15 = getelementptr inbounds i8, ptr %4, i32 12
  %16 = getelementptr inbounds i8, ptr %4, i32 16
  %17 = getelementptr inbounds i8, ptr %4, i32 20
  %18 = getelementptr inbounds i8, ptr %4, i32 24
  %19 = getelementptr inbounds i8, ptr %4, i32 28
  %20 = getelementptr inbounds i8, ptr %4, i32 32
  %21 = getelementptr inbounds i8, ptr %4, i32 36
  %22 = getelementptr inbounds i8, ptr %4, i32 40
  %23 = getelementptr inbounds i8, ptr %4, i32 44
  %24 = getelementptr inbounds i8, ptr %4, i32 48
  br label %54

25:                                               ; preds = %25, %3
  %26 = phi i32 [ 0, %3 ], [ %34, %25 ]
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr [34 x %struct.cpsw_stats], ptr @cpsw_gstrings_stats, i32 0, i32 %26, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %32 = zext i32 %31 to i64
  %33 = getelementptr i64, ptr %2, i32 %26
  store i64 %32, ptr %33, align 8
  %34 = add nuw nsw i32 %26, 1
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %8, label %25

36:                                               ; preds = %54, %8
  %37 = phi i32 [ 34, %8 ], [ %111, %54 ]
  %38 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 26
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %176

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %4, i32 4
  %43 = getelementptr inbounds i8, ptr %4, i32 8
  %44 = getelementptr inbounds i8, ptr %4, i32 12
  %45 = getelementptr inbounds i8, ptr %4, i32 16
  %46 = getelementptr inbounds i8, ptr %4, i32 20
  %47 = getelementptr inbounds i8, ptr %4, i32 24
  %48 = getelementptr inbounds i8, ptr %4, i32 28
  %49 = getelementptr inbounds i8, ptr %4, i32 32
  %50 = getelementptr inbounds i8, ptr %4, i32 36
  %51 = getelementptr inbounds i8, ptr %4, i32 40
  %52 = getelementptr inbounds i8, ptr %4, i32 44
  %53 = getelementptr inbounds i8, ptr %4, i32 48
  br label %115

54:                                               ; preds = %54, %12
  %55 = phi i32 [ %111, %54 ], [ 34, %12 ]
  %56 = phi i32 [ %112, %54 ], [ 0, %12 ]
  %57 = getelementptr %struct.cpsw_common, ptr %6, i32 0, i32 16, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @cpdma_chan_get_stats(ptr noundef %58, ptr noundef nonnull %4) #14
  %60 = load i32, ptr %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr i64, ptr %2, i32 %55
  store i64 %61, ptr %62, align 8
  %63 = add i32 %55, 1
  %64 = load i32, ptr %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr i64, ptr %2, i32 %63
  store i64 %65, ptr %66, align 8
  %67 = add i32 %55, 2
  %68 = load i32, ptr %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr i64, ptr %2, i32 %67
  store i64 %69, ptr %70, align 8
  %71 = add i32 %55, 3
  %72 = load i32, ptr %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr i64, ptr %2, i32 %71
  store i64 %73, ptr %74, align 8
  %75 = add i32 %55, 4
  %76 = load i32, ptr %16, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr i64, ptr %2, i32 %75
  store i64 %77, ptr %78, align 8
  %79 = add i32 %55, 5
  %80 = load i32, ptr %17, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr i64, ptr %2, i32 %79
  store i64 %81, ptr %82, align 8
  %83 = add i32 %55, 6
  %84 = load i32, ptr %18, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr i64, ptr %2, i32 %83
  store i64 %85, ptr %86, align 8
  %87 = add i32 %55, 7
  %88 = load i32, ptr %19, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr i64, ptr %2, i32 %87
  store i64 %89, ptr %90, align 8
  %91 = add i32 %55, 8
  %92 = load i32, ptr %20, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr i64, ptr %2, i32 %91
  store i64 %93, ptr %94, align 8
  %95 = add i32 %55, 9
  %96 = load i32, ptr %21, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr i64, ptr %2, i32 %95
  store i64 %97, ptr %98, align 8
  %99 = add i32 %55, 10
  %100 = load i32, ptr %22, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr i64, ptr %2, i32 %99
  store i64 %101, ptr %102, align 8
  %103 = add i32 %55, 11
  %104 = load i32, ptr %23, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr i64, ptr %2, i32 %103
  store i64 %105, ptr %106, align 8
  %107 = add i32 %55, 12
  %108 = load i32, ptr %24, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr i64, ptr %2, i32 %107
  store i64 %109, ptr %110, align 8
  %111 = add i32 %55, 13
  %112 = add nuw nsw i32 %56, 1
  %113 = load i32, ptr %9, align 8
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %54, label %36

115:                                              ; preds = %115, %41
  %116 = phi i32 [ %172, %115 ], [ %37, %41 ]
  %117 = phi i32 [ %173, %115 ], [ 0, %41 ]
  %118 = getelementptr %struct.cpsw_common, ptr %6, i32 0, i32 15, i32 %117
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @cpdma_chan_get_stats(ptr noundef %119, ptr noundef nonnull %4) #14
  %121 = load i32, ptr %4, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr i64, ptr %2, i32 %116
  store i64 %122, ptr %123, align 8
  %124 = add i32 %116, 1
  %125 = load i32, ptr %42, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr i64, ptr %2, i32 %124
  store i64 %126, ptr %127, align 8
  %128 = add i32 %116, 2
  %129 = load i32, ptr %43, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr i64, ptr %2, i32 %128
  store i64 %130, ptr %131, align 8
  %132 = add i32 %116, 3
  %133 = load i32, ptr %44, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr i64, ptr %2, i32 %132
  store i64 %134, ptr %135, align 8
  %136 = add i32 %116, 4
  %137 = load i32, ptr %45, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr i64, ptr %2, i32 %136
  store i64 %138, ptr %139, align 8
  %140 = add i32 %116, 5
  %141 = load i32, ptr %46, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr i64, ptr %2, i32 %140
  store i64 %142, ptr %143, align 8
  %144 = add i32 %116, 6
  %145 = load i32, ptr %47, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr i64, ptr %2, i32 %144
  store i64 %146, ptr %147, align 8
  %148 = add i32 %116, 7
  %149 = load i32, ptr %48, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr i64, ptr %2, i32 %148
  store i64 %150, ptr %151, align 8
  %152 = add i32 %116, 8
  %153 = load i32, ptr %49, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr i64, ptr %2, i32 %152
  store i64 %154, ptr %155, align 8
  %156 = add i32 %116, 9
  %157 = load i32, ptr %50, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr i64, ptr %2, i32 %156
  store i64 %158, ptr %159, align 8
  %160 = add i32 %116, 10
  %161 = load i32, ptr %51, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr i64, ptr %2, i32 %160
  store i64 %162, ptr %163, align 8
  %164 = add i32 %116, 11
  %165 = load i32, ptr %52, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr i64, ptr %2, i32 %164
  store i64 %166, ptr %167, align 8
  %168 = add i32 %116, 12
  %169 = load i32, ptr %53, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr i64, ptr %2, i32 %168
  store i64 %170, ptr %171, align 8
  %172 = add i32 %116, 13
  %173 = add nuw nsw i32 %117, 1
  %174 = load i32, ptr %38, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %115, label %176

176:                                              ; preds = %115, %36
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #14
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cpsw_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1426
  %5 = load i8, ptr %4, align 2, !range !16
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 1427
  %9 = load i8, ptr %8, align 1, !range !16
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_get_wol(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.cpsw_slave, ptr %11, i32 %7, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %13, ptr noundef %1) #14
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_wol(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cpsw_slave, ptr %9, i32 %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -95, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_get_regs_len(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @cpsw_ale_get_num_entries(ptr noundef %5) #14
  %7 = mul i32 %6, 12
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_get_num_entries(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_get_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  tail call void @cpsw_ale_dump(ptr noundef %10, ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_dump(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ethtool_op_begin(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1416
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @net_ratelimit() #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 1412
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %5) #15
  br label %18

18:                                               ; preds = %15, %12, %7
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #14, !srcloc !18
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 -1, ptr elementtype(i32) %20) #14, !srcloc !19
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  br label %25

25:                                               ; preds = %24, %18, %1
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ethtool_op_complete(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1416
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @net_ratelimit() #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 1412
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %5) #15
  br label %18

18:                                               ; preds = %15, %12, %7, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cpsw_get_channels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 18
  %6 = load i8, ptr %5, align 8, !range !16
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 8, i32 1
  %9 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = load i8, ptr %5, align 8, !range !16
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 8, i32 1
  %13 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 7
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 25
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 26
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 8
  store i32 0, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_get_link_ksettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cpsw_slave, ptr %9, i32 %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ 0, %13 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_link_ksettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cpsw_slave, ptr %9, i32 %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -95, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_get_eee(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cpsw_slave, ptr %9, i32 %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @phy_ethtool_get_eee(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -95, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_eee(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cpsw_slave, ptr %9, i32 %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @phy_ethtool_set_eee(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -95, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_nway_reset(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @cpsw_slave_index, align 4
  %6 = tail call i32 %5(ptr noundef %4, ptr noundef %2) #14
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.cpsw_slave, ptr %8, i32 %6, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @genphy_restart_aneg(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ -95, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_channels_common(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 18
  %8 = load i8, ptr %7, align 8, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.10) #15
  br label %139

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %139

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %139, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %139, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %18, %26
  %28 = icmp ugt i32 %22, %26
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %139, label %30

30:                                               ; preds = %24
  tail call void @cpsw_intr_disable(ptr noundef %6) #14
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  br label %36

36:                                               ; preds = %50, %34
  %37 = phi i32 [ %32, %34 ], [ %51, %50 ]
  %38 = phi i32 [ 0, %34 ], [ %52, %50 ]
  %39 = load ptr, ptr %35, align 4
  %40 = getelementptr %struct.cpsw_slave, ptr %39, i32 %38, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 6
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %41) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  %49 = load i32, ptr %31, align 4
  br label %50

50:                                               ; preds = %48, %43, %36
  %51 = phi i32 [ %37, %36 ], [ %37, %43 ], [ %49, %48 ]
  %52 = add nuw i32 %38, 1
  %53 = icmp ult i32 %52, %51
  br i1 %53, label %36, label %54

54:                                               ; preds = %50, %30
  %55 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 14
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 @cpdma_ctlr_stop(ptr noundef %56) #14
  %58 = load i32, ptr %17, align 4
  %59 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 25
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 28
  %64 = load i32, ptr %63, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %62, %54
  %67 = phi i1 [ false, %54 ], [ %65, %62 ]
  %68 = tail call fastcc i32 @cpsw_update_channels_res(ptr noundef %4, i32 noundef %58, i32 noundef 1, ptr noundef %2)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %118

70:                                               ; preds = %66
  %71 = load i32, ptr %21, align 4
  %72 = tail call fastcc i32 @cpsw_update_channels_res(ptr noundef %4, i32 noundef %71, i32 noundef 0, ptr noundef %2)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %118

74:                                               ; preds = %70
  %75 = load i32, ptr %31, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %106, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  %79 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 26
  br label %80

80:                                               ; preds = %102, %77
  %81 = phi i32 [ %75, %77 ], [ %103, %102 ]
  %82 = phi i32 [ 0, %77 ], [ %104, %102 ]
  %83 = load ptr, ptr %78, align 4
  %84 = getelementptr %struct.cpsw_slave, ptr %83, i32 %82, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 6
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %79, align 4
  %94 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %85, i32 noundef %93) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i32, ptr %59, align 8
  %98 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %85, i32 noundef %97) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load i32, ptr %31, align 4
  br label %102

102:                                              ; preds = %100, %87, %80
  %103 = phi i32 [ %101, %100 ], [ %81, %80 ], [ %81, %87 ]
  %104 = add nuw i32 %82, 1
  %105 = icmp ult i32 %104, %103
  br i1 %105, label %80, label %106

106:                                              ; preds = %102, %74
  tail call void @cpsw_split_res(ptr noundef %6) #14
  br i1 %67, label %107, label %110

107:                                              ; preds = %106
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %6) #14
  %108 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %6) #14
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107, %106
  %111 = tail call fastcc i32 @cpsw_resume_data_pass(ptr noundef %0)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %139, label %118

113:                                              ; preds = %96, %92
  %114 = phi ptr [ @.str.3, %92 ], [ @.str.4, %96 ]
  %115 = phi i32 [ %94, %92 ], [ %98, %96 ]
  %116 = getelementptr i8, ptr %0, i32 1412
  %117 = load ptr, ptr %116, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull %114) #15
  br label %118

118:                                              ; preds = %113, %110, %107, %70, %66
  %119 = phi i32 [ %68, %66 ], [ %72, %70 ], [ %108, %107 ], [ %111, %110 ], [ %115, %113 ]
  %120 = getelementptr i8, ptr %0, i32 1412
  %121 = load ptr, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.5) #15
  %122 = load i32, ptr %31, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  br label %126

126:                                              ; preds = %135, %124
  %127 = phi i32 [ %122, %124 ], [ %136, %135 ]
  %128 = phi i32 [ 0, %124 ], [ %137, %135 ]
  %129 = load ptr, ptr %125, align 4
  %130 = getelementptr %struct.cpsw_slave, ptr %129, i32 %128, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %126
  tail call void @dev_close(ptr noundef nonnull %131) #14
  %134 = load i32, ptr %31, align 4
  br label %135

135:                                              ; preds = %133, %126
  %136 = phi i32 [ %127, %126 ], [ %134, %133 ]
  %137 = add nuw i32 %128, 1
  %138 = icmp ult i32 %137, %136
  br i1 %138, label %126, label %139

139:                                              ; preds = %135, %118, %110, %24, %20, %16, %12, %10
  %140 = phi i32 [ 0, %110 ], [ %119, %118 ], [ -22, %16 ], [ -22, %20 ], [ -22, %12 ], [ -95, %10 ], [ -22, %24 ], [ %119, %135 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_suspend_data_pass(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  tail call void @cpsw_intr_disable(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %9

9:                                                ; preds = %23, %7
  %10 = phi i32 [ %5, %7 ], [ %24, %23 ]
  %11 = phi i32 [ 0, %7 ], [ %25, %23 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.cpsw_slave, ptr %12, i32 %11, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %14) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  %22 = load i32, ptr %4, align 4
  br label %23

23:                                               ; preds = %21, %16, %9
  %24 = phi i32 [ %10, %9 ], [ %10, %16 ], [ %22, %21 ]
  %25 = add nuw i32 %11, 1
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %9, label %27

27:                                               ; preds = %23, %1
  %28 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 14
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @cpdma_ctlr_stop(ptr noundef %29) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_update_channels_res(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %2, 0
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 25
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 16
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 26
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 15
  %12 = select i1 %7, ptr @cpsw_tx_handler, ptr %3
  %13 = select i1 %7, ptr %11, ptr %9
  %14 = select i1 %7, ptr %10, ptr %8
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 14
  %19 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 1
  %21 = select i1 %7, ptr @.str.13, ptr @.str.12
  br label %29

22:                                               ; preds = %60, %4
  %23 = phi i32 [ %15, %4 ], [ %62, %60 ]
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %25, label %84

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 2
  %27 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 1
  %28 = select i1 %7, ptr @.str.13, ptr @.str.12
  br label %64

29:                                               ; preds = %60, %17
  %30 = phi i32 [ %15, %17 ], [ %62, %60 ]
  %31 = sub i32 7, %30
  %32 = select i1 %7, i32 %31, i32 %30
  %33 = load ptr, ptr %18, align 8
  %34 = tail call ptr @cpdma_chan_create(ptr noundef %33, i32 noundef %32, ptr noundef %12, i32 noundef %2) #14
  %35 = load i32, ptr %14, align 4
  %36 = getelementptr %struct.cpsw_vector, ptr %13, i32 %35
  store ptr %34, ptr %36, align 4
  %37 = load ptr, ptr %0, align 64
  %38 = load i32, ptr %14, align 4
  %39 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 87
  %40 = load ptr, ptr %39, align 64
  %41 = getelementptr %struct.netdev_queue, ptr %40, i32 %38, i32 5
  store i32 0, ptr %41, align 16
  %42 = load i32, ptr %14, align 4
  %43 = getelementptr %struct.cpsw_vector, ptr %13, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = ptrtoint ptr %44 to i32
  br label %84

48:                                               ; preds = %29
  %49 = icmp eq ptr %44, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %19, align 8
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @net_ratelimit() #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %20, align 4
  %59 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.11, i32 noundef %59, ptr noundef nonnull %21) #15
  br label %60

60:                                               ; preds = %57, %54, %50
  %61 = load i32, ptr %14, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %14, align 4
  %63 = icmp slt i32 %62, %1
  br i1 %63, label %29, label %22

64:                                               ; preds = %81, %25
  %65 = phi i32 [ %23, %25 ], [ %82, %81 ]
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %14, align 4
  %67 = getelementptr %struct.cpsw_vector, ptr %13, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @cpdma_chan_destroy(ptr noundef %68) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load i32, ptr %26, align 8
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @net_ratelimit() #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %27, align 4
  %80 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.14, i32 noundef %80, ptr noundef nonnull %28) #15
  br label %81

81:                                               ; preds = %78, %75, %71
  %82 = load i32, ptr %14, align 4
  %83 = icmp sgt i32 %82, %1
  br i1 %83, label %64, label %84

84:                                               ; preds = %81, %64, %48, %46, %22
  %85 = phi i32 [ %47, %46 ], [ 0, %22 ], [ %69, %64 ], [ 0, %81 ], [ -22, %48 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_split_res(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_destroy_xdp_rxqs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_create_xdp_rxqs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_resume_data_pass(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = tail call i32 @cpsw_fill_rx_channels(ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @cpdma_ctlr_start(ptr noundef %13) #14
  tail call void @cpsw_intr_enable(ptr noundef %3) #14
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %21

21:                                               ; preds = %48, %19
  %22 = phi i32 [ %17, %19 ], [ %49, %48 ]
  %23 = phi i32 [ 0, %19 ], [ %50, %48 ]
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr %struct.cpsw_slave, ptr %24, i32 %23, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 6
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 88
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 87
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ 0, %37 ], [ %43, %39 ]
  %41 = load ptr, ptr %38, align 64
  %42 = getelementptr %struct.netdev_queue, ptr %41, i32 %40, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %42) #14
  %43 = add nuw i32 %40, 1
  %44 = load i32, ptr %34, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %39, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %16, align 4
  br label %48

48:                                               ; preds = %46, %33, %28, %21
  %49 = phi i32 [ %47, %46 ], [ %22, %33 ], [ %22, %21 ], [ %22, %28 ]
  %50 = add nuw i32 %23, 1
  %51 = icmp ult i32 %50, %49
  br i1 %51, label %21, label %52

52:                                               ; preds = %48, %15, %7
  %53 = phi i32 [ %9, %7 ], [ 0, %15 ], [ 0, %48 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_fail(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i32 [ %3, %5 ], [ %17, %16 ]
  %9 = phi i32 [ 0, %5 ], [ %18, %16 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.cpsw_slave, ptr %10, i32 %9, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @dev_close(ptr noundef nonnull %12) #14
  %15 = load i32, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %14 ]
  %18 = add nuw i32 %9, 1
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %7, label %20

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #4 {
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 12
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @cpdma_get_num_tx_descs(ptr noundef %12) #14
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %7, align 8
  %16 = add i32 %15, -8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %11, align 8
  %19 = tail call i32 @cpdma_get_num_rx_descs(ptr noundef %18) #14
  %20 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_get_num_tx_descs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_get_num_rx_descs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #4 {
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 12
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -8
  %22 = icmp ugt i32 %16, %21
  br i1 %22, label %52, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @cpdma_get_num_rx_descs(ptr noundef %25) #14
  %27 = load i32, ptr %15, align 4
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %52, label %29

29:                                               ; preds = %23
  tail call fastcc void @cpsw_suspend_data_pass(ptr noundef %0)
  %30 = load ptr, ptr %24, align 8
  %31 = load i32, ptr %15, align 4
  %32 = tail call i32 @cpdma_set_num_rx_descs(ptr noundef %30, i32 noundef %31) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @cpsw_resume_data_pass(ptr noundef %0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %47

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 28
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %6) #14
  %42 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %6) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %37
  %45 = tail call fastcc i32 @cpsw_resume_data_pass(ptr noundef %0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44, %41, %34
  %48 = phi i32 [ %32, %34 ], [ %42, %41 ], [ %45, %44 ]
  %49 = load ptr, ptr %24, align 8
  %50 = tail call i32 @cpdma_set_num_rx_descs(ptr noundef %49, i32 noundef %26) #14
  %51 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.6) #15
  tail call fastcc void @cpsw_fail(ptr noundef %6)
  br label %52

52:                                               ; preds = %47, %44, %34, %23, %18, %14, %10, %4
  %53 = phi i32 [ %48, %47 ], [ -22, %18 ], [ -22, %14 ], [ -22, %10 ], [ -22, %4 ], [ 0, %23 ], [ %32, %34 ], [ 0, %44 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_set_num_rx_descs(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_ts_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 95, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cpts, ptr %7, i32 0, i32 10
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 4097, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_tx_handler(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_fill_rx_channels(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
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
!8 = !{i64 4785660}
!9 = !{i64 2155713732}
!10 = !{i64 2155714161}
!11 = !{i64 4785242}
!12 = !{i64 2155714520}
!13 = !{i64 2155714916}
!14 = !{!"auto-init"}
!15 = !{i64 2155720142}
!16 = !{i8 0, i8 2}
!17 = !{i64 2148070076}
!18 = !{i64 568386, i64 2148058357, i64 2148058383, i64 2148058430, i64 2148058452, i64 2148058480, i64 2148058500}
!19 = !{i64 554955, i64 554980, i64 555002, i64 555018, i64 555030, i64 555050, i64 555074, i64 555090, i64 555102}
!20 = !{i64 2148070202}
!21 = !{i64 2155723477}
