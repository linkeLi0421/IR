; ModuleID = '/llk/IR/net/wireless/sme.c_pt.bc'
source_filename = "../net/wireless/sme.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_connect_done:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_connect_done\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_connect_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_roamed:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_roamed\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_roamed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_port_authorized:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_port_authorized\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_port_authorized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_disconnected:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_disconnected\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_disconnected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.84, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.84 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cfg80211_conn = type { %struct.cfg80211_connect_params, i32, [6 x i8], [6 x i8], ptr, i32, i8, i8 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.83 }
%union.anon.83 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_assoc_request = type { ptr, ptr, ptr, i32, %struct.cfg80211_crypto_settings, i8, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, ptr, i32, ptr, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.120 = type { i64, i64, i8 }
%struct.element = type { i8, i8, [0 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.123 }
%union.anon.123 = type { %struct.anon.129, [16 x i8] }
%struct.anon.129 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.cfg80211_event = type { %struct.list_head, i32, %union.anon.156 }
%union.anon.156 = type { %struct.cfg80211_connect_resp_params }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.157 = type { ptr, i32, i16, i8 }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_cached_keys = type { [4 x %struct.key_params], [4 x [13 x i8]], i32 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }

@cfg80211_disconnect_work = dso_local global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @cfg80211_disconnect_work, i64 4), ptr getelementptr (i8, ptr @cfg80211_disconnect_work, i64 4) }, ptr @disconnect_work }, align 4
@.str = private unnamed_addr constant [19 x i8] c"net/wireless/sme.c\00", align 1
@__cfg80211_connect_result.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cfg80211_connect_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_connect_done = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_connect_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_connect_done to i32), ptr @__kstrtab_cfg80211_connect_done, ptr @__kstrtabns_cfg80211_connect_done }, section "___ksymtab+cfg80211_connect_done", align 4
@__kstrtab_cfg80211_roamed = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_roamed = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_roamed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_roamed to i32), ptr @__kstrtab_cfg80211_roamed, ptr @__kstrtabns_cfg80211_roamed }, section "___ksymtab+cfg80211_roamed", align 4
@__kstrtab_cfg80211_port_authorized = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_port_authorized = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_port_authorized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_port_authorized to i32), ptr @__kstrtab_cfg80211_port_authorized, ptr @__kstrtabns_cfg80211_port_authorized }, section "___ksymtab+cfg80211_port_authorized", align 4
@__kstrtab_cfg80211_disconnected = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_disconnected = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_disconnected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_disconnected to i32), ptr @__kstrtab_cfg80211_disconnected, ptr @__kstrtabns_cfg80211_disconnected }, section "___ksymtab+cfg80211_disconnected", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_rdev_scan = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cfg80211_rdev_list = external dso_local global %struct.list_head, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"net/wireless/core.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_rdev_crit_proto_stop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_del_key = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_qos_map = external dso_local global %struct.tracepoint, align 4
@cfg80211_sme_get_conn_ies.before_extcapa = internal constant [6 x i8] c"0.F6;H", align 1
@__tracepoint_rdev_connect = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_disconnect = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_cfg80211_connect_done, ptr @__ksymtab_cfg80211_disconnected, ptr @__ksymtab_cfg80211_port_authorized, ptr @__ksymtab_cfg80211_roamed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_conn_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %5 = getelementptr i8, ptr %0, i32 356
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr i8, ptr %0, i32 1108
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %53, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 8
  %12 = getelementptr inbounds i8, ptr %4, i32 8
  br label %13

13:                                               ; preds = %49, %9
  %14 = phi ptr [ %7, %9 ], [ %51, %49 ]
  %15 = phi ptr [ null, %9 ], [ %50, %49 ]
  %16 = getelementptr i8, ptr %14, i32 -8
  %17 = getelementptr i8, ptr %14, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %14, i32 28
  call void @mutex_lock(ptr noundef %21) #10
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %14, i32 96
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cfg80211_conn, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 11
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %29, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) %37, i32 6, i1 false)
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi ptr [ %2, %39 ], [ %15, %35 ]
  store i32 0, ptr %3, align 4
  %42 = call fastcc i32 @cfg80211_conn_do_work(ptr noundef %16, ptr noundef nonnull %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %12, i8 0, i64 44, i1 false)
  store i32 -1, ptr %4, align 4
  store ptr %41, ptr %10, align 4
  %45 = load i32, ptr %3, align 4
  store i32 %45, ptr %11, align 4
  %46 = load ptr, ptr %17, align 4
  call void @__cfg80211_connect_result(ptr noundef %46, ptr noundef nonnull %4, i1 zeroext undef)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  br label %47

47:                                               ; preds = %44, %40, %31, %27, %20
  %48 = phi ptr [ %15, %20 ], [ %15, %31 ], [ %15, %27 ], [ %41, %44 ], [ %41, %40 ]
  call void @mutex_unlock(ptr noundef %21) #10
  br label %49

49:                                               ; preds = %47, %13
  %50 = phi ptr [ %15, %13 ], [ %48, %47 ]
  %51 = load ptr, ptr %14, align 4
  %52 = icmp eq ptr %51, %6
  br i1 %52, label %53, label %13

53:                                               ; preds = %49, %1
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_conn_do_work(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.cfg80211_assoc_request, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %4, i32 -544
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(220) %3, i8 0, i32 220, i1 false)
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %120, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cfg80211_conn, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %119 [
    i32 0, label %120
    i32 1, label %15
    i32 2, label %17
    i32 4, label %44
    i32 5, label %45
    i32 8, label %99
    i32 7, label %100
    i32 9, label %106
    i32 10, label %114
  ]

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @cfg80211_conn_scan(ptr noundef %0)
  br label %120

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 32
  %19 = getelementptr inbounds %struct.cfg80211_ops, ptr %18, i32 0, i32 39
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #10
  br label %120

23:                                               ; preds = %17
  store i32 3, ptr %13, align 4
  %24 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 13
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 14
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @cfg80211_mlme_auth(ptr noundef %8, ptr noundef %25, ptr noundef %26, i32 noundef %28, ptr noundef %30, ptr noundef %32, i32 noundef %34, ptr noundef null, i32 noundef 0, ptr noundef %36, i32 noundef %39, i32 noundef %42, ptr noundef null, i32 noundef 0) #10
  br label %120

44:                                               ; preds = %12
  store i32 2, ptr %1, align 4
  br label %120

45:                                               ; preds = %12
  %46 = load ptr, ptr %8, align 32
  %47 = getelementptr inbounds %struct.cfg80211_ops, ptr %46, i32 0, i32 40
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !10

50:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #10
  br label %120

51:                                               ; preds = %45
  store i32 6, ptr %13, align 4
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr inbounds %struct.cfg80211_conn, ptr %52, i32 0, i32 7
  %54 = load i8, ptr %53, align 1, !range !12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cfg80211_conn, ptr %52, i32 0, i32 3
  %58 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 5
  %70 = zext i1 %68 to i8
  store i8 %70, ptr %69, align 4
  %71 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 4
  %72 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(76) %71, ptr noundef align 4 dereferenceable(76) %72, i32 76, i1 false)
  %73 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 15
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 6
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 7
  %77 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(26) %76, ptr noundef align 4 dereferenceable(26) %77, i32 26, i1 false)
  %78 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 8
  %79 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(26) %78, ptr noundef align 2 dereferenceable(26) %79, i32 26, i1 false)
  %80 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 9
  %81 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %80, ptr noundef align 4 dereferenceable(12) %81, i32 12, i1 false)
  %82 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %3, i32 0, i32 10
  %83 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %82, ptr noundef align 4 dereferenceable(12) %83, i32 12, i1 false)
  %84 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %10, align 4
  %87 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = call i32 @cfg80211_mlme_assoc(ptr noundef %8, ptr noundef %85, ptr noundef %86, ptr noundef %88, ptr noundef %90, i32 noundef %92, ptr noundef nonnull %3) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %59
  %96 = load ptr, ptr %84, align 4
  %97 = load ptr, ptr %87, align 4
  %98 = call i32 @cfg80211_mlme_deauth(ptr noundef %8, ptr noundef %96, ptr noundef %97, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %120

99:                                               ; preds = %12
  store i32 3, ptr %1, align 4
  br label %100

100:                                              ; preds = %99, %12
  %101 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %8, ptr noundef %102, ptr noundef %104, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %120

106:                                              ; preds = %12
  %107 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %8, ptr noundef %108, ptr noundef %110, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  %112 = load ptr, ptr %9, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %106, %12
  %115 = phi ptr [ %112, %106 ], [ %10, %12 ]
  %116 = getelementptr inbounds %struct.cfg80211_conn, ptr %115, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  tail call void @kfree(ptr noundef %117) #10
  %118 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %118) #10
  store ptr null, ptr %9, align 4
  br label %120

119:                                              ; preds = %12
  br label %120

120:                                              ; preds = %119, %114, %106, %100, %95, %59, %50, %44, %23, %22, %15, %12, %7
  %121 = phi i32 [ 0, %119 ], [ -107, %100 ], [ -95, %50 ], [ -107, %44 ], [ -95, %22 ], [ %43, %23 ], [ %16, %15 ], [ 0, %7 ], [ -2, %12 ], [ %93, %95 ], [ 0, %59 ], [ 0, %106 ], [ 0, %114 ]
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %3) #10
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_connect_result(ptr noundef %0, ptr noundef %1, i1 zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 8, label %12
    i32 2, label %12
  ]

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 693, i32 noundef 9, ptr noundef null) #10
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @cfg80211_put_bss(ptr noundef %9, ptr noundef %11) #10
  br label %151

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 43
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %14, i32 -544
  tail call void @nl80211_send_connect_result(ptr noundef %18, ptr noundef %0, ptr noundef %1, i32 noundef 3264) #10
  %19 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !10

28:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %26, i32 -544
  %31 = load ptr, ptr %30, align 32
  %32 = getelementptr inbounds %struct.cfg80211_ops, ptr %31, i32 0, i32 43
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = load i1, ptr @__cfg80211_connect_result.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40, !prof !10

38:                                               ; preds = %29
  store i1 true, ptr @__cfg80211_connect_result.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 730, i32 noundef 9, ptr noundef null) #10
  %39 = load ptr, ptr %5, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi ptr [ %39, %38 ], [ %26, %29 ]
  %42 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 13
  %45 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 14
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 19
  %49 = load i32, ptr %48, align 4
  %50 = tail call ptr @cfg80211_get_bss(ptr noundef %41, ptr noundef null, ptr noundef %43, ptr noundef %44, i32 noundef %47, i32 noundef %49, i32 noundef 2) #10
  store ptr %50, ptr %19, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %40
  %53 = getelementptr i8, ptr %50, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #10, !srcloc !13
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #10, !srcloc !14
  %55 = getelementptr i8, ptr %50, i32 24
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = getelementptr i8, ptr %56, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #10, !srcloc !13
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #10, !srcloc !14
  br label %61

61:                                               ; preds = %58, %52, %40, %22, %17
  %62 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 25
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %63, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #10, !srcloc !13
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #10, !srcloc !16
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71, !prof !10

70:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %71

71:                                               ; preds = %70, %65
  %72 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %63, i32 0, i32 9, i32 6
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %73, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #10, !srcloc !13
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #10, !srcloc !16
  %78 = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81, !prof !10

80:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %81

81:                                               ; preds = %80, %75, %71
  %82 = load ptr, ptr %5, align 4
  %83 = load ptr, ptr %62, align 4
  %84 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %83, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %82, ptr noundef %84) #10
  store ptr null, ptr %62, align 4
  br label %85

85:                                               ; preds = %81, %61
  %86 = load i32, ptr %1, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 18
  %90 = load ptr, ptr %89, align 4
  tail call void @kfree_sensitive(ptr noundef %90) #10
  store ptr null, ptr %89, align 4
  %91 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 14
  store i8 0, ptr %91, align 2
  %92 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 20
  store i32 0, ptr %92, align 4
  %93 = load ptr, ptr %19, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %88
  %96 = getelementptr i8, ptr %93, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #10, !srcloc !13
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #10, !srcloc !16
  %98 = extractvalue { i32, i32 } %97, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101, !prof !10

100:                                              ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %101

101:                                              ; preds = %100, %95
  %102 = getelementptr i8, ptr %93, i32 24
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %103, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #10, !srcloc !13
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #10, !srcloc !16
  %108 = extractvalue { i32, i32 } %107, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111, !prof !10

110:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %111

111:                                              ; preds = %110, %105, %101
  %112 = load ptr, ptr %5, align 4
  %113 = load ptr, ptr %19, align 4
  tail call void @cfg80211_put_bss(ptr noundef %112, ptr noundef %113) #10
  br label %114

114:                                              ; preds = %111, %88
  %115 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 17
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %151, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.cfg80211_conn, ptr %116, i32 0, i32 4
  %120 = load ptr, ptr %119, align 4
  tail call void @kfree(ptr noundef %120) #10
  %121 = load ptr, ptr %115, align 4
  tail call void @kfree(ptr noundef %121) #10
  store ptr null, ptr %115, align 4
  br label %151

122:                                              ; preds = %85
  %123 = load ptr, ptr %19, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %126, !prof !10

125:                                              ; preds = %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 758, i32 noundef 9, ptr noundef null) #10
  br label %151

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %123, i32 -72
  store ptr %127, ptr %62, align 4
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr inbounds %struct.wiphy, ptr %128, i32 0, i32 11
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 16777216
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  tail call void @cfg80211_upload_connect_keys(ptr noundef %5) #10
  br label %134

134:                                              ; preds = %133, %126
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %135 = load ptr, ptr %19, align 4
  %136 = tail call ptr @ieee80211_bss_get_elem(ptr noundef %135, i8 noundef zeroext 7) #10
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %151

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.element, ptr %136, i32 0, i32 1
  %141 = load i8, ptr %140, align 1
  %142 = getelementptr inbounds %struct.element, ptr %136, i32 0, i32 2
  %143 = zext i8 %141 to i32
  %144 = tail call ptr @kmemdup(ptr noundef %142, i32 noundef %143, i32 noundef 2592) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %5, align 4
  %148 = load ptr, ptr %19, align 4
  %149 = load ptr, ptr %148, align 4
  %150 = load i32, ptr %149, align 4
  tail call void @regulatory_hint_country_ie(ptr noundef %147, i32 noundef %150, ptr noundef nonnull %144, i8 noundef zeroext %141) #10
  tail call void @kfree(ptr noundef nonnull %144) #10
  br label %151

151:                                              ; preds = %146, %139, %138, %125, %118, %114, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_scan_done(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cfg80211_conn, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %11, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %11, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %11, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 19
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %11, i32 0, i32 9
  %28 = load i8, ptr %27, align 4, !range !12
  %29 = xor i8 %28, 1
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %6, ptr noundef %18, ptr noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %30) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %17
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.cfg80211_conn, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.cfg80211_bss, ptr %31, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %35, ptr noundef align 4 dereferenceable(6) %36, i32 6, i1 false) #10
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds %struct.cfg80211_conn, ptr %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %37, i32 0, i32 2
  store ptr %38, ptr %39, align 4
  %40 = load ptr, ptr %31, align 4
  %41 = load ptr, ptr %10, align 4
  store ptr %40, ptr %41, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.cfg80211_conn, ptr %42, i32 0, i32 1
  store i32 2, ptr %43, align 4
  %44 = getelementptr i8, ptr %6, i32 -356
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %44) #10
  tail call void @cfg80211_put_bss(ptr noundef nonnull %6, ptr noundef nonnull %31) #10
  br label %51

47:                                               ; preds = %17
  %48 = getelementptr i8, ptr %6, i32 -356
  %49 = load ptr, ptr @system_wq, align 4
  %50 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %48) #10
  br label %51

51:                                               ; preds = %47, %33, %13, %9
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_rx_auth(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.cfg80211_connect_resp_params, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.cfg80211_conn, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 11
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  %19 = zext i16 %10 to i32
  switch i16 %10, label %40 [
    i16 13, label %20
    i16 0, label %47
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cfg80211_conn, ptr %12, i32 0, i32 6
  %22 = load i8, ptr %21, align 4, !range !12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %12, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %32 [
    i32 3, label %40
    i32 0, label %27
    i32 1, label %33
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 3, i32 1
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %27, %24
  %34 = phi i32 [ 0, %32 ], [ %31, %27 ], [ 3, %24 ]
  store i32 %34, ptr %25, align 4
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr inbounds %struct.cfg80211_conn, ptr %35, i32 0, i32 1
  store i32 2, ptr %36, align 4
  %37 = getelementptr i8, ptr %5, i32 -356
  %38 = load ptr, ptr @system_wq, align 4
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %37) #10
  br label %53

40:                                               ; preds = %24, %20, %18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %41 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %41, i8 0, i64 44, i1 false)
  store i32 %19, ptr %4, align 4
  %42 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %43 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 8
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  call void @__cfg80211_connect_result(ptr noundef %46, ptr noundef nonnull %4, i1 zeroext undef)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  br label %53

47:                                               ; preds = %18
  %48 = icmp eq i32 %16, 3
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  store i32 5, ptr %15, align 4
  %50 = getelementptr i8, ptr %5, i32 -356
  %51 = load ptr, ptr @system_wq, align 4
  %52 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %51, ptr noundef %50) #10
  br label %53

53:                                               ; preds = %49, %47, %40, %33, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_sme_rx_assoc_resp(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = icmp eq i16 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.cfg80211_conn, ptr %8, i32 0, i32 1
  store i32 11, ptr %13, align 4
  br label %29

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cfg80211_conn, ptr %8, i32 0, i32 7
  %16 = load i8, ptr %15, align 1, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  store i8 0, ptr %15, align 1
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.cfg80211_conn, ptr %19, i32 0, i32 1
  store i32 5, ptr %20, align 4
  %21 = getelementptr i8, ptr %3, i32 -356
  %22 = load ptr, ptr @system_wq, align 4
  %23 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %21) #10
  br label %29

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.cfg80211_conn, ptr %8, i32 0, i32 1
  store i32 7, ptr %25, align 4
  %26 = getelementptr i8, ptr %3, i32 -356
  %27 = load ptr, ptr @system_wq, align 4
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %26) #10
  br label %29

29:                                               ; preds = %24, %18, %12, %6
  %30 = phi i1 [ false, %12 ], [ true, %18 ], [ false, %24 ], [ false, %6 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_deauth(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %8) #10
  store ptr null, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_auth_timeout(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cfg80211_conn, ptr %7, i32 0, i32 1
  store i32 4, ptr %10, align 4
  %11 = getelementptr i8, ptr %2, i32 -356
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11) #10
  br label %14

14:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_disassoc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cfg80211_conn, ptr %7, i32 0, i32 1
  store i32 9, ptr %10, align 4
  %11 = getelementptr i8, ptr %2, i32 -356
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11) #10
  br label %14

14:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_assoc_timeout(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cfg80211_conn, ptr %7, i32 0, i32 1
  store i32 8, ptr %10, align 4
  %11 = getelementptr i8, ptr %2, i32 -356
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11) #10
  br label %14

14:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_abandon_assoc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cfg80211_conn, ptr %7, i32 0, i32 1
  store i32 10, ptr %10, align 4
  %11 = getelementptr i8, ptr %2, i32 -356
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11) #10
  br label %14

14:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disconnect_work(ptr nocapture noundef readnone %0) #0 {
  tail call void @rtnl_lock() #10
  %2 = load ptr, ptr @cfg80211_rdev_list, align 4
  %3 = icmp eq ptr %2, @cfg80211_rdev_list
  br i1 %3, label %34, label %8

4:                                                ; preds = %29, %8
  %5 = phi i1 [ %10, %8 ], [ %30, %29 ]
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, @cfg80211_rdev_list
  br i1 %7, label %33, label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %10 = phi i1 [ %5, %4 ], [ true, %1 ]
  %11 = getelementptr i8, ptr %9, i32 1292
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %4, label %14

14:                                               ; preds = %29, %8
  %15 = phi ptr [ %31, %29 ], [ %12, %8 ]
  %16 = phi i1 [ %30, %29 ], [ %10, %8 ]
  %17 = getelementptr i8, ptr %15, i32 -8
  %18 = getelementptr i8, ptr %15, i32 28
  tail call void @mutex_lock(ptr noundef %18) #10
  %19 = getelementptr i8, ptr %15, i32 96
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = getelementptr i8, ptr %15, i32 148
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call zeroext i1 @cfg80211_beaconing_iface_active(ptr noundef %17) #10
  br i1 %27, label %28, label %29

28:                                               ; preds = %26, %22, %14
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i1 [ false, %28 ], [ %16, %26 ]
  tail call void @mutex_unlock(ptr noundef %18) #10
  %31 = load ptr, ptr %15, align 4
  %32 = icmp eq ptr %31, %11
  br i1 %32, label %4, label %14

33:                                               ; preds = %4
  br i1 %5, label %34, label %35

34:                                               ; preds = %33, %1
  tail call void @regulatory_hint_disconnect() #10
  br label %35

35:                                               ; preds = %34, %33
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_connect_result(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_upload_connect_keys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_hint_country_ie(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_connect_done(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %6, i32 -544
  %11 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %12, i32 -72
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cfg80211_bss, ptr %12, i32 0, i32 11
  %20 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 13
  %21 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 14
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 19
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %6, ptr noundef null, ptr noundef %19, ptr noundef %20, i32 noundef %23, i32 noundef %25, i32 noundef 2) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store ptr %26, ptr %11, align 4
  br label %33

29:                                               ; preds = %18
  %30 = getelementptr i8, ptr %12, i32 -32
  %31 = load i32, ptr %30, align 8
  %32 = tail call ptr @cfg80211_bss_update(ptr noundef %10, ptr noundef %15, i1 noundef zeroext false, i32 noundef %31) #10
  br label %33

33:                                               ; preds = %29, %28
  %34 = load ptr, ptr %5, align 4
  tail call void @cfg80211_put_bss(ptr noundef %34, ptr noundef nonnull %12) #10
  br label %35

35:                                               ; preds = %33, %14, %9
  %36 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 1
  %37 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 4
  %38 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 6
  %39 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7
  %40 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7, i32 1
  %41 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7, i32 5
  %42 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7, i32 6
  %43 = or i32 %2, 256
  %44 = load ptr, ptr %36, align 4
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, i32 68, i32 74
  %47 = load i32, ptr %37, align 4
  %48 = add i32 %46, %47
  %49 = load i32, ptr %38, align 4
  %50 = add i32 %48, %49
  %51 = load i32, ptr %40, align 4
  %52 = add i32 %50, %51
  %53 = load i32, ptr %41, align 4
  %54 = add i32 %52, %53
  %55 = load ptr, ptr %42, align 4
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, i32 0, i32 16
  %58 = add i32 %54, %57
  %59 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %58, i32 noundef %43) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %35
  %62 = load ptr, ptr %5, align 4
  %63 = load ptr, ptr %11, align 4
  tail call void @cfg80211_put_bss(ptr noundef %62, ptr noundef %63) #10
  br label %164

64:                                               ; preds = %35
  %65 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 1
  store i32 0, ptr %65, align 8
  %66 = getelementptr i8, ptr %59, i32 68
  %67 = load ptr, ptr %36, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 1
  store ptr %66, ptr %70, align 16
  %71 = load ptr, ptr %36, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %66, ptr noundef align 1 dereferenceable(6) %71, i32 6, i1 false)
  %72 = getelementptr i8, ptr %59, i32 74
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi ptr [ %72, %69 ], [ %66, %64 ]
  %75 = load i32, ptr %37, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 3
  store ptr %74, ptr %78, align 8
  %79 = load i32, ptr %37, align 4
  %80 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 4
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 1 %82, i32 %79, i1 false)
  %83 = getelementptr i8, ptr %74, i32 %79
  br label %84

84:                                               ; preds = %77, %73
  %85 = phi ptr [ %83, %77 ], [ %74, %73 ]
  %86 = load i32, ptr %38, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 5
  store ptr %85, ptr %89, align 32
  %90 = load i32, ptr %38, align 4
  %91 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 6
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr align 1 %93, i32 %90, i1 false)
  %94 = load i32, ptr %38, align 4
  %95 = getelementptr i8, ptr %85, i32 %94
  br label %96

96:                                               ; preds = %88, %84
  %97 = phi ptr [ %95, %88 ], [ %85, %84 ]
  %98 = load i32, ptr %40, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7
  store ptr %97, ptr %101, align 8
  %102 = load i32, ptr %40, align 4
  %103 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7, i32 1
  store i32 %102, ptr %103, align 4
  %104 = load ptr, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %97, ptr align 1 %104, i32 %102, i1 false)
  %105 = load i32, ptr %40, align 4
  %106 = getelementptr i8, ptr %97, i32 %105
  br label %107

107:                                              ; preds = %100, %96
  %108 = phi ptr [ %106, %100 ], [ %97, %96 ]
  %109 = load i32, ptr %41, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7, i32 4
  store ptr %108, ptr %112, align 4
  %113 = load i32, ptr %41, align 4
  %114 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7, i32 5
  store i32 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7, i32 4
  %116 = load ptr, ptr %115, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %108, ptr align 1 %116, i32 %113, i1 false)
  %117 = load i32, ptr %41, align 4
  %118 = getelementptr i8, ptr %108, i32 %117
  br label %119

119:                                              ; preds = %111, %107
  %120 = phi ptr [ %118, %111 ], [ %108, %107 ]
  %121 = load ptr, ptr %42, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7, i32 6
  store ptr %120, ptr %124, align 4
  %125 = load ptr, ptr %42, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %120, ptr noundef align 1 dereferenceable(16) %125, i32 16, i1 false)
  br label %126

126:                                              ; preds = %123, %119
  %127 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7, i32 2
  %128 = load i8, ptr %127, align 4, !range !12
  %129 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2
  %130 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7, i32 2
  store i8 %128, ptr %130, align 16
  %131 = icmp eq i8 %128, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 7, i32 3
  %134 = load i16, ptr %133, align 2
  %135 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 7, i32 3
  store i16 %134, ptr %135, align 2
  br label %136

136:                                              ; preds = %132, %126
  %137 = load ptr, ptr %11, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = getelementptr i8, ptr %137, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #10, !srcloc !13
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #10, !srcloc !14
  %142 = getelementptr i8, ptr %137, i32 24
  %143 = load ptr, ptr %142, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = getelementptr i8, ptr %143, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #10, !srcloc !13
  %147 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 1, ptr elementtype(i32) %146) #10, !srcloc !14
  br label %148

148:                                              ; preds = %145, %139, %136
  %149 = load ptr, ptr %11, align 4
  %150 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 2
  store ptr %149, ptr %150, align 4
  %151 = load i32, ptr %1, align 4
  store i32 %151, ptr %129, align 4
  %152 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %1, i32 0, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.cfg80211_event, ptr %59, i32 0, i32 2, i32 0, i32 8
  store i32 %153, ptr %154, align 64
  %155 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 24
  %156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %155) #10
  %157 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 23
  %158 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 23, i32 1
  %159 = load ptr, ptr %158, align 4
  store ptr %59, ptr %158, align 4
  store ptr %157, ptr %59, align 64
  %160 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %159, ptr %160, align 4
  store volatile ptr %59, ptr %159, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %156) #10
  %161 = load ptr, ptr @cfg80211_wq, align 4
  %162 = getelementptr i8, ptr %6, i32 -340
  %163 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %161, ptr noundef %162) #10
  br label %164

164:                                              ; preds = %148, %61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_bss_update(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_roamed(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %53 [
    i32 8, label %5
    i32 2, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9, !prof !10

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !16
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %7, i32 0, i32 9, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !16
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %19, %15
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %26, ptr noundef %28) #10
  store ptr null, ptr %6, align 4
  %29 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !10

32:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 916, i32 noundef 9, ptr noundef null) #10
  br label %58

33:                                               ; preds = %25
  %34 = getelementptr i8, ptr %30, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #10, !srcloc !13
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #10, !srcloc !14
  %36 = getelementptr i8, ptr %30, i32 24
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %37, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #10, !srcloc !13
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #10, !srcloc !14
  br label %42

42:                                               ; preds = %39, %33
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr i8, ptr %43, i32 -72
  store ptr %44, ptr %6, align 4
  %45 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 43
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %0, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %46, i32 -544
  %51 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void @nl80211_send_roamed(ptr noundef %50, ptr noundef %52, ptr noundef %1, i32 noundef 3264) #10
  br label %58

53:                                               ; preds = %5, %2
  %54 = phi i32 [ 906, %2 ], [ 909, %5 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %54, i32 noundef 9, ptr noundef null) #10
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void @cfg80211_put_bss(ptr noundef %55, ptr noundef %57) #10
  br label %58

58:                                               ; preds = %53, %49, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_roamed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_roamed(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 13
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 14
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %6, ptr noundef %14, ptr noundef %16, ptr noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef 2) #10
  store ptr %23, ptr %10, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef null) #10
  br label %125

26:                                               ; preds = %13, %9
  %27 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 6
  %29 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7
  %30 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7, i32 1
  %31 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7, i32 5
  %32 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7, i32 6
  %33 = or i32 %2, 256
  %34 = load i32, ptr %27, align 4
  %35 = add i32 %34, 68
  %36 = load i32, ptr %28, align 4
  %37 = add i32 %35, %36
  %38 = load i32, ptr %30, align 4
  %39 = add i32 %37, %38
  %40 = load i32, ptr %31, align 4
  %41 = add i32 %39, %40
  %42 = load ptr, ptr %32, align 4
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, i32 0, i32 16
  %45 = add i32 %41, %44
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef %33) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load ptr, ptr %5, align 4
  %50 = load ptr, ptr %10, align 4
  tail call void @cfg80211_put_bss(ptr noundef %49, ptr noundef %50) #10
  br label %125

51:                                               ; preds = %26
  %52 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 1
  store i32 1, ptr %52, align 8
  %53 = getelementptr i8, ptr %46, i32 68
  %54 = load i32, ptr %27, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 3
  store ptr %53, ptr %57, align 8
  %58 = load i32, ptr %27, align 4
  %59 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %53, ptr align 1 %61, i32 %58, i1 false)
  %62 = getelementptr i8, ptr %53, i32 %58
  br label %63

63:                                               ; preds = %56, %51
  %64 = phi ptr [ %62, %56 ], [ %53, %51 ]
  %65 = load i32, ptr %28, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 5
  store ptr %64, ptr %68, align 32
  %69 = load i32, ptr %28, align 4
  %70 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 6
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %64, ptr align 1 %72, i32 %69, i1 false)
  %73 = getelementptr i8, ptr %64, i32 %69
  br label %74

74:                                               ; preds = %67, %63
  %75 = phi ptr [ %73, %67 ], [ %64, %63 ]
  %76 = load i32, ptr %30, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7
  store ptr %75, ptr %79, align 8
  %80 = load i32, ptr %30, align 4
  %81 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7, i32 1
  store i32 %80, ptr %81, align 4
  %82 = load ptr, ptr %29, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %75, ptr align 1 %82, i32 %80, i1 false)
  %83 = load i32, ptr %30, align 4
  %84 = getelementptr i8, ptr %75, i32 %83
  br label %85

85:                                               ; preds = %78, %74
  %86 = phi ptr [ %84, %78 ], [ %75, %74 ]
  %87 = load i32, ptr %31, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7, i32 4
  store ptr %86, ptr %90, align 4
  %91 = load i32, ptr %31, align 4
  %92 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7, i32 5
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7, i32 4
  %94 = load ptr, ptr %93, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %86, ptr align 1 %94, i32 %91, i1 false)
  %95 = load i32, ptr %31, align 4
  %96 = getelementptr i8, ptr %86, i32 %95
  br label %97

97:                                               ; preds = %89, %85
  %98 = phi ptr [ %96, %89 ], [ %86, %85 ]
  %99 = load ptr, ptr %32, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7, i32 6
  store ptr %98, ptr %102, align 4
  %103 = load ptr, ptr %32, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %98, ptr noundef align 1 dereferenceable(16) %103, i32 16, i1 false)
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7, i32 2
  %106 = load i8, ptr %105, align 4, !range !12
  %107 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7, i32 2
  store i8 %106, ptr %107, align 16
  %108 = icmp eq i8 %106, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %1, i32 0, i32 7, i32 3
  %111 = load i16, ptr %110, align 2
  %112 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 7, i32 3
  store i16 %111, ptr %112, align 2
  br label %113

113:                                              ; preds = %109, %104
  %114 = load ptr, ptr %10, align 4
  %115 = getelementptr inbounds %struct.cfg80211_event, ptr %46, i32 0, i32 2, i32 0, i32 1
  store ptr %114, ptr %115, align 16
  %116 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 24
  %117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %116) #10
  %118 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 23
  %119 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 23, i32 1
  %120 = load ptr, ptr %119, align 4
  store ptr %46, ptr %119, align 4
  store ptr %118, ptr %46, align 64
  %121 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %120, ptr %121, align 4
  store volatile ptr %46, ptr %120, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %116, i32 noundef %117) #10
  %122 = load ptr, ptr @cfg80211_wq, align 4
  %123 = getelementptr i8, ptr %6, i32 -340
  %124 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %122, ptr noundef %123) #10
  br label %125

125:                                              ; preds = %113, %48, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_port_authorized(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6, !prof !20

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1037, i32 noundef 9, ptr noundef null) #10
  br label %34

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 9, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %1, align 4
  %16 = xor i32 %15, %14
  %17 = getelementptr %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 9, i32 11, i32 4
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr i8, ptr %1, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = xor i16 %20, %18
  %22 = zext i16 %21 to i32
  %23 = or i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !20

25:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1038, i32 noundef 9, ptr noundef null) #10
  br label %34

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !10

29:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %27, i32 -544
  %32 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void @nl80211_send_port_authorized(ptr noundef %31, ptr noundef %33, ptr noundef %1) #10
  br label %34

34:                                               ; preds = %30, %25, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_port_authorized(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_port_authorized(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1053, i32 noundef 9, ptr noundef null) #10
  br label %38

12:                                               ; preds = %9
  %13 = or i32 %2, 256
  %14 = and i32 %2, 17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !20

16:                                               ; preds = %12
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %16 ]
  %22 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %21, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef %13, i32 noundef 68) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cfg80211_event, ptr %24, i32 0, i32 1
  store i32 5, ptr %27, align 8
  %28 = getelementptr inbounds %struct.cfg80211_event, ptr %24, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %28, ptr noundef nonnull align 1 dereferenceable(6) %1, i32 6, i1 false)
  %29 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 24
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #10
  %31 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 23
  %32 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 23, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %24, ptr %32, align 4
  store ptr %31, ptr %24, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %24, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #10
  %35 = load ptr, ptr @cfg80211_wq, align 4
  %36 = getelementptr i8, ptr %6, i32 -340
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %36) #10
  br label %38

38:                                               ; preds = %26, %20, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_disconnected(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %8, i32 -544
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 8, label %16
    i32 2, label %16
  ]

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1087, i32 noundef 9, ptr noundef null) #10
  br label %189

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %18, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #10, !srcloc !13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #10, !srcloc !16
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %18, i32 0, i32 9, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #10, !srcloc !13
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #10, !srcloc !16
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36, !prof !10

35:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %36

36:                                               ; preds = %35, %30, %26
  %37 = load ptr, ptr %7, align 4
  %38 = load ptr, ptr %17, align 4
  %39 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %38, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %37, ptr noundef %39) #10
  br label %40

40:                                               ; preds = %36, %16
  store ptr null, ptr %17, align 4
  %41 = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 14
  store i8 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 20
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 18
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree_sensitive(ptr noundef %44) #10
  store ptr null, ptr %43, align 4
  tail call void @nl80211_send_disconnected(ptr noundef %12, ptr noundef %0, i16 noundef zeroext %3, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %4) #10
  %45 = load ptr, ptr %12, align 32
  %46 = getelementptr inbounds %struct.cfg80211_ops, ptr %45, i32 0, i32 84
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %89, label %49

49:                                               ; preds = %40
  %50 = getelementptr i8, ptr %8, i32 -188
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %89, label %53

53:                                               ; preds = %49
  store i32 0, ptr %50, align 4
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_crit_proto_stop, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = tail call ptr @llvm.thread.pointer() #10
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %68 = tail call i32 @__traceiter_rdev_crit_proto_stop(ptr noundef null, ptr noundef nonnull %8, ptr noundef %7) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %69 = load ptr, ptr %12, align 32
  br label %70

70:                                               ; preds = %67, %56, %53
  %71 = phi ptr [ %69, %67 ], [ %45, %56 ], [ %45, %53 ]
  %72 = getelementptr inbounds %struct.cfg80211_ops, ptr %71, i32 0, i32 84
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef nonnull %8, ptr noundef %7) #10
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = tail call ptr @llvm.thread.pointer() #10
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %88 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef nonnull %8) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %89

89:                                               ; preds = %87, %76, %70, %49, %40
  %90 = load ptr, ptr %12, align 32
  %91 = getelementptr inbounds %struct.cfg80211_ops, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %144, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %7, align 4
  %96 = getelementptr %struct.wiphy, ptr %95, i32 0, i32 14, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 66
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i32 6, i32 8
  br label %101

101:                                              ; preds = %139, %94
  %102 = phi i32 [ 0, %94 ], [ %140, %139 ]
  %103 = trunc i32 %102 to i8
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = tail call ptr @llvm.thread.pointer() #10
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  %118 = tail call i32 @__traceiter_rdev_del_key(ptr noundef null, ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext %103, i1 noundef zeroext false, ptr noundef null) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  br label %119

119:                                              ; preds = %117, %106, %101
  %120 = load ptr, ptr %12, align 32
  %121 = getelementptr inbounds %struct.cfg80211_ops, ptr %120, i32 0, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 %122(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext %103, i1 noundef zeroext false, ptr noundef null) #10
  %124 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %119
  %127 = tail call ptr @llvm.thread.pointer() #10
  %128 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 5
  %131 = getelementptr i32, ptr @__cpu_online_mask, i32 %130
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %129, 31
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %126
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %138 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %8, i32 noundef %123) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %139

139:                                              ; preds = %137, %126, %119
  %140 = add nuw nsw i32 %102, 1
  %141 = icmp eq i32 %140, %100
  br i1 %141, label %142, label %101

142:                                              ; preds = %139
  %143 = load ptr, ptr %12, align 32
  br label %144

144:                                              ; preds = %142, %89
  %145 = phi ptr [ %143, %142 ], [ %90, %89 ]
  %146 = getelementptr inbounds %struct.cfg80211_ops, ptr %145, i32 0, i32 87
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %186, label %149

149:                                              ; preds = %144
  %150 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 1), align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %149
  %153 = tail call ptr @llvm.thread.pointer() #10
  %154 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 2
  %155 = load i32, ptr %154, align 8
  %156 = lshr i32 %155, 5
  %157 = getelementptr i32, ptr @__cpu_online_mask, i32 %156
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %155, 31
  %160 = shl nuw i32 1, %159
  %161 = and i32 %160, %158
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %152
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %164 = tail call i32 @__traceiter_rdev_set_qos_map(ptr noundef null, ptr noundef nonnull %8, ptr noundef %0, ptr noundef null) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %165 = load ptr, ptr %12, align 32
  %166 = getelementptr inbounds %struct.cfg80211_ops, ptr %165, i32 0, i32 87
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %163, %152, %149
  %169 = phi ptr [ %147, %149 ], [ %147, %152 ], [ %167, %163 ]
  %170 = tail call i32 %169(ptr noundef nonnull %8, ptr noundef %0, ptr noundef null) #10
  %171 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %168
  %174 = tail call ptr @llvm.thread.pointer() #10
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 8
  %177 = lshr i32 %176, 5
  %178 = getelementptr i32, ptr @__cpu_online_mask, i32 %177
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %176, 31
  %181 = shl nuw i32 1, %180
  %182 = and i32 %181, %179
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %173
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %185 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %8, i32 noundef %170) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %186

186:                                              ; preds = %184, %173, %168, %144
  %187 = load ptr, ptr @system_wq, align 4
  %188 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %187, ptr noundef nonnull @cfg80211_disconnect_work) #10
  br label %189

189:                                              ; preds = %186, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_disconnected(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_disconnected(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

12:                                               ; preds = %6
  %13 = or i32 %5, 256
  %14 = add i32 %3, 68
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef %13) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = zext i1 %4 to i8
  %19 = getelementptr inbounds %struct.cfg80211_event, ptr %15, i32 0, i32 1
  store i32 2, ptr %19, align 8
  %20 = getelementptr i8, ptr %15, i32 68
  %21 = getelementptr inbounds %struct.cfg80211_event, ptr %15, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cfg80211_event, ptr %15, i32 0, i32 2, i32 0, i32 1
  store i32 %3, ptr %22, align 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 1 %2, i32 %3, i1 false)
  %23 = getelementptr inbounds %struct.cfg80211_event, ptr %15, i32 0, i32 2, i32 0, i32 2
  store i16 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.anon.157, ptr %21, i32 0, i32 3
  store i8 %18, ptr %24, align 2
  %25 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 24
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 23
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 23, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %15, ptr %28, align 4
  store ptr %27, ptr %15, align 64
  %30 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %15, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  %31 = load ptr, ptr @cfg80211_wq, align 4
  %32 = getelementptr i8, ptr %9, i32 -340
  %33 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %32) #10
  br label %34

34:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 14
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %17, label %350

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 13
  %19 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @bcmp(ptr %18, ptr %20, i32 %11)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %350

23:                                               ; preds = %17, %5
  %24 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 25
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %4, null
  br i1 %28, label %350, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %25, i32 0, i32 9, i32 11
  %31 = load i32, ptr %4, align 4
  %32 = load i32, ptr %30, align 4
  %33 = xor i32 %32, %31
  %34 = getelementptr i8, ptr %4, i32 4
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr %struct.cfg80211_internal_bss, ptr %25, i32 0, i32 9, i32 11, i32 4
  %37 = load i16, ptr %36, align 2
  %38 = xor i16 %37, %35
  %39 = zext i16 %38 to i32
  %40 = or i32 %33, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %350

42:                                               ; preds = %29, %23
  %43 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %350

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 18
  %48 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 59
  %49 = load ptr, ptr %48, align 8
  tail call void @cfg80211_oper_and_ht_capa(ptr noundef %47, ptr noundef %49) #10
  %50 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 20
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 60
  %52 = load ptr, ptr %51, align 4
  tail call void @cfg80211_oper_and_vht_capa(ptr noundef %50, ptr noundef %52) #10
  %53 = icmp eq ptr %3, null
  br i1 %53, label %88, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %3, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = getelementptr [4 x %struct.key_params], ptr %3, i32 0, i32 %56, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -5
  %62 = icmp eq i32 %61, 1027073
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = getelementptr [4 x %struct.key_params], ptr %3, i32 0, i32 %56
  %65 = trunc i32 %56 to i8
  %66 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 14
  store i8 %65, ptr %66, align 1
  %67 = load ptr, ptr %64, align 4
  %68 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 12
  store ptr %67, ptr %68, align 4
  %69 = getelementptr [4 x %struct.key_params], ptr %3, i32 0, i32 %56, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 13
  store i8 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 %60, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %63
  %78 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  store i32 1, ptr %78, align 4
  %82 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 3
  store i32 %60, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %77, %58
  %84 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 11
  store ptr %3, ptr %84, align 4
  %85 = load i32, ptr %55, align 4
  %86 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 12
  store i32 %85, ptr %86, align 4
  br label %88

87:                                               ; preds = %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1243, i32 noundef 9, ptr noundef null) #10
  br label %350

88:                                               ; preds = %83, %46
  store ptr %3, ptr %43, align 4
  %89 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 13
  %90 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %89, ptr align 1 %91, i32 %93, i1 false)
  %94 = load i32, ptr %92, align 4
  %95 = trunc i32 %94 to i8
  store i8 %95, ptr %9, align 2
  %96 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 21
  %97 = load i8, ptr %96, align 4, !range !12
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 19
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %0, align 32
  %101 = getelementptr inbounds %struct.cfg80211_ops, ptr %100, i32 0, i32 43
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %302

104:                                              ; preds = %88
  %105 = load ptr, ptr %8, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108, !prof !10

107:                                              ; preds = %104
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

108:                                              ; preds = %104
  %109 = getelementptr i8, ptr %105, i32 -544
  %110 = load ptr, ptr %109, align 32
  %111 = getelementptr inbounds %struct.cfg80211_ops, ptr %110, i32 0, i32 39
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %345, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.cfg80211_ops, ptr %110, i32 0, i32 40
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %345, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %24, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %148, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %119, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #10, !srcloc !13
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #10, !srcloc !16
  %124 = extractvalue { i32, i32 } %123, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127, !prof !10

126:                                              ; preds = %121
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %127

127:                                              ; preds = %126, %121
  %128 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %119, i32 0, i32 9, i32 6
  %129 = load ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = getelementptr i8, ptr %129, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %132) #10, !srcloc !13
  %133 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %132, ptr %132, i32 1, ptr elementtype(i32) %132) #10, !srcloc !16
  %134 = extractvalue { i32, i32 } %133, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137, !prof !10

136:                                              ; preds = %131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %137

137:                                              ; preds = %136, %131, %127
  %138 = load ptr, ptr %8, align 4
  %139 = load ptr, ptr %24, align 4
  %140 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %139, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %138, ptr noundef %140) #10
  store ptr null, ptr %24, align 4
  %141 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 17
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.cfg80211_conn, ptr %142, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  tail call void @kfree(ptr noundef %146) #10
  %147 = load ptr, ptr %141, align 4
  tail call void @kfree(ptr noundef %147) #10
  store ptr null, ptr %141, align 4
  br label %152

148:                                              ; preds = %118
  %149 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 17
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %345

152:                                              ; preds = %148, %144, %137
  %153 = getelementptr inbounds %struct.wireless_dev, ptr %8, i32 0, i32 17
  %154 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %155 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 3520, i32 noundef 300) #12
  store ptr %155, ptr %153, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %345, label %157

157:                                              ; preds = %152
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(272) %155, ptr noundef align 4 dereferenceable(272) %2, i32 272, i1 false) #10
  %158 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.cfg80211_conn, ptr %155, i32 0, i32 2
  %163 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %155, i32 0, i32 2
  store ptr %162, ptr %163, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %162, ptr noundef nonnull align 1 dereferenceable(6) %159, i32 6, i1 false) #10
  br label %164

164:                                              ; preds = %161, %157
  %165 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 7
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 8
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.cfg80211_conn, ptr %155, i32 0, i32 4
  %170 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %155, i32 0, i32 8
  %171 = load ptr, ptr %8, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %174, !prof !10

173:                                              ; preds = %164
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

174:                                              ; preds = %164
  %175 = getelementptr i8, ptr %171, i32 216
  %176 = load i8, ptr %175, align 8
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = icmp eq ptr %166, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %178
  %181 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 127, ptr noundef nonnull %166, i32 noundef %168, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i8, ptr %175, align 8
  br label %188

185:                                              ; preds = %180, %174
  %186 = tail call ptr @kmemdup(ptr noundef %166, i32 noundef %168, i32 noundef 3264) #10
  store ptr %186, ptr %169, align 8
  %187 = icmp eq ptr %186, null
  br i1 %187, label %342, label %221

188:                                              ; preds = %183, %178
  %189 = phi i8 [ %184, %183 ], [ %176, %178 ]
  %190 = zext i8 %189 to i32
  %191 = add i32 %168, %190
  %192 = add i32 %191, 2
  %193 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %192, i32 noundef 3264) #11
  %194 = icmp eq ptr %193, null
  br i1 %194, label %342, label %195

195:                                              ; preds = %188
  %196 = icmp eq i32 %168, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %195
  %198 = tail call i32 @ieee80211_ie_split_ric(ptr noundef %166, i32 noundef %168, ptr noundef nonnull @cfg80211_sme_get_conn_ies.before_extcapa, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %193, ptr align 1 %166, i32 %198, i1 false) #10
  %199 = getelementptr i8, ptr %193, i32 %198
  %200 = load i8, ptr %175, align 8
  %201 = zext i8 %200 to i32
  %202 = getelementptr i8, ptr %199, i32 %201
  %203 = getelementptr i8, ptr %202, i32 2
  %204 = getelementptr i8, ptr %166, i32 %198
  %205 = sub i32 %168, %198
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %203, ptr align 1 %204, i32 %205, i1 false) #10
  br label %206

206:                                              ; preds = %197, %195
  %207 = phi i32 [ %198, %197 ], [ 0, %195 ]
  %208 = getelementptr i8, ptr %193, i32 %207
  store i8 127, ptr %208, align 1
  %209 = load i8, ptr %175, align 8
  %210 = add i32 %207, 1
  %211 = getelementptr i8, ptr %193, i32 %210
  store i8 %209, ptr %211, align 1
  %212 = getelementptr i8, ptr %208, i32 2
  %213 = getelementptr i8, ptr %171, i32 208
  %214 = load ptr, ptr %213, align 16
  %215 = load i8, ptr %175, align 8
  %216 = zext i8 %215 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %212, ptr align 1 %214, i32 %216, i1 false) #10
  store ptr %193, ptr %169, align 8
  %217 = load i8, ptr %175, align 8
  %218 = zext i8 %217 to i32
  %219 = add i32 %168, 2
  %220 = add i32 %219, %218
  br label %221

221:                                              ; preds = %206, %185
  %222 = phi i32 [ %220, %206 ], [ %168, %185 ]
  store i32 %222, ptr %170, align 8
  %223 = load ptr, ptr %153, align 4
  %224 = getelementptr inbounds %struct.cfg80211_conn, ptr %223, i32 0, i32 4
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %223, i32 0, i32 7
  store ptr %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 6
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 8
  %230 = load ptr, ptr %153, align 4
  %231 = getelementptr inbounds %struct.cfg80211_conn, ptr %230, i32 0, i32 6
  br i1 %229, label %232, label %235

232:                                              ; preds = %221
  store i8 1, ptr %231, align 4
  %233 = load ptr, ptr %153, align 4
  %234 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %233, i32 0, i32 6
  store i32 0, ptr %234, align 4
  br label %236

235:                                              ; preds = %221
  store i8 0, ptr %231, align 4
  br label %236

236:                                              ; preds = %235, %232
  %237 = load ptr, ptr %153, align 4
  %238 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %237, i32 0, i32 4
  store ptr %89, ptr %238, align 4
  %239 = load i8, ptr %9, align 2
  %240 = zext i8 %239 to i32
  %241 = load ptr, ptr %153, align 4
  %242 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %241, i32 0, i32 5
  store i32 %240, ptr %242, align 4
  %243 = load ptr, ptr %8, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %246, !prof !10

245:                                              ; preds = %236
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

246:                                              ; preds = %236
  %247 = load ptr, ptr %153, align 4
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %247, i32 0, i32 2
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %247, i32 0, i32 4
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %247, i32 0, i32 5
  %254 = load i32, ptr %253, align 4
  %255 = load i32, ptr %99, align 4
  %256 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %247, i32 0, i32 9
  %257 = load i8, ptr %256, align 4, !range !12
  %258 = xor i8 %257, 1
  %259 = zext i8 %258 to i32
  %260 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %243, ptr noundef %248, ptr noundef %250, ptr noundef %252, i32 noundef %254, i32 noundef %255, i32 noundef %259) #10
  %261 = icmp eq ptr %260, null
  br i1 %261, label %276, label %262

262:                                              ; preds = %246
  %263 = load ptr, ptr %153, align 4
  %264 = getelementptr inbounds %struct.cfg80211_conn, ptr %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.cfg80211_bss, ptr %260, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %264, ptr noundef align 4 dereferenceable(6) %265, i32 6, i1 false) #10
  %266 = load ptr, ptr %153, align 4
  %267 = getelementptr inbounds %struct.cfg80211_conn, ptr %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %266, i32 0, i32 2
  store ptr %267, ptr %268, align 4
  %269 = load ptr, ptr %260, align 4
  %270 = load ptr, ptr %153, align 4
  store ptr %269, ptr %270, align 4
  %271 = load ptr, ptr %153, align 4
  %272 = getelementptr inbounds %struct.cfg80211_conn, ptr %271, i32 0, i32 1
  store i32 2, ptr %272, align 4
  %273 = getelementptr i8, ptr %243, i32 -356
  %274 = load ptr, ptr @system_wq, align 4
  %275 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %274, ptr noundef %273) #10
  br label %276

276:                                              ; preds = %262, %246
  %277 = icmp eq ptr %4, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %276
  %279 = load ptr, ptr %153, align 4
  %280 = getelementptr inbounds %struct.cfg80211_conn, ptr %279, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %280, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false) #10
  %281 = load ptr, ptr %153, align 4
  %282 = getelementptr inbounds %struct.cfg80211_conn, ptr %281, i32 0, i32 7
  store i8 1, ptr %282, align 1
  br label %283

283:                                              ; preds = %278, %276
  br i1 %261, label %287, label %284

284:                                              ; preds = %283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %285 = call fastcc i32 @cfg80211_conn_do_work(ptr noundef %8, ptr noundef nonnull %6) #10
  %286 = load ptr, ptr %8, align 4
  tail call void @cfg80211_put_bss(ptr noundef %286, ptr noundef nonnull %260) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %293

287:                                              ; preds = %283
  %288 = tail call fastcc i32 @cfg80211_conn_scan(ptr noundef %8) #10
  %289 = icmp eq i32 %288, -16
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load ptr, ptr %153, align 4
  %292 = getelementptr inbounds %struct.cfg80211_conn, ptr %291, i32 0, i32 1
  store i32 1, ptr %292, align 4
  br label %350

293:                                              ; preds = %287, %284
  %294 = phi i32 [ %285, %284 ], [ %288, %287 ]
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %350, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %153, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %345, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.cfg80211_conn, ptr %297, i32 0, i32 4
  %301 = load ptr, ptr %300, align 4
  tail call void @kfree(ptr noundef %301) #10
  br label %342

302:                                              ; preds = %88
  %303 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %304 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_connect, i32 0, i32 1), align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %322

306:                                              ; preds = %302
  %307 = tail call ptr @llvm.thread.pointer() #10
  %308 = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 2
  %309 = load i32, ptr %308, align 8
  %310 = lshr i32 %309, 5
  %311 = getelementptr i32, ptr @__cpu_online_mask, i32 %310
  %312 = load volatile i32, ptr %311, align 4
  %313 = and i32 %309, 31
  %314 = shl nuw i32 1, %313
  %315 = and i32 %314, %312
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %306
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  %318 = tail call i32 @__traceiter_rdev_connect(ptr noundef null, ptr noundef %303, ptr noundef %1, ptr noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %319 = load ptr, ptr %0, align 32
  %320 = getelementptr inbounds %struct.cfg80211_ops, ptr %319, i32 0, i32 43
  %321 = load ptr, ptr %320, align 4
  br label %322

322:                                              ; preds = %317, %306, %302
  %323 = phi ptr [ %321, %317 ], [ %102, %306 ], [ %102, %302 ]
  %324 = tail call i32 %323(ptr noundef %303, ptr noundef %1, ptr noundef %2) #10
  %325 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %340

327:                                              ; preds = %322
  %328 = tail call ptr @llvm.thread.pointer() #10
  %329 = getelementptr inbounds %struct.thread_info, ptr %328, i32 0, i32 2
  %330 = load i32, ptr %329, align 8
  %331 = lshr i32 %330, 5
  %332 = getelementptr i32, ptr @__cpu_online_mask, i32 %331
  %333 = load volatile i32, ptr %332, align 4
  %334 = and i32 %330, 31
  %335 = shl nuw i32 1, %334
  %336 = and i32 %335, %333
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %327
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %339 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %303, i32 noundef %324) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %340

340:                                              ; preds = %338, %327, %322
  %341 = icmp eq i32 %324, 0
  br i1 %341, label %350, label %345

342:                                              ; preds = %299, %188, %185
  %343 = phi i32 [ %294, %299 ], [ -12, %188 ], [ -12, %185 ]
  %344 = load ptr, ptr %153, align 4
  tail call void @kfree(ptr noundef %344) #10
  store ptr null, ptr %153, align 4
  br label %345

345:                                              ; preds = %342, %340, %296, %152, %148, %114, %108
  %346 = phi i32 [ %324, %340 ], [ %294, %296 ], [ -12, %152 ], [ -115, %148 ], [ -95, %108 ], [ -95, %114 ], [ %343, %342 ]
  store ptr null, ptr %43, align 4
  %347 = load ptr, ptr %24, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %350

349:                                              ; preds = %345
  store i8 0, ptr %9, align 2
  br label %350

350:                                              ; preds = %349, %345, %340, %293, %290, %87, %42, %29, %27, %17, %13
  %351 = phi i32 [ -22, %87 ], [ -114, %17 ], [ -114, %13 ], [ -114, %27 ], [ -107, %29 ], [ -115, %42 ], [ %346, %349 ], [ %346, %345 ], [ 0, %340 ], [ 0, %293 ], [ 0, %290 ]
  ret i32 %351
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_oper_and_ht_capa(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_oper_and_vht_capa(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_disconnect(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i1 zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree_sensitive(ptr noundef %8) #10
  store ptr null, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 20
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %14, i32 -544
  %19 = load ptr, ptr %18, align 32
  %20 = getelementptr inbounds %struct.cfg80211_ops, ptr %19, i32 0, i32 41
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %89, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cfg80211_conn, ptr %11, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %11, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %18, ptr noundef %29, ptr noundef %31, ptr noundef null, i32 noundef 0, i16 noundef zeroext %2, i1 noundef zeroext false) #10
  %33 = load ptr, ptr %10, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %89, label %35

35:                                               ; preds = %27, %23
  %36 = phi i32 [ %32, %27 ], [ 0, %23 ]
  %37 = phi ptr [ %33, %27 ], [ %11, %23 ]
  %38 = getelementptr inbounds %struct.cfg80211_conn, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %39) #10
  %40 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %40) #10
  store ptr null, ptr %10, align 4
  br label %89

41:                                               ; preds = %4
  %42 = load ptr, ptr %0, align 32
  %43 = getelementptr inbounds %struct.cfg80211_ops, ptr %42, i32 0, i32 45
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  tail call void @cfg80211_mlme_down(ptr noundef %0, ptr noundef %1) #10
  br label %89

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 14
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %89, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_disconnect, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #10
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %67 = tail call i32 @__traceiter_rdev_disconnect(ptr noundef null, ptr noundef %52, ptr noundef %1, i16 noundef zeroext %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %68 = load ptr, ptr %0, align 32
  %69 = getelementptr inbounds %struct.cfg80211_ops, ptr %68, i32 0, i32 45
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %66, %55, %51
  %72 = phi ptr [ %70, %66 ], [ %44, %55 ], [ %44, %51 ]
  %73 = tail call i32 %72(ptr noundef %52, ptr noundef %1, i16 noundef zeroext %2) #10
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = tail call ptr @llvm.thread.pointer() #10
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %88 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %52, i32 noundef %73) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %89

89:                                               ; preds = %87, %76, %71, %47, %46, %35, %27, %17
  %90 = phi i32 [ 0, %47 ], [ 0, %46 ], [ -95, %17 ], [ %32, %27 ], [ %36, %35 ], [ %73, %71 ], [ %73, %76 ], [ %73, %87 ]
  %91 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 25
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 14
  store i8 0, ptr %95, align 2
  br label %96

96:                                               ; preds = %94, %89
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mlme_down(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_autodisconnect_wk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -120
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -544
  %8 = getelementptr i8, ptr %0, i32 -84
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 -116
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %45 [
    i32 1, label %15
    i32 3, label %19
    i32 9, label %19
    i32 7, label %23
    i32 2, label %27
    i32 8, label %27
  ]

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 -104
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %7, ptr noundef %17, i1 noundef zeroext false) #10
  br label %45

19:                                               ; preds = %12, %12
  %20 = getelementptr i8, ptr %0, i32 -104
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @__cfg80211_stop_ap(ptr noundef %7, ptr noundef %21, i1 noundef zeroext false) #10
  br label %45

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %0, i32 -104
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @__cfg80211_leave_mesh(ptr noundef %7, ptr noundef %25) #10
  br label %45

27:                                               ; preds = %12, %12
  %28 = load ptr, ptr %7, align 32
  %29 = getelementptr inbounds %struct.cfg80211_ops, ptr %28, i32 0, i32 45
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %0, i32 36
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr i8, ptr %0, i32 -104
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @cfg80211_disconnect(ptr noundef %7, ptr noundef %38, i16 noundef zeroext 3, i1 zeroext undef)
  br label %45

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %0, i32 -104
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %0, i32 16
  %44 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %7, ptr noundef %42, ptr noundef %43, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %45

45:                                               ; preds = %40, %36, %23, %19, %15, %12, %6
  tail call void @mutex_unlock(ptr noundef %8) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_ibss(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_stop_ap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_mesh(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_mlme_deauth(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_conn_scan(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %2, i32 -544
  %7 = getelementptr i8, ptr %2, i32 -408
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %161

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %2, i32 -400
  %12 = load ptr, ptr %11, align 16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %161

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @ieee80211_get_num_supported_channels(ptr noundef nonnull %2) #10
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ 1, %14 ]
  %23 = shl i32 %22, 2
  %24 = add i32 %23, 153
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %161, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %15, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  br label %47

33:                                               ; preds = %27
  %34 = load i32, ptr %29, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr %struct.wiphy, ptr %35, i32 0, i32 53, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @kfree(ptr noundef nonnull %25) #10
  br label %161

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 22
  store ptr %29, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %37, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = shl nsw i32 -1, %43
  %45 = xor i32 %44, -1
  %46 = getelementptr %struct.cfg80211_scan_request, ptr %25, i32 0, i32 9, i32 %34
  store i32 %45, ptr %46, align 4
  br label %87

47:                                               ; preds = %83, %31
  %48 = phi i32 [ 0, %31 ], [ %85, %83 ]
  %49 = phi i32 [ 0, %31 ], [ %84, %83 ]
  %50 = getelementptr %struct.wiphy, ptr %32, i32 0, i32 53, i32 %48
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %83, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %51, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %71, %53
  %58 = phi i32 [ %72, %71 ], [ %55, %53 ]
  %59 = phi i32 [ %74, %71 ], [ 0, %53 ]
  %60 = phi i32 [ %73, %71 ], [ %49, %53 ]
  %61 = load ptr, ptr %51, align 4
  %62 = getelementptr %struct.ieee80211_channel, ptr %61, i32 %59, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = getelementptr %struct.ieee80211_channel, ptr %61, i32 %59
  %68 = add i32 %60, 1
  %69 = getelementptr %struct.cfg80211_scan_request, ptr %25, i32 0, i32 22, i32 %60
  store ptr %67, ptr %69, align 4
  %70 = load i32, ptr %54, align 4
  br label %71

71:                                               ; preds = %66, %57
  %72 = phi i32 [ %58, %57 ], [ %70, %66 ]
  %73 = phi i32 [ %60, %57 ], [ %68, %66 ]
  %74 = add nuw nsw i32 %59, 1
  %75 = icmp slt i32 %74, %72
  br i1 %75, label %57, label %76

76:                                               ; preds = %71, %53
  %77 = phi i32 [ %49, %53 ], [ %73, %71 ]
  %78 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %51, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = shl nsw i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = getelementptr %struct.cfg80211_scan_request, ptr %25, i32 0, i32 9, i32 %48
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %76, %47
  %84 = phi i32 [ %77, %76 ], [ %49, %47 ]
  %85 = add nuw nsw i32 %48, 1
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %47

87:                                               ; preds = %83, %40
  %88 = phi i32 [ %22, %40 ], [ %84, %83 ]
  %89 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 2
  store i32 %88, ptr %89, align 8
  %90 = getelementptr %struct.cfg80211_scan_request, ptr %25, i32 0, i32 22, i32 %88
  store ptr %90, ptr %25, align 64
  %91 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 1
  store i32 1, ptr %91, align 4
  %92 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %28, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %28, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %90, ptr align 1 %93, i32 %95, i1 false)
  %96 = load i32, ptr %94, align 4
  %97 = trunc i32 %96 to i8
  %98 = load ptr, ptr %25, align 64
  %99 = getelementptr inbounds %struct.cfg80211_ssid, ptr %98, i32 0, i32 1
  store i8 %97, ptr %99, align 1
  %100 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 13
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(6) %100, i8 -1, i32 6, i1 false) #10
  %101 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 10
  store ptr %0, ptr %101, align 8
  %102 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 14
  store ptr %2, ptr %102, align 16
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %25, i32 0, i32 15
  store i32 %103, ptr %104, align 4
  store ptr %25, ptr %7, align 8
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %87
  %108 = tail call ptr @llvm.thread.pointer() #10
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %119 = tail call i32 @__traceiter_rdev_scan(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %25) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  br label %120

120:                                              ; preds = %118, %107, %87
  %121 = load ptr, ptr %6, align 32
  %122 = getelementptr inbounds %struct.cfg80211_ops, ptr %121, i32 0, i32 37
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef nonnull %2, ptr noundef nonnull %25) #10
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = tail call ptr @llvm.thread.pointer() #10
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %139 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %2, i32 noundef %124) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %140

140:                                              ; preds = %138, %127, %120
  %141 = icmp eq i32 %124, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %140
  %143 = load ptr, ptr %15, align 4
  %144 = getelementptr inbounds %struct.cfg80211_conn, ptr %143, i32 0, i32 1
  store i32 0, ptr %144, align 4
  tail call void @nl80211_send_scan_start(ptr noundef %6, ptr noundef %0) #10
  %145 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %161, label %148

148:                                              ; preds = %142
  %149 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !37
  %150 = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 99
  %151 = load ptr, ptr %150, align 8
  %152 = ptrtoint ptr %151 to i32
  %153 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %154 = inttoptr i32 %153 to ptr
  %155 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %154) #6, !srcloc !38
  %156 = add i32 %155, %152
  %157 = inttoptr i32 %156 to ptr
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %149) #10, !srcloc !39
  br label %161

160:                                              ; preds = %140
  store ptr null, ptr %7, align 8
  tail call void @kfree(ptr noundef nonnull %25) #10
  br label %161

161:                                              ; preds = %160, %148, %142, %39, %21, %10, %5
  %162 = phi i32 [ -16, %10 ], [ -16, %5 ], [ -12, %21 ], [ -22, %39 ], [ %124, %160 ], [ 0, %142 ], [ 0, %148 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_mlme_auth(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_mlme_assoc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_num_supported_channels(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_scan_start(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_hint_disconnect() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_beaconing_iface_active(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_crit_proto_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_del_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_qos_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_disconnect(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155931100, i64 2155931584, i64 2155931137, i64 2155931193, i64 2155931227, i64 2155931251, i64 2155931292, i64 2155931313, i64 2155931341, i64 2155931375}
!12 = !{i8 0, i8 2}
!13 = !{i64 602675, i64 2148092646, i64 2148092672, i64 2148092719, i64 2148092741, i64 2148092769, i64 2148092789}
!14 = !{i64 2148104858, i64 2148104884, i64 2148104913, i64 2148104947, i64 2148104978, i64 2148105001}
!15 = !{i64 2148205513}
!16 = !{i64 2148107899, i64 2148107931, i64 2148107960, i64 2148107994, i64 2148108025, i64 2148108048}
!17 = !{i64 2148205716}
!18 = !{i64 2149382345}
!19 = !{i64 2149382562}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2157612807}
!22 = !{i64 2157612981}
!23 = !{i64 2156214936}
!24 = !{i64 2156215090}
!25 = !{i64 2156343904}
!26 = !{i64 2156344128}
!27 = !{i64 2156173231}
!28 = !{i64 2156173393}
!29 = !{i64 2157640796}
!30 = !{i64 2157640984}
!31 = !{i64 2156956868}
!32 = !{i64 2156957040}
!33 = !{i64 2157036972}
!34 = !{i64 2157037166}
!35 = !{i64 2156190298}
!36 = !{i64 2156190456}
!37 = !{i64 497914, i64 497975}
!38 = !{i64 516614}
!39 = !{i64 500931}
