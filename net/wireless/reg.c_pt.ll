; ModuleID = '/llk/IR/net/wireless/reg.c_pt.bc'
source_filename = "../net/wireless/reg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_wiphy_regdom:\09\09\09\09\09"
module asm "\09.asciz \09\22get_wiphy_regdom\22\09\09\09\09\09"
module asm "__kstrtabns_get_wiphy_regdom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reg_query_regdb_wmm:\09\09\09\09\09"
module asm "\09.asciz \09\22reg_query_regdb_wmm\22\09\09\09\09\09"
module asm "__kstrtabns_reg_query_regdb_wmm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_reg_info:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_reg_info\22\09\09\09\09\09"
module asm "__kstrtabns_freq_reg_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reg_initiator_name:\09\09\09\09\09"
module asm "\09.asciz \09\22reg_initiator_name\22\09\09\09\09\09"
module asm "__kstrtabns_reg_initiator_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_apply_custom_regulatory:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_apply_custom_regulatory\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_apply_custom_regulatory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulatory_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22regulatory_hint\22\09\09\09\09\09"
module asm "__kstrtabns_regulatory_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulatory_set_wiphy_regd:\09\09\09\09\09"
module asm "\09.asciz \09\22regulatory_set_wiphy_regd\22\09\09\09\09\09"
module asm "__kstrtabns_regulatory_set_wiphy_regd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulatory_set_wiphy_regd_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22regulatory_set_wiphy_regd_sync\22\09\09\09\09\09"
module asm "__kstrtabns_regulatory_set_wiphy_regd_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulatory_pre_cac_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22regulatory_pre_cac_allowed\22\09\09\09\09\09"
module asm "__kstrtabns_regulatory_pre_cac_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.35 }
%union.anon.35 = type { ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.119, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.119 = type { i64, i64, i8 }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.fwdb_header = type { i32, i32, [0 x %struct.fwdb_country] }
%struct.fwdb_country = type { [2 x i8], i16 }
%struct.fwdb_collection = type { i8, i8, i8, i8 }
%struct.fwdb_rule = type { i8, i8, i16, i32, i32, i32, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.reg_beacon = type { %struct.list_head, %struct.ieee80211_channel }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.fwdb_wmm_rule = type { [4 x %struct.fwdb_wmm_ac], [4 x %struct.fwdb_wmm_ac] }
%struct.fwdb_wmm_ac = type { i8, i8, i16 }
%struct.reg_regdb_apply_request = type { %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.101, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.101 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.4, %struct.rw_semaphore, ptr, ptr, %union.anon.5, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.6, %union.anon.10, ptr }
%union.anon.4 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.5 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.6 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.7, ptr, ptr, ptr }
%union.anon.7 = type { i32 }
%union.anon.10 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.83, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type {}
%union.anon.83 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }

@__kstrtab_get_wiphy_regdom = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_wiphy_regdom = external dso_local constant [0 x i8], align 1
@__ksymtab_get_wiphy_regdom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_wiphy_regdom to i32), ptr @__kstrtab_get_wiphy_regdom, ptr @__kstrtabns_get_wiphy_regdom }, section "___ksymtab+get_wiphy_regdom", align 4
@__param_str_ieee80211_regdom = internal constant [17 x i8] c"ieee80211_regdom\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ieee80211_regdom = internal global ptr @.str.11, align 4
@__param_ieee80211_regdom = internal constant %struct.kernel_param { ptr @__param_str_ieee80211_regdom, ptr @__this_module, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.35 { ptr @ieee80211_regdom } }, section "__param", align 4
@__UNIQUE_ID_ieee80211_regdomtype692 = internal constant [32 x i8] c"parmtype=ieee80211_regdom:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ieee80211_regdom693 = internal constant [57 x i8] c"parm=ieee80211_regdom:IEEE 802.11 regulatory domain code\00", section ".modinfo", align 1
@regdb = internal unnamed_addr global ptr null, align 4
@__kstrtab_reg_query_regdb_wmm = external dso_local constant [0 x i8], align 1
@__kstrtabns_reg_query_regdb_wmm = external dso_local constant [0 x i8], align 1
@__ksymtab_reg_query_regdb_wmm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reg_query_regdb_wmm to i32), ptr @__kstrtab_reg_query_regdb_wmm, ptr @__kstrtabns_reg_query_regdb_wmm }, section "___ksymtab+reg_query_regdb_wmm", align 4
@.str = private unnamed_addr constant [14 x i8] c"regulatory.db\00", align 1
@reg_pdev = internal unnamed_addr global ptr null, align 4
@__kstrtab_freq_reg_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_reg_info = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_reg_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_reg_info to i32), ptr @__kstrtab_freq_reg_info, ptr @__kstrtabns_freq_reg_info }, section "___ksymtab+freq_reg_info", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"country element\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"net/wireless/reg.c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bug\00", align 1
@__kstrtab_reg_initiator_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_reg_initiator_name = external dso_local constant [0 x i8], align 1
@__ksymtab_reg_initiator_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reg_initiator_name to i32), ptr @__kstrtab_reg_initiator_name, ptr @__kstrtabns_reg_initiator_name }, section "___ksymtab+reg_initiator_name", align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"wiphy should have REGULATORY_CUSTOM_REG\0A\00", align 1
@__kstrtab_wiphy_apply_custom_regulatory = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_apply_custom_regulatory = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_apply_custom_regulatory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_apply_custom_regulatory to i32), ptr @__kstrtab_wiphy_apply_custom_regulatory, ptr @__kstrtabns_wiphy_apply_custom_regulatory }, section "___ksymtab+wiphy_apply_custom_regulatory", align 4
@cfg80211_regdomain = dso_local global ptr null, align 4
@reg_indoor_lock = internal global %struct.spinlock zeroinitializer, align 4
@reg_is_indoor = internal unnamed_addr global i8 0, align 1
@reg_is_indoor_portid = internal unnamed_addr global i32 0, align 4
@__kstrtab_regulatory_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulatory_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_regulatory_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulatory_hint to i32), ptr @__kstrtab_regulatory_hint, ptr @__kstrtabns_regulatory_hint }, section "___ksymtab+regulatory_hint", align 4
@reg_pending_beacons_lock = internal global %struct.spinlock zeroinitializer, align 4
@reg_pending_beacons = internal global %struct.list_head { ptr @reg_pending_beacons, ptr @reg_pending_beacons }, align 4
@reg_beacon_list = internal global %struct.list_head { ptr @reg_beacon_list, ptr @reg_beacon_list }, align 4
@reg_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @reg_work, i64 4), ptr getelementptr (i8, ptr @reg_work, i64 4) }, ptr @reg_todo }, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid initiator %d\0A\00", align 1
@__kstrtab_regulatory_set_wiphy_regd = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulatory_set_wiphy_regd = external dso_local constant [0 x i8], align 1
@__ksymtab_regulatory_set_wiphy_regd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulatory_set_wiphy_regd to i32), ptr @__kstrtab_regulatory_set_wiphy_regd, ptr @__kstrtabns_regulatory_set_wiphy_regd }, section "___ksymtab+regulatory_set_wiphy_regd", align 4
@regulatory_set_wiphy_regd_sync.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_regulatory_set_wiphy_regd_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulatory_set_wiphy_regd_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_regulatory_set_wiphy_regd_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulatory_set_wiphy_regd_sync to i32), ptr @__kstrtab_regulatory_set_wiphy_regd_sync, ptr @__kstrtabns_regulatory_set_wiphy_regd_sync }, section "___ksymtab+regulatory_set_wiphy_regd_sync", align 4
@__kstrtab_regulatory_pre_cac_allowed = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulatory_pre_cac_allowed = external dso_local constant [0 x i8], align 1
@__ksymtab_regulatory_pre_cac_allowed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulatory_pre_cac_allowed to i32), ptr @__kstrtab_regulatory_pre_cac_allowed, ptr @__kstrtabns_regulatory_pre_cac_allowed }, section "___ksymtab+regulatory_pre_cac_allowed", align 4
@regulatory_propagate_dfs_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_rdev_list = external dso_local global %struct.list_head, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"regulatory\00", align 1
@cfg80211_world_regdom = internal unnamed_addr global ptr @world_regdom, align 4
@user_alpha2 = internal unnamed_addr global [2 x i8] zeroinitializer, align 1
@reg_check_chans = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @reg_check_chans, i64 4), ptr getelementptr (i8, ptr @reg_check_chans, i64 4) }, ptr @reg_check_chans_work }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@reg_requests_list = internal global %struct.list_head { ptr @reg_requests_list, ptr @reg_requests_list }, align 4
@cfg80211_user_regdom = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"\013cfg80211: Invalid regulatory WMM rule %u-%u in domain %c%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"regulatory.db.p7s\00", align 1
@builtin_regdb_keys = internal unnamed_addr global ptr null, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@last_request = internal global ptr @core_request_world, align 4
@core_request_world = internal global %struct.regulatory_request { %struct.callback_head zeroinitializer, i32 0, i32 0, i32 0, [3 x i8] c"00\00", i32 0, i8 0, i8 1, i32 0, %struct.list_head zeroinitializer }, align 4
@__freq_reg_info.bws = internal unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 8, i32 10, i32 16, i32 20], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@query_regdb_file.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@query_regdb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@reg_regdb_apply_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reg_regdb_apply_mutex, i64 12), ptr getelementptr (i8, ptr @reg_regdb_apply_mutex, i64 12) } }, align 4
@reg_regdb_apply_list = internal global %struct.list_head { ptr @reg_regdb_apply_list, ptr @reg_regdb_apply_list }, align 4
@reg_regdb_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @reg_regdb_work, i64 4), ptr getelementptr (i8, ptr @reg_regdb_work, i64 4) }, ptr @reg_regdb_apply }, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"\016cfg80211: failed to load regulatory.db\0A\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"\016cfg80211: loaded regulatory.db is malformed or signature is missing/invalid\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"COUNTRY=%c%c\00", align 1
@reg_crda_timeouts = internal unnamed_addr global i32 0, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@crda_timeout = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @crda_timeout, i64 4), ptr getelementptr (i8, ptr @crda_timeout, i64 4) }, ptr @crda_timeout_work }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@reg_process_hint_driver.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@reg_requests_lock = internal global %struct.spinlock zeroinitializer, align 4
@restore_regulatory_settings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@world_regdom = internal constant { %struct.callback_head, i32, [3 x i8], i32, [8 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 8, [3 x i8] c"00\00", i32 0, [8 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 20000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 2176, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2474000, i32 2494000, i32 20000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 129, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5170000, i32 5250000, i32 80000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 2176, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5250000, i32 5330000, i32 80000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 2192, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5490000, i32 5730000, i32 160000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 144, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5735000, i32 5835000, i32 80000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 57240000, i32 63720000, i32 2160000 }, %struct.ieee80211_power_rule zeroinitializer, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"Unexpected user alpha2: %c%c\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cfg80211_save_user_regdom.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"\013cfg80211: Invalid regulatory domain detected: %c%c\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%d KHz, %u KHz AUTO\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%d KHz\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%u s\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@reg_set_rd_driver.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@update_all_wiphy_regulatory.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"wiphy should have REGULATORY_WIPHY_SELF_MANAGED\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Invalid regulatory domain detected: %c%c\0A\00", align 1
@reg_process_self_managed_hint.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wiphy_all_share_dfs_chan_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@reg_process_self_managed_hints.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rdev_end_cac = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@.str.29 = private unnamed_addr constant [70 x i8] c"\013cfg80211: kobject_uevent_env() was unable to call CRDA during init\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c".builtin_regdb_keys\00", align 1
@.str.31 = private unnamed_addr constant [76 x i8] c"\015cfg80211: Loading compiled-in X.509 certificates for regulatory database\0A\00", align 1
@shipped_regdb_certs = external dso_local constant [0 x i8], align 1
@shipped_regdb_certs_len = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"asymmetric\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"\013cfg80211: Problem loading in-kernel X.509 certificate (%ld)\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"\015cfg80211: Loaded X.509 cert '%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"\013cfg80211: Problem parsing in-kernel X.509 certificate list\0A\00", align 1
@reg_leave_invalid_chans.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rdev_get_channel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_chandef = external dso_local global %struct.tracepoint, align 4
@reset_regdomains.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_ieee80211_regdom693, ptr @__UNIQUE_ID_ieee80211_regdomtype692, ptr @__ksymtab_freq_reg_info, ptr @__ksymtab_get_wiphy_regdom, ptr @__ksymtab_reg_initiator_name, ptr @__ksymtab_reg_query_regdb_wmm, ptr @__ksymtab_regulatory_hint, ptr @__ksymtab_regulatory_pre_cac_allowed, ptr @__ksymtab_regulatory_set_wiphy_regd, ptr @__ksymtab_regulatory_set_wiphy_regd_sync, ptr @__ksymtab_wiphy_apply_custom_regulatory, ptr @__param_ieee80211_regdom], section "llvm.metadata"
@switch.table.reg_initiator_name = private unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @get_wiphy_regdom(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %3 = load volatile ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reg_get_dfs_region(ptr noundef %0) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %2 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %3 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %8, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %10, %6, %1
  %19 = phi i32 [ %17, %15 ], [ %4, %6 ], [ %4, %1 ], [ %4, %10 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_world_regdom(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 48
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi i1 [ false, %1 ], [ false, %3 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reg_query_regdb_wmm(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = load ptr, ptr @regdb, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %3
  %7 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = ptrtoint ptr %4 to i32
  br label %78

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwdb_header, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.fwdb_country, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %78, label %15

15:                                               ; preds = %10
  %16 = icmp ne ptr %0, null
  %17 = getelementptr i8, ptr %0, i32 1
  br label %18

18:                                               ; preds = %73, %15
  %19 = phi i16 [ %13, %15 ], [ %76, %73 ]
  %20 = phi ptr [ %11, %15 ], [ %74, %73 ]
  %21 = icmp ne ptr %20, null
  %22 = and i1 %16, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %18
  %24 = load i8, ptr %0, align 1
  %25 = load i8, ptr %20, align 1
  %26 = icmp eq i8 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load i8, ptr %17, align 1
  %29 = getelementptr i8, ptr %20, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = tail call i16 @llvm.bswap.i16(i16 %19) #20
  %34 = zext i16 %33 to i32
  %35 = shl nuw nsw i32 %34, 2
  %36 = getelementptr i8, ptr %4, i32 %35
  %37 = getelementptr inbounds %struct.fwdb_collection, ptr %36, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %32
  %42 = load i8, ptr %36, align 4
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  %45 = and i32 %44, 510
  %46 = getelementptr i8, ptr %36, i32 %45
  br label %47

47:                                               ; preds = %70, %41
  %48 = phi i32 [ 0, %41 ], [ %71, %70 ]
  %49 = getelementptr i16, ptr %46, i32 %48
  %50 = load i16, ptr %49, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #20
  %52 = zext i16 %51 to i32
  %53 = shl nuw nsw i32 %52, 2
  %54 = getelementptr i8, ptr %4, i32 %53
  %55 = load i8, ptr %54, align 4
  %56 = icmp ult i8 %55, 20
  br i1 %56, label %70, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.fwdb_rule, ptr %54, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #20
  %61 = udiv i32 %60, 1000
  %62 = icmp ugt i32 %61, %1
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.fwdb_rule, ptr %54, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #20
  %67 = udiv i32 %66, 1000
  %68 = icmp ult i32 %67, %1
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call fastcc void @set_wmm_rule(ptr noundef nonnull %4, ptr noundef nonnull %20, ptr noundef %54, ptr noundef %2) #20
  br label %78

70:                                               ; preds = %63, %57, %47
  %71 = add nuw nsw i32 %48, 1
  %72 = icmp eq i32 %71, %39
  br i1 %72, label %78, label %47

73:                                               ; preds = %27, %23, %18
  %74 = getelementptr %struct.fwdb_country, ptr %20, i32 1
  %75 = getelementptr %struct.fwdb_country, ptr %20, i32 1, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %18

78:                                               ; preds = %73, %70, %69, %32, %10, %8, %3
  %79 = phi i32 [ %9, %8 ], [ -61, %3 ], [ 0, %69 ], [ -61, %32 ], [ -61, %10 ], [ -61, %70 ], [ -61, %73 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reg_reload_regdb() local_unnamed_addr #2 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  store ptr null, ptr %1, align 4, !annotation !10
  %2 = load ptr, ptr @reg_pdev, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = call i32 @request_firmware(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = call fastcc zeroext i1 @valid_regdb(ptr noundef %9, i32 noundef %10)
  br i1 %11, label %12, label %42

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %13, align 4
  %17 = call ptr @kmemdup(ptr noundef %15, i32 noundef %16, i32 noundef 3264) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %12
  call void @rtnl_lock() #20
  %20 = load ptr, ptr @regdb, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %20) #20
  br label %25

25:                                               ; preds = %24, %19
  store ptr %17, ptr @regdb, align 4
  %26 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 44) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 1
  store i32 -1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %26, i32 0, i32 2
  %33 = load i8, ptr %32, align 4
  %34 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 4
  store i8 %33, ptr %34, align 4
  %35 = getelementptr %struct.ieee80211_regdomain, ptr %26, i32 0, i32 2, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr %struct.regulatory_request, ptr %28, i32 0, i32 4, i32 1
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 2
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 3
  store i32 0, ptr %39, align 8
  call fastcc void @reg_process_hint(ptr noundef nonnull %28)
  br label %40

40:                                               ; preds = %30, %25
  %41 = phi i32 [ 0, %30 ], [ -12, %25 ]
  call void @rtnl_unlock() #20
  br label %42

42:                                               ; preds = %40, %12, %6
  %43 = phi i32 [ %41, %40 ], [ -61, %6 ], [ -12, %12 ]
  %44 = load ptr, ptr %1, align 4
  call void @release_firmware(ptr noundef %44) #20
  br label %45

45:                                               ; preds = %42, %0
  %46 = phi i32 [ %43, %42 ], [ %4, %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @valid_regdb(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = icmp ult i32 %1, 8
  br i1 %4, label %94, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, 1111770962
  br i1 %7, label %8, label %94

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fwdb_header, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 335544320
  br i1 %11, label %12, label %94

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr null, ptr %3, align 4, !annotation !10
  %13 = load ptr, ptr @reg_pdev, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %15 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %94

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %19, align 4
  %23 = load ptr, ptr @builtin_regdb_keys, align 4
  %24 = call i32 @verify_pkcs7_signature(ptr noundef %0, i32 noundef %1, ptr noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef 5, ptr noundef null, ptr noundef null) #20
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %26) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br i1 %25, label %27, label %94

27:                                               ; preds = %18
  %28 = getelementptr i8, ptr %0, i32 %1
  %29 = getelementptr %struct.fwdb_header, ptr %0, i32 1, i32 1
  %30 = icmp ugt ptr %29, %28
  br i1 %30, label %94, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fwdb_header, ptr %0, i32 0, i32 2
  br label %33

33:                                               ; preds = %91, %31
  %34 = phi ptr [ %92, %91 ], [ %29, %31 ]
  %35 = phi ptr [ %34, %91 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.fwdb_country, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %94, label %39

39:                                               ; preds = %33
  %40 = call i16 @llvm.bswap.i16(i16 %37) #20
  %41 = zext i16 %40 to i32
  %42 = shl nuw nsw i32 %41, 2
  %43 = getelementptr i8, ptr %0, i32 %42
  %44 = getelementptr i8, ptr %43, i32 2
  %45 = icmp ugt ptr %44, %28
  br i1 %45, label %94, label %46

46:                                               ; preds = %39
  %47 = load i8, ptr %43, align 4
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, 1
  %50 = and i32 %49, 510
  %51 = getelementptr i8, ptr %43, i32 %50
  %52 = getelementptr inbounds %struct.fwdb_collection, ptr %43, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 1
  %56 = getelementptr i8, ptr %51, i32 %55
  %57 = icmp ugt ptr %56, %28
  %58 = icmp ult i8 %47, 3
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %94, label %60

60:                                               ; preds = %46
  %61 = icmp eq i8 %53, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %88, %60
  %63 = phi i32 [ %89, %88 ], [ 0, %60 ]
  %64 = getelementptr i16, ptr %51, i32 %63
  %65 = load i16, ptr %64, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65) #20
  %67 = zext i16 %66 to i32
  %68 = shl nuw nsw i32 %67, 2
  %69 = getelementptr i8, ptr %0, i32 %68
  %70 = getelementptr i8, ptr %69, i32 1
  %71 = icmp ugt ptr %70, %28
  br i1 %71, label %94, label %72

72:                                               ; preds = %62
  %73 = load i8, ptr %69, align 4
  %74 = icmp ult i8 %73, 16
  br i1 %74, label %94, label %75

75:                                               ; preds = %72
  %76 = icmp ugt i8 %73, 19
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.fwdb_rule, ptr %69, i32 0, i32 7
  %79 = load i16, ptr %78, align 2
  %80 = call i16 @llvm.bswap.i16(i16 %79) #20
  %81 = zext i16 %80 to i32
  %82 = shl nuw nsw i32 %81, 2
  %83 = add nuw nsw i32 %82, 32
  %84 = icmp ugt i32 %83, %1
  br i1 %84, label %94, label %85

85:                                               ; preds = %77
  %86 = getelementptr i8, ptr %0, i32 %82
  %87 = call fastcc zeroext i1 @valid_wmm(ptr noundef %86) #20
  br i1 %87, label %88, label %94

88:                                               ; preds = %85, %75
  %89 = add nuw nsw i32 %63, 1
  %90 = icmp eq i32 %89, %54
  br i1 %90, label %91, label %62

91:                                               ; preds = %88, %60
  %92 = getelementptr %struct.fwdb_country, ptr %34, i32 1
  %93 = icmp ugt ptr %92, %28
  br i1 %93, label %94, label %33

94:                                               ; preds = %91, %85, %77, %72, %62, %46, %39, %33, %27, %18, %17, %8, %5, %2
  %95 = phi i1 [ false, %2 ], [ false, %5 ], [ false, %8 ], [ false, %18 ], [ false, %17 ], [ true, %27 ], [ false, %85 ], [ false, %62 ], [ false, %72 ], [ false, %77 ], [ true, %33 ], [ true, %91 ], [ false, %39 ], [ false, %46 ]
  ret i1 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reg_process_hint(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @wiphy_idx_to_wiphy(i32 noundef %5) #20
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  switch i32 %3, label %306 [
    i32 0, label %11
    i32 1, label %25
    i32 2, label %97
    i32 3, label %208
  ]

11:                                               ; preds = %9
  %12 = tail call fastcc zeroext i1 @reg_query_database(ptr noundef %0) #20
  br i1 %12, label %13, label %315

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 6
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 7
  store i8 0, ptr %15, align 1
  %16 = load volatile ptr, ptr @last_request, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %321, label %18

18:                                               ; preds = %13
  %19 = load volatile ptr, ptr @last_request, align 4
  %20 = icmp ne ptr %19, @core_request_world
  %21 = icmp ne ptr %19, null
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @kvfree_call_rcu(ptr noundef nonnull %19, ptr noundef null) #20
  br label %24

24:                                               ; preds = %23, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr %0, ptr @last_request, align 4
  br label %321

25:                                               ; preds = %9
  %26 = load volatile ptr, ptr @last_request, align 4
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %315, label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.regulatory_request, ptr %26, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %44 [
    i32 1, label %36
    i32 3, label %76
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.regulatory_request, ptr %26, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %315, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.regulatory_request, ptr %26, i32 0, i32 6
  %42 = load i8, ptr %41, align 4, !range !12
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %315

44:                                               ; preds = %33
  %45 = icmp ult i32 %35, 3
  br i1 %45, label %46, label %61

46:                                               ; preds = %44, %40
  %47 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %315, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.regulatory_request, ptr %26, i32 0, i32 4
  %51 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %47, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = load i8, ptr %50, align 1
  %54 = icmp eq i8 %52, %53
  br i1 %54, label %55, label %315

55:                                               ; preds = %49
  %56 = getelementptr %struct.ieee80211_regdomain, ptr %47, i32 0, i32 2, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr %struct.regulatory_request, ptr %26, i32 0, i32 4, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %57, %59
  br i1 %60, label %61, label %315

61:                                               ; preds = %55, %44
  %62 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %66 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %62, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = load i8, ptr %65, align 1
  %69 = icmp eq i8 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr %struct.ieee80211_regdomain, ptr %62, i32 0, i32 2, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %315, label %76

76:                                               ; preds = %70, %64, %61, %33
  %77 = phi i1 [ false, %61 ], [ false, %64 ], [ false, %70 ], [ true, %33 ]
  %78 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 6
  %79 = zext i1 %77 to i8
  store i8 %79, ptr %78, align 4
  %80 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 7
  store i8 0, ptr %80, align 1
  %81 = tail call fastcc zeroext i1 @reg_query_database(ptr noundef %0) #20
  br i1 %81, label %82, label %315

82:                                               ; preds = %76
  %83 = load volatile ptr, ptr @last_request, align 4
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load volatile ptr, ptr @last_request, align 4
  %87 = icmp ne ptr %86, @core_request_world
  %88 = icmp ne ptr %86, null
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  tail call void @kvfree_call_rcu(ptr noundef nonnull %86, ptr noundef null) #20
  br label %91

91:                                               ; preds = %90, %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr %0, ptr @last_request, align 4
  br label %92

92:                                               ; preds = %91, %82
  %93 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %94 = load i8, ptr %93, align 4
  store i8 %94, ptr @user_alpha2, align 1
  %95 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %96 = load i8, ptr %95, align 1
  store i8 %96, ptr getelementptr inbounds ([2 x i8], ptr @user_alpha2, i32 0, i32 1), align 1
  br label %321

97:                                               ; preds = %9
  %98 = icmp eq ptr %10, null
  br i1 %98, label %315, label %99

99:                                               ; preds = %97
  %100 = load volatile ptr, ptr @last_request, align 4
  %101 = getelementptr inbounds %struct.regulatory_request, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  switch i32 %102, label %133 [
    i32 0, label %103
    i32 2, label %118
  ]

103:                                              ; preds = %99
  %104 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %168, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %108 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %104, i32 0, i32 2
  %109 = load i8, ptr %108, align 1
  %110 = load i8, ptr %107, align 1
  %111 = icmp eq i8 %109, %110
  br i1 %111, label %112, label %168

112:                                              ; preds = %106
  %113 = getelementptr %struct.ieee80211_regdomain, ptr %104, i32 0, i32 2, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %114, %116
  br i1 %117, label %134, label %168

118:                                              ; preds = %99
  %119 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %123 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %119, i32 0, i32 2
  %124 = load i8, ptr %123, align 1
  %125 = load i8, ptr %122, align 1
  %126 = icmp eq i8 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = getelementptr %struct.ieee80211_regdomain, ptr %119, i32 0, i32 2, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %129, %131
  br i1 %132, label %134, label %133

133:                                              ; preds = %127, %121, %118, %99
  br label %134

134:                                              ; preds = %133, %127, %112
  %135 = phi i1 [ true, %133 ], [ false, %127 ], [ false, %112 ]
  %136 = phi i1 [ false, %133 ], [ true, %127 ], [ true, %112 ]
  %137 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %138 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %139, i32 96) #20
  %141 = extractvalue { i32, i1 } %140, 1
  %142 = extractvalue { i32, i1 } %140, 0
  %143 = or i32 %142, 20
  %144 = select i1 %141, i32 -1, i32 %143
  %145 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %144, i32 noundef 3520) #22
  %146 = icmp eq ptr %145, null
  br i1 %146, label %315, label %147

147:                                              ; preds = %134
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %145, ptr noundef align 4 dereferenceable(20) %137, i32 20, i1 false) #20
  %148 = load i32, ptr %138, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = getelementptr i8, ptr %145, i32 20
  %152 = getelementptr i8, ptr %137, i32 20
  %153 = mul nuw i32 %148, 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %151, ptr align 4 %152, i32 %153, i1 false) #20
  br label %154

154:                                              ; preds = %150, %147
  %155 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %315, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 55
  %158 = load volatile ptr, ptr %157, align 4
  %159 = tail call i32 @rtnl_is_locked() #20
  %160 = icmp eq i32 %159, 0
  %161 = load i1, ptr @reg_process_hint_driver.__already_done, align 1
  %162 = xor i1 %161, true
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %165, !prof !13

164:                                              ; preds = %156
  store i1 true, ptr @reg_process_hint_driver.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2791, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 2791) #20
  br label %165

165:                                              ; preds = %164, %156
  tail call void @mutex_lock(ptr noundef nonnull %10) #20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  store volatile ptr %145, ptr %157, align 4
  tail call void @mutex_unlock(ptr noundef nonnull %10) #20
  %166 = icmp eq ptr %158, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  tail call void @kvfree_call_rcu(ptr noundef nonnull %158, ptr noundef null) #20
  br label %171

168:                                              ; preds = %112, %106, %103
  %169 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 6
  store i8 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 7
  store i8 0, ptr %170, align 1
  br label %196

171:                                              ; preds = %167, %165
  %172 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 6
  %173 = zext i1 %135 to i8
  store i8 %173, ptr %172, align 4
  %174 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 7
  store i8 0, ptr %174, align 1
  br i1 %136, label %175, label %196

175:                                              ; preds = %171
  tail call void @nl80211_common_reg_change_event(i32 noundef 36, ptr noundef %0) #20
  %176 = load volatile ptr, ptr @last_request, align 4
  %177 = icmp eq ptr %176, %0
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = load volatile ptr, ptr @last_request, align 4
  %180 = icmp ne ptr %179, @core_request_world
  %181 = icmp ne ptr %179, null
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  tail call void @kvfree_call_rcu(ptr noundef nonnull %179, ptr noundef null) #20
  br label %184

184:                                              ; preds = %183, %178
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr %0, ptr @last_request, align 4
  br label %185

185:                                              ; preds = %184, %175
  %186 = load volatile ptr, ptr @last_request, align 4
  %187 = getelementptr inbounds %struct.regulatory_request, ptr %186, i32 0, i32 7
  store i8 1, ptr %187, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %188 = load volatile ptr, ptr @reg_requests_list, align 4
  %189 = icmp eq ptr %188, @reg_requests_list
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %190 = load i16, ptr @reg_requests_lock, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %192 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @crda_timeout) #20
  br i1 %189, label %307, label %193

193:                                              ; preds = %185
  %194 = load ptr, ptr @system_wq, align 4
  %195 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %194, ptr noundef nonnull @reg_work) #20
  br label %307

196:                                              ; preds = %171, %168
  %197 = tail call fastcc zeroext i1 @reg_query_database(ptr noundef %0) #20
  br i1 %197, label %198, label %315

198:                                              ; preds = %196
  %199 = load volatile ptr, ptr @last_request, align 4
  %200 = icmp eq ptr %199, %0
  br i1 %200, label %321, label %201

201:                                              ; preds = %198
  %202 = load volatile ptr, ptr @last_request, align 4
  %203 = icmp ne ptr %202, @core_request_world
  %204 = icmp ne ptr %202, null
  %205 = and i1 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  tail call void @kvfree_call_rcu(ptr noundef nonnull %202, ptr noundef null) #20
  br label %207

207:                                              ; preds = %206, %201
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr %0, ptr @last_request, align 4
  br label %321

208:                                              ; preds = %9
  %209 = icmp eq ptr %10, null
  br i1 %209, label %315, label %210

210:                                              ; preds = %208
  %211 = load volatile ptr, ptr @last_request, align 4
  %212 = getelementptr inbounds %struct.regulatory_request, ptr %211, i32 0, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %234

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.regulatory_request, ptr %211, i32 0, i32 3
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %234

219:                                              ; preds = %215
  %220 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %315, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %224 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %220, i32 0, i32 2
  %225 = load i8, ptr %224, align 1
  %226 = load i8, ptr %223, align 1
  %227 = icmp eq i8 %225, %226
  br i1 %227, label %228, label %315

228:                                              ; preds = %222
  %229 = getelementptr %struct.ieee80211_regdomain, ptr %220, i32 0, i32 2, i32 1
  %230 = load i8, ptr %229, align 1
  %231 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %232 = load i8, ptr %231, align 1
  %233 = icmp eq i8 %230, %232
  br i1 %233, label %286, label %315

234:                                              ; preds = %215, %210
  %235 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 12
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 16
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %315

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i32
  %243 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %242
  %244 = load i8, ptr %243, align 1
  %245 = and i8 %244, 3
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %292, label %247, !prof !19

247:                                              ; preds = %239
  %248 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %250
  %252 = load i8, ptr %251, align 1
  %253 = and i8 %252, 3
  %254 = icmp ne i8 %253, 0
  %255 = icmp eq i32 %213, 3
  %256 = select i1 %254, i1 %255, i1 false
  br i1 %256, label %257, label %292, !prof !20

257:                                              ; preds = %247
  %258 = getelementptr inbounds %struct.regulatory_request, ptr %211, i32 0, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = tail call ptr @wiphy_idx_to_wiphy(i32 noundef %259) #20
  %261 = icmp eq ptr %260, %10
  %262 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %263 = icmp eq ptr %262, null
  br i1 %261, label %275, label %264

264:                                              ; preds = %257
  br i1 %263, label %315, label %265

265:                                              ; preds = %264
  %266 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %262, i32 0, i32 2
  %267 = load i8, ptr %266, align 1
  %268 = load i8, ptr %240, align 1
  %269 = icmp eq i8 %267, %268
  br i1 %269, label %270, label %315

270:                                              ; preds = %265
  %271 = getelementptr %struct.ieee80211_regdomain, ptr %262, i32 0, i32 2, i32 1
  %272 = load i8, ptr %271, align 1
  %273 = load i8, ptr %248, align 1
  %274 = icmp eq i8 %272, %273
  br i1 %274, label %286, label %315

275:                                              ; preds = %257
  br i1 %263, label %292, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %262, i32 0, i32 2
  %278 = load i8, ptr %277, align 1
  %279 = load i8, ptr %240, align 1
  %280 = icmp eq i8 %278, %279
  br i1 %280, label %281, label %292

281:                                              ; preds = %276
  %282 = getelementptr %struct.ieee80211_regdomain, ptr %262, i32 0, i32 2, i32 1
  %283 = load i8, ptr %282, align 1
  %284 = load i8, ptr %248, align 1
  %285 = icmp eq i8 %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %281, %270, %228
  %287 = icmp eq ptr %0, @core_request_world
  br i1 %287, label %307, label %288

288:                                              ; preds = %286
  %289 = load volatile ptr, ptr @last_request, align 4
  %290 = icmp eq ptr %289, %0
  br i1 %290, label %307, label %291

291:                                              ; preds = %288
  tail call void @kfree(ptr noundef %0) #20
  br label %307

292:                                              ; preds = %281, %276, %275, %247, %239
  %293 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 6
  store i8 0, ptr %293, align 4
  %294 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 7
  store i8 0, ptr %294, align 1
  %295 = tail call fastcc zeroext i1 @reg_query_database(ptr noundef %0) #20
  br i1 %295, label %296, label %315

296:                                              ; preds = %292
  %297 = load volatile ptr, ptr @last_request, align 4
  %298 = icmp eq ptr %297, %0
  br i1 %298, label %321, label %299

299:                                              ; preds = %296
  %300 = load volatile ptr, ptr @last_request, align 4
  %301 = icmp ne ptr %300, @core_request_world
  %302 = icmp ne ptr %300, null
  %303 = and i1 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  tail call void @kvfree_call_rcu(ptr noundef nonnull %300, ptr noundef null) #20
  br label %305

305:                                              ; preds = %304, %299
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr %0, ptr @last_request, align 4
  br label %321

306:                                              ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3020, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %3) #20
  br label %315

307:                                              ; preds = %291, %288, %286, %193, %185
  %308 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 12
  %309 = load i32, ptr %308, align 4
  %310 = and i32 %309, 2
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %321, label %312

312:                                              ; preds = %307
  tail call fastcc void @wiphy_update_regulatory(ptr noundef nonnull %10, i32 noundef %3)
  tail call fastcc void @wiphy_all_share_dfs_chan_state(ptr noundef nonnull %10)
  %313 = load ptr, ptr @system_power_efficient_wq, align 4
  %314 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %313, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  br label %321

315:                                              ; preds = %306, %292, %270, %265, %264, %234, %228, %222, %219, %208, %196, %154, %134, %97, %76, %70, %55, %49, %46, %40, %36, %29, %11
  %316 = icmp eq ptr %0, @core_request_world
  br i1 %316, label %321, label %317

317:                                              ; preds = %315
  %318 = load volatile ptr, ptr @last_request, align 4
  %319 = icmp eq ptr %318, %0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  tail call void @kfree(ptr noundef %0) #20
  br label %321

321:                                              ; preds = %320, %317, %315, %312, %307, %305, %296, %207, %198, %92, %24, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @reg_is_valid_request(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = load volatile ptr, ptr @last_request, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 7
  %6 = load i8, ptr %5, align 1, !range !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 4
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %0, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i8, ptr %9, align 1
  %15 = load i8, ptr %0, align 1
  %16 = icmp eq i8 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr %struct.regulatory_request, ptr %2, i32 0, i32 4, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr i8, ptr %0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %19, %21
  br label %23

23:                                               ; preds = %17, %13, %8, %4, %1
  %24 = phi i1 [ false, %4 ], [ false, %1 ], [ false, %8 ], [ false, %13 ], [ %22, %17 ]
  ret i1 %24
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @reg_get_max_bandwidth(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %7 = icmp uge i32 %6, %4
  %8 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %6
  %9 = icmp eq ptr %8, %1
  %10 = or i1 %7, %9
  %11 = add nuw i32 %6, 1
  br i1 %10, label %12, label %5

12:                                               ; preds = %5
  %13 = icmp eq i32 %6, %4
  br i1 %13, label %48, label %14

14:                                               ; preds = %20, %12
  %15 = phi ptr [ %22, %20 ], [ %1, %12 ]
  %16 = phi i32 [ %21, %20 ], [ %6, %12 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 4
  br label %27

20:                                               ; preds = %14
  %21 = add i32 %16, -1
  %22 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %21
  %23 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %15, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %14

27:                                               ; preds = %20, %18
  %28 = phi i32 [ %19, %18 ], [ %25, %20 ]
  %29 = add i32 %4, -1
  %30 = tail call i32 @llvm.umax.i32(i32 %6, i32 %29) #20
  br label %31

31:                                               ; preds = %38, %27
  %32 = phi ptr [ %1, %27 ], [ %40, %38 ]
  %33 = phi i32 [ %6, %27 ], [ %39, %38 ]
  %34 = icmp eq i32 %33, %30
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %32, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  br label %45

38:                                               ; preds = %31
  %39 = add i32 %33, 1
  %40 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %32, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %41, %43
  br i1 %44, label %45, label %31

45:                                               ; preds = %38, %35
  %46 = phi i32 [ %37, %35 ], [ %43, %38 ]
  %47 = sub i32 %46, %28
  br label %48

48:                                               ; preds = %45, %12
  %49 = phi i32 [ %47, %45 ], [ 0, %12 ]
  %50 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %1, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  %54 = tail call i32 @llvm.umin.i32(i32 %49, i32 80000)
  %55 = select i1 %53, i32 %49, i32 %54
  %56 = and i32 %51, 32768
  %57 = icmp eq i32 %56, 0
  %58 = tail call i32 @llvm.umin.i32(i32 %55, i32 40000)
  %59 = select i1 %57, i32 %55, i32 %58
  %60 = and i32 %51, 24576
  %61 = icmp eq i32 %60, 24576
  %62 = tail call i32 @llvm.umin.i32(i32 %59, i32 20000)
  %63 = select i1 %61, i32 %62, i32 %59
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @freq_reg_info(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp ult i32 %1, 1000000
  %4 = select i1 %3, i32 1000, i32 20000
  %5 = load volatile ptr, ptr @last_request, align 4
  %6 = getelementptr inbounds %struct.regulatory_request, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 3, label %12
    i32 1, label %12
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2, %2
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi ptr [ @cfg80211_regdomain, %12 ], [ %9, %8 ]
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %15, i32 0, i32 1
  %18 = icmp ugt i32 %1, 45000000
  %19 = select i1 %18, i32 20000000, i32 2000000
  br label %20

20:                                               ; preds = %53, %13
  %21 = phi i32 [ 20000, %13 ], [ %58, %53 ]
  %22 = phi i32 [ 8, %13 ], [ %55, %53 ]
  br i1 %16, label %53, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %17, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %30

26:                                               ; preds = %45
  %27 = add nuw i32 %32, 1
  %28 = load i32, ptr %17, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26, %23
  %31 = phi i1 [ %46, %26 ], [ false, %23 ]
  %32 = phi i32 [ %27, %26 ], [ 0, %23 ]
  %33 = getelementptr %struct.ieee80211_regdomain, ptr %15, i32 0, i32 4, i32 %32
  br i1 %31, label %45, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %33, align 4
  %36 = sub i32 %1, %35
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 false) #20
  %38 = icmp ugt i32 %37, %19
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %33, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %1, %41
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 false) #20
  %44 = icmp ule i32 %43, %19
  br label %45

45:                                               ; preds = %39, %34, %30
  %46 = phi i1 [ true, %30 ], [ true, %34 ], [ %44, %39 ]
  %47 = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %33, i32 noundef %1, i32 noundef %21) #20
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %51, label %26

49:                                               ; preds = %26
  %50 = select i1 %46, ptr inttoptr (i32 -22 to ptr), ptr inttoptr (i32 -34 to ptr)
  br label %53

51:                                               ; preds = %45
  %52 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %60

53:                                               ; preds = %51, %49, %23, %20
  %54 = phi ptr [ %33, %51 ], [ %50, %49 ], [ inttoptr (i32 -34 to ptr), %23 ], [ inttoptr (i32 -22 to ptr), %20 ]
  %55 = add i32 %22, -1
  %56 = getelementptr [9 x i32], ptr @__freq_reg_info.bws, i32 0, i32 %22
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, 1000
  %59 = icmp ult i32 %58, %4
  br i1 %59, label %60, label %20

60:                                               ; preds = %53, %51
  %61 = phi ptr [ %54, %53 ], [ %33, %51 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local nonnull ptr @reg_initiator_name(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 4
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1694, i32 noundef 9, ptr noundef null) #20
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [4 x ptr], ptr @switch.table.reg_initiator_name, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi ptr [ @.str.6, %3 ], [ %6, %4 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @reg_last_request_cell_base() local_unnamed_addr #5 {
  %1 = load volatile ptr, ptr @last_request, align 4
  %2 = getelementptr inbounds %struct.regulatory_request, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.regulatory_request, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ %8, %5 ], [ false, %0 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_apply_custom_regulatory(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !13

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2602, i32 noundef 9, ptr noundef nonnull @.str.7) #20
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %4, %2 ]
  %11 = or i32 %10, 1
  store i32 %11, ptr %3, align 4
  %12 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 0
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @handle_band_custom(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1)
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 1, %15 ], [ 0, %9 ]
  %18 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  tail call fastcc void @handle_band_custom(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %1)
  %22 = add nuw nsw i32 %17, 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %22, %21 ], [ %17, %16 ]
  %25 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  tail call fastcc void @handle_band_custom(ptr noundef %0, ptr noundef nonnull %26, ptr noundef %1)
  %29 = add nuw nsw i32 %24, 1
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %29, %28 ], [ %24, %23 ]
  %32 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  tail call fastcc void @handle_band_custom(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %1)
  %36 = add nuw nsw i32 %31, 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %36, %35 ], [ %31, %30 ]
  %39 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  tail call fastcc void @handle_band_custom(ptr noundef %0, ptr noundef nonnull %40, ptr noundef %1)
  %43 = add nuw nsw i32 %38, 1
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ %43, %42 ], [ %38, %37 ]
  %46 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call fastcc void @handle_band_custom(ptr noundef %0, ptr noundef nonnull %47, ptr noundef %1)
  br label %53

50:                                               ; preds = %44
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %52, label %53, !prof !13

52:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2616, i32 noundef 9, ptr noundef null) #20
  br label %53

53:                                               ; preds = %52, %50, %49
  %54 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 96) #20
  %57 = extractvalue { i32, i1 } %56, 1
  %58 = extractvalue { i32, i1 } %56, 0
  %59 = or i32 %58, 20
  %60 = select i1 %57, i32 -1, i32 %59
  %61 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #22
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %61, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false) #20
  %64 = load i32, ptr %54, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %61, i32 20
  %68 = getelementptr i8, ptr %1, i32 20
  %69 = mul nuw i32 %64, 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %67, ptr align 4 %68, i32 %69, i1 false) #20
  br label %70

70:                                               ; preds = %66, %63
  %71 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %78, label %72

72:                                               ; preds = %70
  tail call void @rtnl_lock() #20
  tail call void @mutex_lock(ptr noundef %0) #20
  %73 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %74 = load volatile ptr, ptr %73, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !21
  store volatile ptr %61, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @kvfree_call_rcu(ptr noundef nonnull %74, ptr noundef null) #20
  br label %77

77:                                               ; preds = %76, %72
  tail call void @mutex_unlock(ptr noundef %0) #20
  tail call void @rtnl_unlock() #20
  br label %78

78:                                               ; preds = %77, %70, %53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @handle_band_custom(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %171, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %171, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %2, null
  %11 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  br label %13

13:                                               ; preds = %167, %9
  %14 = phi i32 [ 0, %9 ], [ %168, %167 ]
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14
  %17 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, 1000
  %20 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add i32 %19, %22
  %24 = icmp ugt i32 %23, 45000000
  %25 = select i1 %24, i32 20000000, i32 2000000
  br i1 %10, label %56, label %26

26:                                               ; preds = %13
  %27 = load i32, ptr %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %33

29:                                               ; preds = %48
  %30 = add nuw i32 %35, 1
  %31 = load i32, ptr %11, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29, %26
  %34 = phi i1 [ %49, %29 ], [ false, %26 ]
  %35 = phi i32 [ %30, %29 ], [ 0, %26 ]
  %36 = getelementptr %struct.ieee80211_regdomain, ptr %2, i32 0, i32 4, i32 %35
  br i1 %34, label %48, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %36, align 4
  %39 = sub i32 %23, %38
  %40 = tail call i32 @llvm.abs.i32(i32 %39, i1 false) #20
  %41 = icmp ugt i32 %40, %25
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %36, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %23, %44
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 false) #20
  %47 = icmp ule i32 %46, %25
  br label %48

48:                                               ; preds = %42, %37, %33
  %49 = phi i1 [ true, %33 ], [ true, %37 ], [ %47, %42 ]
  %50 = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %36, i32 noundef %23, i32 noundef 20000) #20
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %29

52:                                               ; preds = %48
  %53 = icmp eq ptr %36, null
  %54 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52, %29, %26, %13
  %57 = load i32, ptr %12, align 4
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 4
  br label %167

64:                                               ; preds = %56
  %65 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 4
  store i32 %67, ptr %68, align 4
  br label %167

69:                                               ; preds = %52
  %70 = getelementptr %struct.ieee80211_regdomain, ptr %2, i32 0, i32 4, i32 %35, i32 1
  %71 = tail call fastcc i32 @reg_rule_to_chan_bw_flags(ptr noundef nonnull %2, ptr noundef nonnull %36, ptr noundef %16) #20
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 13
  store i32 %72, ptr %73, align 4
  %74 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 12
  store i32 0, ptr %74, align 4
  %75 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 8
  store i8 0, ptr %75, align 4
  %76 = load i32, ptr %12, align 4
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %69
  %80 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr %struct.ieee80211_regdomain, ptr %2, i32 0, i32 4, i32 %35, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 384
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 2
  %87 = lshr i32 %83, 1
  %88 = and i32 %87, 8
  %89 = shl i32 %83, 6
  %90 = and i32 %89, 64
  %91 = and i32 %89, 512
  %92 = lshr i32 %83, 2
  %93 = and i32 %92, 1024
  %94 = lshr i32 %83, 8
  %95 = and i32 %94, 32
  %96 = lshr i32 %83, 10
  %97 = and i32 %96, 16
  %98 = and i32 %94, 128
  %99 = and i32 %94, 256
  %100 = lshr i32 %83, 4
  %101 = and i32 %100, 8192
  %102 = or i32 %81, %71
  %103 = or i32 %102, %88
  %104 = or i32 %103, %90
  %105 = or i32 %104, %91
  %106 = or i32 %105, %93
  %107 = or i32 %106, %95
  %108 = or i32 %107, %97
  %109 = or i32 %108, %98
  %110 = or i32 %109, %99
  %111 = or i32 %110, %101
  %112 = or i32 %111, %86
  %113 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 4
  store i32 %112, ptr %113, align 4
  br label %148

114:                                              ; preds = %69
  %115 = getelementptr %struct.ieee80211_regdomain, ptr %2, i32 0, i32 4, i32 %35, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 384
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 2
  %120 = lshr i32 %116, 1
  %121 = and i32 %120, 8
  %122 = shl i32 %116, 6
  %123 = and i32 %122, 64
  %124 = and i32 %122, 512
  %125 = lshr i32 %116, 2
  %126 = and i32 %125, 1024
  %127 = lshr i32 %116, 8
  %128 = and i32 %127, 32
  %129 = lshr i32 %116, 10
  %130 = and i32 %129, 16
  %131 = and i32 %127, 128
  %132 = and i32 %127, 256
  %133 = lshr i32 %116, 4
  %134 = and i32 %133, 8192
  %135 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %136, %71
  %138 = or i32 %137, %121
  %139 = or i32 %138, %123
  %140 = or i32 %139, %124
  %141 = or i32 %140, %126
  %142 = or i32 %141, %128
  %143 = or i32 %142, %130
  %144 = or i32 %143, %131
  %145 = or i32 %144, %132
  %146 = or i32 %145, %134
  %147 = or i32 %146, %119
  store i32 %147, ptr %135, align 4
  br label %148

148:                                              ; preds = %114, %79
  %149 = phi i32 [ %147, %114 ], [ %112, %79 ]
  %150 = load i32, ptr %70, align 4
  %151 = udiv i32 %150, 100
  %152 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 5
  store i32 %151, ptr %152, align 4
  %153 = getelementptr %struct.ieee80211_regdomain, ptr %2, i32 0, i32 4, i32 %35, i32 1, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = udiv i32 %154, 100
  %156 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 6
  store i32 %155, ptr %156, align 4
  %157 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 7
  store i32 %155, ptr %157, align 4
  %158 = and i32 %149, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %148
  %161 = getelementptr %struct.ieee80211_regdomain, ptr %2, i32 0, i32 4, i32 %35, i32 4
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  %164 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %14, i32 14
  %165 = select i1 %163, i32 60000, i32 %162
  store i32 %165, ptr %164, align 4
  br label %166

166:                                              ; preds = %160, %148
  store i32 %155, ptr %156, align 4
  br label %167

167:                                              ; preds = %166, %64, %60
  %168 = add nuw i32 %14, 1
  %169 = load i32, ptr %6, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %13, label %171

171:                                              ; preds = %167, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @reg_dfs_domain_same(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %3 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %4 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %3, ptr %5
  %8 = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 55
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %3, ptr %9
  %12 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulatory_hint_user(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3226, i32 noundef 9, ptr noundef null) #20
  br label %60

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 48
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 48
  br i1 %11, label %26, label %12

12:                                               ; preds = %8, %5
  %13 = zext i8 %6 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 3
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %18, %8
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 44) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 1
  store i32 -1, ptr %31, align 8
  %32 = load i8, ptr %0, align 1
  %33 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 4
  %34 = getelementptr i8, ptr %0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr %struct.regulatory_request, ptr %28, i32 0, i32 4, i32 1
  %37 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 2
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 3
  store i32 %1, ptr %38, align 8
  store i32 0, ptr @reg_crda_timeouts, align 4
  %39 = zext i8 %32 to i32
  %40 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  %44 = add i8 %32, -32
  %45 = select i1 %43, i8 %32, i8 %44
  store i8 %45, ptr %33, align 4
  %46 = zext i8 %35 to i32
  %47 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  %51 = add i8 %35, -32
  %52 = select i1 %50, i8 %35, i8 %51
  store i8 %52, ptr %36, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %53 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 9
  %54 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr %53, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr @reg_requests_list, ptr %53, align 4
  %55 = getelementptr inbounds %struct.regulatory_request, ptr %28, i32 0, i32 9, i32 1
  store ptr %54, ptr %55, align 8
  store volatile ptr %53, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %56 = load i16, ptr @reg_requests_lock, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %58 = load ptr, ptr @system_wq, align 4
  %59 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %58, ptr noundef nonnull @reg_work) #20
  br label %60

60:                                               ; preds = %30, %26, %18, %12, %4
  %61 = phi i32 [ -22, %4 ], [ 0, %30 ], [ -22, %18 ], [ -12, %26 ], [ -22, %12 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulatory_hint_indoor(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = zext i1 %0 to i8
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_indoor_lock) #20
  store i8 %3, ptr @reg_is_indoor, align 1
  br i1 %0, label %4, label %10

4:                                                ; preds = %2
  %5 = load i32, ptr @reg_is_indoor_portid, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  store i32 %1, ptr @reg_is_indoor_portid, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %8 = load i16, ptr @reg_indoor_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @reg_indoor_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %18

10:                                               ; preds = %2
  store i32 0, ptr @reg_is_indoor_portid, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %11 = load i16, ptr @reg_indoor_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @reg_indoor_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %13 = load ptr, ptr @system_power_efficient_wq, align 4
  %14 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  br label %18

15:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %16 = load i16, ptr @reg_indoor_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @reg_indoor_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %18

18:                                               ; preds = %15, %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulatory_netlink_notify(i32 noundef %0) local_unnamed_addr #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_indoor_lock) #20
  %2 = load i32, ptr @reg_is_indoor_portid, align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %5 = load i16, ptr @reg_indoor_lock, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr @reg_indoor_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %12

7:                                                ; preds = %1
  store i8 0, ptr @reg_is_indoor, align 1
  store i32 0, ptr @reg_is_indoor_portid, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %8 = load i16, ptr @reg_indoor_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @reg_indoor_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %10 = load ptr, ptr @system_power_efficient_wq, align 4
  %11 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %10, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  br label %12

12:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulatory_hint(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %6, label %7, !prof !13

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3299, i32 noundef 9, ptr noundef null) #20
  br label %44

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -2
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 44) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @get_wiphy_idx(ptr noundef nonnull %0) #20
  %16 = getelementptr inbounds %struct.regulatory_request, ptr %12, i32 0, i32 1
  store i32 %15, ptr %16, align 8
  %17 = load i8, ptr %1, align 1
  %18 = getelementptr inbounds %struct.regulatory_request, ptr %12, i32 0, i32 4
  %19 = getelementptr i8, ptr %1, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr %struct.regulatory_request, ptr %12, i32 0, i32 4, i32 1
  %22 = getelementptr inbounds %struct.regulatory_request, ptr %12, i32 0, i32 2
  store i32 2, ptr %22, align 4
  store i32 0, ptr @reg_crda_timeouts, align 4
  %23 = zext i8 %17 to i32
  %24 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  %28 = add i8 %17, -32
  %29 = select i1 %27, i8 %17, i8 %28
  store i8 %29, ptr %18, align 4
  %30 = zext i8 %20 to i32
  %31 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  %35 = add i8 %20, -32
  %36 = select i1 %34, i8 %20, i8 %35
  store i8 %36, ptr %21, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %37 = getelementptr inbounds %struct.regulatory_request, ptr %12, i32 0, i32 9
  %38 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr %37, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr @reg_requests_list, ptr %37, align 4
  %39 = getelementptr inbounds %struct.regulatory_request, ptr %12, i32 0, i32 9, i32 1
  store ptr %38, ptr %39, align 8
  store volatile ptr %37, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %40 = load i16, ptr @reg_requests_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %42 = load ptr, ptr @system_wq, align 4
  %43 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %42, ptr noundef nonnull @reg_work) #20
  br label %44

44:                                               ; preds = %14, %7, %6
  %45 = phi i32 [ -22, %6 ], [ 0, %14 ], [ -12, %7 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_wiphy_idx(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulatory_hint_country_ie(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = and i8 %3, 1
  %6 = icmp ne i8 %5, 0
  %7 = icmp ult i8 %3, 6
  %8 = or i1 %7, %6
  br i1 %8, label %63, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 44) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %9
  %14 = load i8, ptr %2, align 1
  %15 = getelementptr i8, ptr %2, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr i8, ptr %2, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 79
  %20 = select i1 %19, i32 2, i32 0
  %21 = icmp eq i8 %18, 73
  %22 = select i1 %21, i32 1, i32 %20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %23 = load volatile ptr, ptr @last_request, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25, !prof !13

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.regulatory_request, ptr %23, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.regulatory_request, ptr %23, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %61

33:                                               ; preds = %29, %25
  %34 = tail call i32 @get_wiphy_idx(ptr noundef %0) #20
  %35 = getelementptr inbounds %struct.regulatory_request, ptr %11, i32 0, i32 1
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.regulatory_request, ptr %11, i32 0, i32 4
  %37 = getelementptr %struct.regulatory_request, ptr %11, i32 0, i32 4, i32 1
  %38 = getelementptr inbounds %struct.regulatory_request, ptr %11, i32 0, i32 2
  store i32 3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.regulatory_request, ptr %11, i32 0, i32 8
  store i32 %22, ptr %39, align 8
  store i32 0, ptr @reg_crda_timeouts, align 4
  %40 = zext i8 %14 to i32
  %41 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  %45 = add i8 %14, -32
  %46 = select i1 %44, i8 %14, i8 %45
  store i8 %46, ptr %36, align 4
  %47 = zext i8 %16 to i32
  %48 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  %52 = add i8 %16, -32
  %53 = select i1 %51, i8 %16, i8 %52
  store i8 %53, ptr %37, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %54 = getelementptr inbounds %struct.regulatory_request, ptr %11, i32 0, i32 9
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr %54, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr @reg_requests_list, ptr %54, align 4
  %56 = getelementptr inbounds %struct.regulatory_request, ptr %11, i32 0, i32 9, i32 1
  store ptr %55, ptr %56, align 8
  store volatile ptr %54, ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %57 = load i16, ptr @reg_requests_lock, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %59 = load ptr, ptr @system_wq, align 4
  %60 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %59, ptr noundef nonnull @reg_work) #20
  br label %61

61:                                               ; preds = %33, %29, %13
  %62 = phi ptr [ %11, %13 ], [ %11, %29 ], [ null, %33 ]
  tail call void @kfree(ptr noundef %62) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  br label %63

63:                                               ; preds = %61, %9, %4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulatory_hint_disconnect() local_unnamed_addr #2 {
  %1 = load ptr, ptr @cfg80211_rdev_list, align 4
  %2 = icmp eq ptr %1, @cfg80211_rdev_list
  br i1 %2, label %67, label %6

3:                                                ; preds = %20, %6
  %4 = load ptr, ptr %7, align 4
  %5 = icmp eq ptr %4, @cfg80211_rdev_list
  br i1 %5, label %23, label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = getelementptr i8, ptr %7, i32 1292
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %3, label %11

11:                                               ; preds = %20, %6
  %12 = phi ptr [ %21, %20 ], [ %9, %6 ]
  %13 = getelementptr i8, ptr %12, i32 -8
  %14 = getelementptr i8, ptr %12, i32 28
  tail call void @mutex_lock(ptr noundef %14) #20
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  tail call void @mutex_unlock(ptr noundef %14) #20
  br i1 %19, label %66, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %3, label %11

23:                                               ; preds = %3
  %24 = load ptr, ptr @cfg80211_rdev_list, align 4
  %25 = icmp eq ptr %24, @cfg80211_rdev_list
  br i1 %25, label %67, label %29

26:                                               ; preds = %43, %29
  %27 = load ptr, ptr %30, align 4
  %28 = icmp eq ptr %27, @cfg80211_rdev_list
  br i1 %28, label %67, label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %27, %26 ], [ %24, %23 ]
  %31 = getelementptr i8, ptr %30, i32 1292
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %26, label %34

34:                                               ; preds = %43, %29
  %35 = phi ptr [ %44, %43 ], [ %32, %29 ]
  %36 = getelementptr i8, ptr %35, i32 -8
  %37 = getelementptr i8, ptr %35, i32 28
  tail call void @mutex_lock(ptr noundef %37) #20
  %38 = load ptr, ptr %36, align 4
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  tail call void @mutex_unlock(ptr noundef %37) #20
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %35, align 4
  %45 = icmp eq ptr %44, %31
  br i1 %45, label %26, label %34

46:                                               ; preds = %34
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %47 = load ptr, ptr @reg_pending_beacons, align 4
  %48 = icmp eq ptr %47, @reg_pending_beacons
  br i1 %48, label %56, label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %51, %49 ], [ %47, %46 ]
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %51, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  tail call void @kfree(ptr noundef %50) #20
  %55 = icmp eq ptr %51, @reg_pending_beacons
  br i1 %55, label %56, label %49

56:                                               ; preds = %49, %46
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %57 = load ptr, ptr @reg_beacon_list, align 4
  %58 = icmp eq ptr %57, @reg_beacon_list
  br i1 %58, label %67, label %59

59:                                               ; preds = %59, %56
  %60 = phi ptr [ %61, %59 ], [ %57, %56 ]
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %61, ptr %63, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  tail call void @kfree(ptr noundef %60) #20
  %65 = icmp eq ptr %61, @reg_beacon_list
  br i1 %65, label %67, label %59

66:                                               ; preds = %11
  tail call fastcc void @restore_regulatory_settings(i1 noundef zeroext false, i1 noundef zeroext true)
  br label %67

67:                                               ; preds = %66, %59, %56, %26, %23, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @restore_regulatory_settings(i1 noundef zeroext %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr %5, ptr %5, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = call i32 @rtnl_is_locked() #20
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @restore_regulatory_settings.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !13

12:                                               ; preds = %2
  store i1 true, ptr @restore_regulatory_settings.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3464, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 3464) #20
  br label %13

13:                                               ; preds = %12, %2
  call void @_raw_spin_lock(ptr noundef nonnull @reg_indoor_lock) #20
  %14 = load i8, ptr @reg_is_indoor, align 1, !range !12
  %15 = icmp eq i8 %14, 0
  %16 = load i32, ptr @reg_is_indoor_portid, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  store i8 0, ptr @reg_is_indoor, align 1
  %20 = load ptr, ptr @system_power_efficient_wq, align 4
  %21 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %20, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  br label %22

22:                                               ; preds = %19, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %23 = load i16, ptr @reg_indoor_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @reg_indoor_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  call fastcc void @reset_regdomains(i1 noundef zeroext true, ptr noundef nonnull @world_regdom)
  store i8 57, ptr %3, align 2
  %25 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 55, ptr %25, align 1
  %26 = load i8, ptr @user_alpha2, align 1
  %27 = icmp eq i8 %26, 57
  %28 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @user_alpha2, i32 0, i32 1), align 1
  %29 = icmp eq i8 %28, 55
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %65, label %31

31:                                               ; preds = %22
  %32 = icmp eq i8 %26, 48
  %33 = icmp eq i8 %28, 48
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = zext i8 %26 to i32
  %37 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  %41 = zext i8 %28 to i32
  br i1 %40, label %47, label %42

42:                                               ; preds = %35
  %43 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %41
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 3
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !13

47:                                               ; preds = %42, %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %36, i32 noundef %41) #20
  br label %65

48:                                               ; preds = %42, %31
  br i1 %0, label %49, label %64

49:                                               ; preds = %48
  store i8 57, ptr @user_alpha2, align 1
  store i8 55, ptr getelementptr inbounds ([2 x i8], ptr @user_alpha2, i32 0, i32 1), align 1
  %50 = load ptr, ptr @ieee80211_regdom, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8, ptr null, align 2147483648
  br label %61

54:                                               ; preds = %49
  %55 = load i8, ptr %50, align 1
  %56 = icmp eq i8 %55, 48
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %50, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 48
  br i1 %60, label %83, label %61

61:                                               ; preds = %57, %54, %52
  %62 = phi i8 [ %53, %52 ], [ %55, %54 ], [ 48, %57 ]
  store i8 %62, ptr %3, align 2
  %63 = getelementptr i8, ptr %50, i32 1
  br label %80

64:                                               ; preds = %48
  store i8 %26, ptr %3, align 2
  br label %80

65:                                               ; preds = %47, %22
  %66 = load ptr, ptr @ieee80211_regdom, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8, ptr null, align 2147483648
  br label %77

70:                                               ; preds = %65
  %71 = load i8, ptr %66, align 1
  %72 = icmp eq i8 %71, 48
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr i8, ptr %66, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 48
  br i1 %76, label %83, label %77

77:                                               ; preds = %73, %70, %68
  %78 = phi i8 [ %69, %68 ], [ %71, %70 ], [ 48, %73 ]
  store i8 %78, ptr %3, align 2
  %79 = getelementptr i8, ptr %66, i32 1
  br label %80

80:                                               ; preds = %77, %64, %61
  %81 = phi ptr [ %79, %77 ], [ getelementptr inbounds ([2 x i8], ptr @user_alpha2, i32 0, i32 1), %64 ], [ %63, %61 ]
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr %25, align 1
  br label %83

83:                                               ; preds = %80, %73, %57
  call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %84 = load volatile ptr, ptr @reg_requests_list, align 4
  %85 = icmp eq ptr %84, @reg_requests_list
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %6, align 4
  %88 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store ptr %84, ptr %87, align 4
  store ptr %5, ptr %88, align 4
  store ptr %88, ptr %6, align 4
  store volatile ptr @reg_requests_list, ptr @reg_requests_list, align 4
  store ptr @reg_requests_list, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  br label %90

90:                                               ; preds = %86, %83
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %91 = load i16, ptr @reg_requests_lock, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr @reg_requests_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  call void @_raw_spin_lock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %93 = load ptr, ptr @reg_pending_beacons, align 4
  %94 = icmp eq ptr %93, @reg_pending_beacons
  br i1 %94, label %102, label %95

95:                                               ; preds = %95, %90
  %96 = phi ptr [ %97, %95 ], [ %93, %90 ]
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %99, ptr %100, align 4
  store volatile ptr %97, ptr %99, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %96, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %98, align 4
  call void @kfree(ptr noundef %96) #20
  %101 = icmp eq ptr %97, @reg_pending_beacons
  br i1 %101, label %102, label %95

102:                                              ; preds = %95, %90
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %103 = load ptr, ptr @reg_beacon_list, align 4
  %104 = icmp eq ptr %103, @reg_beacon_list
  br i1 %104, label %112, label %105

105:                                              ; preds = %105, %102
  %106 = phi ptr [ %107, %105 ], [ %103, %102 ]
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %107, ptr %109, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %106, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %108, align 4
  call void @kfree(ptr noundef %106) #20
  %111 = icmp eq ptr %107, @reg_beacon_list
  br i1 %111, label %112, label %105

112:                                              ; preds = %105, %102
  %113 = load ptr, ptr @cfg80211_world_regdom, align 4
  %114 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %113, i32 0, i32 2
  %115 = load i8, ptr %114, align 4
  store i8 %115, ptr %4, align 2
  %116 = getelementptr %struct.ieee80211_regdomain, ptr %113, i32 0, i32 2, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %117, ptr %118, align 1
  %119 = load ptr, ptr @cfg80211_rdev_list, align 4
  %120 = icmp eq ptr %119, @cfg80211_rdev_list
  br i1 %120, label %159, label %121

121:                                              ; preds = %156, %112
  %122 = phi ptr [ %157, %156 ], [ %119, %112 ]
  %123 = getelementptr i8, ptr %122, i32 540
  %124 = getelementptr i8, ptr %122, i32 600
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 129
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %156

128:                                              ; preds = %153, %121
  %129 = phi i32 [ %154, %153 ], [ 0, %121 ]
  %130 = getelementptr %struct.wiphy, ptr %123, i32 0, i32 53, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %131, i32 0, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %137, %133
  %138 = phi i32 [ %150, %137 ], [ 0, %133 ]
  %139 = load ptr, ptr %131, align 4
  %140 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 4
  store i32 %141, ptr %142, align 4
  %143 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 10
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 5
  store i32 %144, ptr %145, align 4
  %146 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 11
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 6
  store i32 %147, ptr %148, align 4
  %149 = getelementptr %struct.ieee80211_channel, ptr %139, i32 %138, i32 8
  store i8 0, ptr %149, align 4
  %150 = add nuw nsw i32 %138, 1
  %151 = load i32, ptr %134, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %137, label %153

153:                                              ; preds = %137, %133, %128
  %154 = add nuw nsw i32 %129, 1
  %155 = icmp eq i32 %154, 6
  br i1 %155, label %156, label %128

156:                                              ; preds = %153, %121
  %157 = load ptr, ptr %122, align 4
  %158 = icmp eq ptr %157, @cfg80211_rdev_list
  br i1 %158, label %159, label %121

159:                                              ; preds = %156, %112
  br i1 %1, label %160, label %305

160:                                              ; preds = %159
  %161 = load i8, ptr %3, align 2
  %162 = zext i8 %161 to i32
  %163 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %162
  %164 = load i8, ptr %163, align 1
  %165 = and i8 %164, 3
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %160
  %168 = load i8, ptr %25, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %169
  %171 = load i8, ptr %170, align 1
  %172 = and i8 %171, 3
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr @cfg80211_user_regdom, align 4
  %176 = icmp eq ptr %175, null
  %177 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  %178 = or i1 %176, %177
  br i1 %178, label %305, label %179

179:                                              ; preds = %174, %167, %160
  %180 = load ptr, ptr @cfg80211_world_regdom, align 4
  call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef %180)
  %181 = call i32 @rtnl_is_locked() #20
  %182 = icmp eq i32 %181, 0
  %183 = load i1, ptr @update_all_wiphy_regulatory.__already_done, align 1
  %184 = xor i1 %183, true
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %187, !prof !13

186:                                              ; preds = %179
  store i1 true, ptr @update_all_wiphy_regulatory.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2507, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 2507) #20
  br label %187

187:                                              ; preds = %186, %179
  %188 = load ptr, ptr @cfg80211_rdev_list, align 4
  %189 = icmp eq ptr %188, @cfg80211_rdev_list
  br i1 %189, label %195, label %190

190:                                              ; preds = %190, %187
  %191 = phi ptr [ %193, %190 ], [ %188, %187 ]
  %192 = getelementptr i8, ptr %191, i32 540
  call fastcc void @wiphy_update_regulatory(ptr noundef %192, i32 noundef 0) #20
  %193 = load ptr, ptr %191, align 4
  %194 = icmp eq ptr %193, @cfg80211_rdev_list
  br i1 %194, label %195, label %190

195:                                              ; preds = %190, %187
  %196 = load ptr, ptr @system_power_efficient_wq, align 4
  %197 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %196, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  %198 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %199 = load volatile ptr, ptr @last_request, align 4
  %200 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %198, i32 0, i32 2
  %201 = load i8, ptr %200, align 1
  %202 = icmp eq i8 %201, 57
  br i1 %202, label %203, label %215

203:                                              ; preds = %195
  %204 = getelementptr %struct.ieee80211_regdomain, ptr %198, i32 0, i32 2, i32 1
  %205 = load i8, ptr %204, align 1
  %206 = icmp eq i8 %205, 56
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.regulatory_request, ptr %199, i32 0, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.regulatory_request, ptr %199, i32 0, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = call ptr @cfg80211_rdev_by_wiphy_idx(i32 noundef %213) #20
  br label %215

215:                                              ; preds = %211, %207, %203, %195
  call fastcc void @print_rd_rules(ptr noundef %198) #20
  call void @nl80211_common_reg_change_event(i32 noundef 36, ptr noundef nonnull @core_request_world) #20
  %216 = load volatile ptr, ptr @last_request, align 4
  %217 = getelementptr inbounds %struct.regulatory_request, ptr %216, i32 0, i32 7
  store i8 1, ptr %217, align 1
  call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %218 = load volatile ptr, ptr @reg_requests_list, align 4
  %219 = icmp eq ptr %218, @reg_requests_list
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %220 = load i16, ptr @reg_requests_lock, align 4
  %221 = add i16 %220, 1
  store i16 %221, ptr @reg_requests_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %222 = call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @crda_timeout) #20
  br i1 %219, label %226, label %223

223:                                              ; preds = %215
  %224 = load ptr, ptr @system_wq, align 4
  %225 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %224, ptr noundef nonnull @reg_work) #20
  br label %226

226:                                              ; preds = %223, %215
  %227 = load i8, ptr %3, align 2
  %228 = zext i8 %227 to i32
  %229 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %228
  %230 = load i8, ptr %229, align 1
  %231 = and i8 %230, 3
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %322, label %233

233:                                              ; preds = %226
  %234 = load i8, ptr %25, align 1
  %235 = zext i8 %234 to i32
  %236 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %235
  %237 = load i8, ptr %236, align 1
  %238 = and i8 %237, 3
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %322, label %240

240:                                              ; preds = %233
  %241 = call i32 @regulatory_hint_user(ptr noundef nonnull %3, i32 noundef 0)
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %322

243:                                              ; preds = %240
  call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %244 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  %245 = getelementptr i8, ptr %244, i32 -36
  %246 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = load ptr, ptr %244, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %248, i32 0, i32 1
  store ptr %247, ptr %249, align 4
  store volatile ptr %248, ptr %247, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %244, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %246, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %250 = load i16, ptr @reg_requests_lock, align 4
  %251 = add i16 %250, 1
  store i16 %251, ptr @reg_requests_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %252 = load ptr, ptr @cfg80211_rdev_list, align 4
  %253 = icmp eq ptr %252, @cfg80211_rdev_list
  br i1 %253, label %274, label %254

254:                                              ; preds = %243
  %255 = getelementptr i8, ptr %244, i32 -24
  br label %256

256:                                              ; preds = %271, %254
  %257 = phi ptr [ %252, %254 ], [ %272, %271 ]
  %258 = getelementptr i8, ptr %257, i32 540
  %259 = getelementptr i8, ptr %257, i32 600
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 128
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %271, label %263

263:                                              ; preds = %256
  %264 = load i32, ptr %255, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = getelementptr i8, ptr %257, i32 796
  %268 = load ptr, ptr %267, align 32
  %269 = icmp eq ptr %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %266
  call void %268(ptr noundef %258, ptr noundef %245) #20
  br label %271

271:                                              ; preds = %270, %266, %263, %256
  %272 = load ptr, ptr %257, align 4
  %273 = icmp eq ptr %272, @cfg80211_rdev_list
  br i1 %273, label %274, label %256

274:                                              ; preds = %271, %243
  %275 = load volatile ptr, ptr @last_request, align 4
  %276 = icmp eq ptr %275, %245
  br i1 %276, label %284, label %277

277:                                              ; preds = %274
  %278 = load volatile ptr, ptr @last_request, align 4
  %279 = icmp ne ptr %278, @core_request_world
  %280 = icmp ne ptr %278, null
  %281 = and i1 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  call void @kvfree_call_rcu(ptr noundef nonnull %278, ptr noundef null) #20
  br label %283

283:                                              ; preds = %282, %277
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr %245, ptr @last_request, align 4
  br label %284

284:                                              ; preds = %283, %274
  %285 = load ptr, ptr @cfg80211_user_regdom, align 4
  %286 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %285, i32 0, i32 1
  %287 = load i32, ptr %286, align 4
  %288 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %287, i32 96) #20
  %289 = extractvalue { i32, i1 } %288, 1
  %290 = extractvalue { i32, i1 } %288, 0
  %291 = or i32 %290, 20
  %292 = select i1 %289, i32 -1, i32 %291
  %293 = call noalias align 64 ptr @__kmalloc(i32 noundef %292, i32 noundef 3520) #22
  %294 = icmp eq ptr %293, null
  br i1 %294, label %302, label %295

295:                                              ; preds = %284
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %293, ptr noundef align 4 dereferenceable(20) %285, i32 20, i1 false) #20
  %296 = load i32, ptr %286, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %295
  %299 = getelementptr i8, ptr %293, i32 20
  %300 = getelementptr i8, ptr %285, i32 20
  %301 = mul nuw i32 %296, 96
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %299, ptr align 4 %300, i32 %301, i1 false) #20
  br label %302

302:                                              ; preds = %298, %295, %284
  %303 = phi ptr [ inttoptr (i32 -12 to ptr), %284 ], [ %293, %295 ], [ %293, %298 ]
  %304 = call i32 @set_regdom(ptr noundef nonnull %303, i32 noundef 2)
  br label %322

305:                                              ; preds = %174, %159
  %306 = call fastcc i32 @regulatory_hint_core(ptr noundef nonnull %4)
  %307 = load i8, ptr %3, align 2
  %308 = zext i8 %307 to i32
  %309 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %308
  %310 = load i8, ptr %309, align 1
  %311 = and i8 %310, 3
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %305
  %314 = load i8, ptr %25, align 1
  %315 = zext i8 %314 to i32
  %316 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %315
  %317 = load i8, ptr %316, align 1
  %318 = and i8 %317, 3
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %313
  %321 = call i32 @regulatory_hint_user(ptr noundef nonnull %3, i32 noundef 0)
  br label %322

322:                                              ; preds = %320, %313, %305, %302, %240, %233, %226
  call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %323 = load volatile ptr, ptr %5, align 8
  %324 = icmp eq ptr %323, %5
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  %327 = load ptr, ptr %6, align 4
  %328 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %326, ptr %328, align 4
  store ptr %323, ptr %326, align 4
  store ptr @reg_requests_list, ptr %327, align 4
  store ptr %327, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store volatile ptr %5, ptr %5, align 8
  store ptr %5, ptr %6, align 4
  br label %329

329:                                              ; preds = %325, %322
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %330 = load i16, ptr @reg_requests_lock, align 4
  %331 = add i16 %330, 1
  store i16 %331, ptr @reg_requests_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %332 = load ptr, ptr @system_wq, align 4
  %333 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %332, ptr noundef nonnull @reg_work) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulatory_hint_found_beacon(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %7
  %13 = load i32, ptr %1, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef 12, i32 noundef 0) #20
  %19 = udiv i32 %18, 1000
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef 13, i32 noundef 0) #20
  %23 = udiv i32 %22, 1000
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef 14, i32 noundef 0) #20
  %27 = udiv i32 %26, 1000
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %29, label %70

29:                                               ; preds = %25, %21, %15, %12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %30 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr @reg_pending_beacons, align 4
  %32 = icmp eq ptr %31, @reg_pending_beacons
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %46, %33
  %37 = phi ptr [ %31, %33 ], [ %47, %46 ]
  %38 = getelementptr inbounds %struct.reg_beacon, ptr %37, i32 0, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i16, ptr %30, align 4
  %43 = getelementptr inbounds %struct.reg_beacon, ptr %37, i32 0, i32 1, i32 2
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %36
  %47 = load ptr, ptr %37, align 4
  %48 = icmp eq ptr %47, @reg_pending_beacons
  br i1 %48, label %50, label %36

49:                                               ; preds = %41
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  br label %70

50:                                               ; preds = %46, %29
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %51 = or i32 %2, 256
  %52 = and i32 %2, 17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !22

54:                                               ; preds = %50
  %55 = and i32 %2, 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 1, i32 2
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ 0, %50 ], [ %57, %54 ]
  %60 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %59, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef %51, i32 noundef 64) #21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.reg_beacon, ptr %62, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %65, ptr noundef align 4 dereferenceable(56) %1, i32 56, i1 false)
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %66 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_pending_beacons, i32 0, i32 1), align 4
  store ptr %62, ptr getelementptr inbounds (%struct.list_head, ptr @reg_pending_beacons, i32 0, i32 1), align 4
  store ptr @reg_pending_beacons, ptr %62, align 8
  %67 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  store volatile ptr %62, ptr %66, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %68 = load ptr, ptr @system_wq, align 4
  %69 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %68, ptr noundef nonnull @reg_work) #20
  br label %70

70:                                               ; preds = %64, %58, %49, %25, %7, %3
  %71 = phi i32 [ 0, %64 ], [ 0, %25 ], [ 0, %7 ], [ 0, %3 ], [ 0, %49 ], [ -12, %58 ]
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @reg_supported_dfs_region(i32 noundef %0) local_unnamed_addr #9 {
  %2 = icmp ult i32 %0, 4
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_regdom(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %359, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 2
  %8 = load volatile ptr, ptr @last_request, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regulatory_request, ptr %8, i32 0, i32 7
  %12 = load i8, ptr %11, align 1, !range !12
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq ptr %7, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.regulatory_request, ptr %8, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = load i8, ptr %7, align 1
  %20 = icmp eq i8 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr %struct.regulatory_request, ptr %8, i32 0, i32 4, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 2, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %23, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %16, %10, %6
  tail call void @kfree(ptr noundef nonnull %0) #20
  br label %359

28:                                               ; preds = %21
  %29 = icmp eq i32 %1, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  store i32 0, ptr @reg_crda_timeouts, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load volatile ptr, ptr @last_request, align 4
  %33 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %271 [
    i32 0, label %35
    i32 1, label %44
    i32 2, label %122
    i32 3, label %214
  ]

35:                                               ; preds = %31
  %36 = icmp eq i8 %18, 48
  %37 = icmp eq i8 %23, 48
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %299

39:                                               ; preds = %35
  %40 = load volatile ptr, ptr @last_request, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !13

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 360, i32 noundef 9, ptr noundef null) #20
  br label %43

43:                                               ; preds = %42, %39
  tail call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef nonnull %0) #20
  store ptr %0, ptr @cfg80211_world_regdom, align 4
  br label %304

44:                                               ; preds = %31
  %45 = tail call i32 @rtnl_is_locked() #20
  %46 = icmp eq i32 %45, 0
  %47 = load i1, ptr @cfg80211_save_user_regdom.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !13

50:                                               ; preds = %44
  store i1 true, ptr @cfg80211_save_user_regdom.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 468, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 468) #20
  br label %51

51:                                               ; preds = %50, %44
  %52 = load ptr, ptr @cfg80211_user_regdom, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @kfree(ptr noundef %52) #20
  br label %55

55:                                               ; preds = %54, %51
  %56 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 96) #20
  %59 = extractvalue { i32, i1 } %58, 1
  %60 = extractvalue { i32, i1 } %58, 0
  %61 = or i32 %60, 20
  %62 = select i1 %59, i32 -1, i32 %61
  %63 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 3520) #22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %63, ptr noundef nonnull align 4 dereferenceable(20) %0, i32 20, i1 false) #20
  %66 = load i32, ptr %56, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %63, i32 20
  %70 = getelementptr i8, ptr %0, i32 20
  %71 = mul nuw i32 %66, 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %69, ptr align 4 %70, i32 %71, i1 false) #20
  br label %72

72:                                               ; preds = %68, %65, %55
  %73 = phi ptr [ inttoptr (i32 -12 to ptr), %55 ], [ %63, %65 ], [ %63, %68 ]
  store ptr %73, ptr @cfg80211_user_regdom, align 4
  %74 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %74, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = load i8, ptr %7, align 1
  %80 = icmp eq i8 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr %struct.ieee80211_regdomain, ptr %74, i32 0, i32 2, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = load i8, ptr %24, align 1
  %85 = icmp eq i8 %83, %84
  br i1 %85, label %275, label %86

86:                                               ; preds = %81, %76, %72
  %87 = load i32, ptr %56, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %288, label %89

89:                                               ; preds = %86
  %90 = icmp ugt i32 %87, 128
  br i1 %90, label %286, label %94, !prof !13

91:                                               ; preds = %107
  %92 = add nuw nsw i32 %95, 1
  %93 = icmp eq i32 %92, %87
  br i1 %93, label %112, label %94

94:                                               ; preds = %91, %89
  %95 = phi i32 [ %92, %91 ], [ 0, %89 ]
  %96 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %95
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %288, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %96, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = icmp uge i32 %101, %97
  %104 = select i1 %102, i1 %103, i1 false
  %105 = icmp ugt i32 %101, %97
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %288

107:                                              ; preds = %99
  %108 = sub i32 %101, %97
  %109 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %96, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %110, %108
  br i1 %111, label %288, label %91

112:                                              ; preds = %91
  %113 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 6
  %114 = load i8, ptr %113, align 4, !range !12
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  tail call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef %0) #20
  br label %304

117:                                              ; preds = %112
  %118 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %119 = tail call fastcc ptr @regdom_intersect(ptr noundef %0, ptr noundef %118) #20
  %120 = icmp eq ptr %119, null
  br i1 %120, label %299, label %121

121:                                              ; preds = %117
  tail call void @kfree(ptr noundef %0) #20
  tail call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef nonnull %119) #20
  br label %304

122:                                              ; preds = %31
  %123 = icmp eq i8 %18, 48
  %124 = icmp eq i8 %23, 48
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %299, label %126

126:                                              ; preds = %122
  %127 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %127, i32 0, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, %18
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr %struct.ieee80211_regdomain, ptr %127, i32 0, i32 2, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, %23
  br i1 %136, label %275, label %137

137:                                              ; preds = %133, %129, %126
  %138 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %292, label %141

141:                                              ; preds = %137
  %142 = icmp ugt i32 %139, 128
  br i1 %142, label %286, label %146, !prof !13

143:                                              ; preds = %159
  %144 = add nuw nsw i32 %147, 1
  %145 = icmp eq i32 %144, %139
  br i1 %145, label %164, label %146

146:                                              ; preds = %143, %141
  %147 = phi i32 [ %144, %143 ], [ 0, %141 ]
  %148 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %147
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %292, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %148, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = icmp uge i32 %153, %149
  %156 = select i1 %154, i1 %155, i1 false
  %157 = icmp ugt i32 %153, %149
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %292

159:                                              ; preds = %151
  %160 = sub i32 %153, %149
  %161 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %148, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = icmp ugt i32 %162, %160
  br i1 %163, label %292, label %143

164:                                              ; preds = %143
  %165 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = tail call ptr @wiphy_idx_to_wiphy(i32 noundef %166) #20
  %168 = icmp eq ptr %167, null
  br i1 %168, label %299, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 6
  %171 = load i8, ptr %170, align 4, !range !12
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %169
  %174 = tail call i32 @rtnl_is_locked() #20
  %175 = icmp eq i32 %174, 0
  %176 = load i1, ptr @reg_set_rd_driver.__already_done, align 1
  %177 = xor i1 %176, true
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %180, !prof !13

179:                                              ; preds = %173
  store i1 true, ptr @reg_set_rd_driver.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3850, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 3850) #20
  br label %180

180:                                              ; preds = %179, %173
  tail call void @mutex_lock(ptr noundef nonnull %167) #20
  %181 = getelementptr inbounds %struct.wiphy, ptr %167, i32 0, i32 55
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  tail call void @mutex_unlock(ptr noundef nonnull %167) #20
  br label %275

185:                                              ; preds = %180
  %186 = load i32, ptr %138, align 4
  %187 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %186, i32 96) #20
  %188 = extractvalue { i32, i1 } %187, 1
  %189 = extractvalue { i32, i1 } %187, 0
  %190 = or i32 %189, 20
  %191 = select i1 %188, i32 -1, i32 %190
  %192 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %191, i32 noundef 3520) #22
  %193 = icmp eq ptr %192, null
  br i1 %193, label %272, label %194

194:                                              ; preds = %185
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %192, ptr noundef align 4 dereferenceable(20) %0, i32 20, i1 false) #20
  %195 = load i32, ptr %138, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = getelementptr i8, ptr %192, i32 20
  %199 = getelementptr i8, ptr %0, i32 20
  %200 = mul nuw i32 %195, 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %198, ptr align 4 %199, i32 %200, i1 false) #20
  br label %201

201:                                              ; preds = %197, %194
  %202 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %272, label %203

203:                                              ; preds = %201
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  store volatile ptr %192, ptr %181, align 4
  tail call void @mutex_unlock(ptr noundef nonnull %167) #20
  tail call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef %0) #20
  br label %304

204:                                              ; preds = %169
  %205 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %206 = tail call fastcc ptr @regdom_intersect(ptr noundef %0, ptr noundef %205) #20
  %207 = icmp eq ptr %206, null
  br i1 %207, label %299, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.wiphy, ptr %167, i32 0, i32 55
  %210 = load volatile ptr, ptr %209, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !24
  store volatile ptr %0, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void @kvfree_call_rcu(ptr noundef nonnull %210, ptr noundef null) #20
  br label %213

213:                                              ; preds = %212, %208
  tail call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef nonnull %206) #20
  br label %304

214:                                              ; preds = %31
  %215 = icmp eq i8 %18, 0
  %216 = icmp eq i8 %23, 0
  %217 = select i1 %215, i1 true, i1 %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %214
  %219 = zext i8 %18 to i32
  %220 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %219
  %221 = load i8, ptr %220, align 1
  %222 = and i8 %221, 3
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = zext i8 %23 to i32
  %226 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %225
  %227 = load i8, ptr %226, align 1
  %228 = and i8 %227, 3
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224, %218
  %231 = icmp eq i8 %18, 57
  %232 = icmp eq i8 %23, 57
  %233 = select i1 %231, i1 %232, i1 false
  br i1 %233, label %234, label %299

234:                                              ; preds = %230, %224, %214
  %235 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %292, label %238

238:                                              ; preds = %234
  %239 = icmp ugt i32 %236, 128
  br i1 %239, label %286, label %243, !prof !13

240:                                              ; preds = %256
  %241 = add nuw nsw i32 %244, 1
  %242 = icmp eq i32 %241, %236
  br i1 %242, label %261, label %243

243:                                              ; preds = %240, %238
  %244 = phi i32 [ %241, %240 ], [ 0, %238 ]
  %245 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %244
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %292, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %245, i32 0, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = icmp ne i32 %250, 0
  %252 = icmp uge i32 %250, %246
  %253 = select i1 %251, i1 %252, i1 false
  %254 = icmp ugt i32 %250, %246
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %256, label %292

256:                                              ; preds = %248
  %257 = sub i32 %250, %246
  %258 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %245, i32 0, i32 2
  %259 = load i32, ptr %258, align 4
  %260 = icmp ugt i32 %259, %257
  br i1 %260, label %292, label %240

261:                                              ; preds = %240
  %262 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = tail call ptr @wiphy_idx_to_wiphy(i32 noundef %263) #20
  %265 = icmp eq ptr %264, null
  br i1 %265, label %299, label %266

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 6
  %268 = load i8, ptr %267, align 4, !range !12
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %299

270:                                              ; preds = %266
  tail call fastcc void @reset_regdomains(i1 noundef zeroext false, ptr noundef %0) #20
  br label %304

271:                                              ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3964, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %34) #20
  tail call void @kfree(ptr noundef nonnull %0) #20
  br label %359

272:                                              ; preds = %201, %185
  %273 = phi ptr [ %192, %201 ], [ inttoptr (i32 -12 to ptr), %185 ]
  tail call void @mutex_unlock(ptr noundef nonnull %167) #20
  %274 = ptrtoint ptr %273 to i32
  br label %299

275:                                              ; preds = %184, %133, %81
  %276 = load volatile ptr, ptr @last_request, align 4
  %277 = getelementptr inbounds %struct.regulatory_request, ptr %276, i32 0, i32 7
  store i8 1, ptr %277, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %278 = load volatile ptr, ptr @reg_requests_list, align 4
  %279 = icmp eq ptr %278, @reg_requests_list
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %280 = load i16, ptr @reg_requests_lock, align 4
  %281 = add i16 %280, 1
  store i16 %281, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %282 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @crda_timeout) #20
  br i1 %279, label %302, label %283

283:                                              ; preds = %275
  %284 = load ptr, ptr @system_wq, align 4
  %285 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %284, ptr noundef nonnull @reg_work) #20
  br label %302

286:                                              ; preds = %238, %141, %89
  %287 = phi i1 [ true, %89 ], [ false, %141 ], [ false, %238 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1286, i32 noundef 9, ptr noundef null) #20
  br label %288

288:                                              ; preds = %286, %107, %99, %94, %86
  %289 = phi i1 [ true, %86 ], [ %287, %286 ], [ true, %107 ], [ true, %99 ], [ true, %94 ]
  %290 = load i8, ptr %7, align 4
  %291 = load i8, ptr %24, align 1
  br label %292

292:                                              ; preds = %288, %256, %248, %243, %234, %159, %151, %146, %137
  %293 = phi i8 [ %23, %137 ], [ %23, %234 ], [ %291, %288 ], [ %23, %159 ], [ %23, %151 ], [ %23, %146 ], [ %23, %256 ], [ %23, %248 ], [ %23, %243 ]
  %294 = phi i8 [ %18, %137 ], [ %18, %234 ], [ %290, %288 ], [ %18, %159 ], [ %18, %151 ], [ %18, %146 ], [ %18, %256 ], [ %18, %248 ], [ %18, %243 ]
  %295 = phi i1 [ false, %137 ], [ false, %234 ], [ %289, %288 ], [ false, %159 ], [ false, %151 ], [ false, %146 ], [ false, %256 ], [ false, %248 ], [ false, %243 ]
  %296 = zext i8 %294 to i32
  %297 = zext i8 %293 to i32
  %298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %296, i32 noundef %297) #23
  tail call fastcc void @print_rd_rules(ptr noundef %0) #20
  br label %299

299:                                              ; preds = %292, %272, %266, %261, %230, %204, %164, %122, %117, %35
  %300 = phi i32 [ %274, %272 ], [ -22, %230 ], [ -22, %266 ], [ -19, %261 ], [ -22, %204 ], [ -19, %164 ], [ -22, %117 ], [ -22, %35 ], [ -22, %122 ], [ -22, %292 ]
  %301 = phi i1 [ false, %272 ], [ false, %230 ], [ false, %266 ], [ false, %261 ], [ false, %204 ], [ false, %164 ], [ true, %117 ], [ false, %35 ], [ false, %122 ], [ %295, %292 ]
  tail call fastcc void @restore_regulatory_settings(i1 noundef zeroext %301, i1 noundef zeroext false)
  br label %302

302:                                              ; preds = %299, %283, %275
  %303 = phi i32 [ %300, %299 ], [ -114, %275 ], [ -114, %283 ]
  tail call void @kfree(ptr noundef %0) #20
  br label %359

304:                                              ; preds = %270, %213, %203, %121, %116, %43
  %305 = getelementptr inbounds %struct.regulatory_request, ptr %32, i32 0, i32 6
  %306 = load i8, ptr %305, align 4, !range !12
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %310 = icmp eq ptr %309, %0
  br i1 %310, label %312, label %311, !prof !22

311:                                              ; preds = %308
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3984, i32 noundef 9, ptr noundef null) #20
  br label %359

312:                                              ; preds = %308, %304
  %313 = load i32, ptr %33, align 4
  %314 = tail call i32 @rtnl_is_locked() #20
  %315 = icmp eq i32 %314, 0
  %316 = load i1, ptr @update_all_wiphy_regulatory.__already_done, align 1
  %317 = xor i1 %316, true
  %318 = select i1 %315, i1 %317, i1 false
  br i1 %318, label %319, label %320, !prof !13

319:                                              ; preds = %312
  store i1 true, ptr @update_all_wiphy_regulatory.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2507, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 2507) #20
  br label %320

320:                                              ; preds = %319, %312
  %321 = load ptr, ptr @cfg80211_rdev_list, align 4
  %322 = icmp eq ptr %321, @cfg80211_rdev_list
  br i1 %322, label %328, label %323

323:                                              ; preds = %323, %320
  %324 = phi ptr [ %326, %323 ], [ %321, %320 ]
  %325 = getelementptr i8, ptr %324, i32 540
  tail call fastcc void @wiphy_update_regulatory(ptr noundef %325, i32 noundef %313) #20
  %326 = load ptr, ptr %324, align 4
  %327 = icmp eq ptr %326, @cfg80211_rdev_list
  br i1 %327, label %328, label %323

328:                                              ; preds = %323, %320
  %329 = load ptr, ptr @system_power_efficient_wq, align 4
  %330 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %329, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  %331 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %332 = load volatile ptr, ptr @last_request, align 4
  %333 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %331, i32 0, i32 2
  %334 = load i8, ptr %333, align 1
  %335 = icmp eq i8 %334, 57
  br i1 %335, label %336, label %348

336:                                              ; preds = %328
  %337 = getelementptr %struct.ieee80211_regdomain, ptr %331, i32 0, i32 2, i32 1
  %338 = load i8, ptr %337, align 1
  %339 = icmp eq i8 %338, 56
  br i1 %339, label %340, label %348

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.regulatory_request, ptr %332, i32 0, i32 2
  %342 = load i32, ptr %341, align 4
  %343 = icmp eq i32 %342, 3
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.regulatory_request, ptr %332, i32 0, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = tail call ptr @cfg80211_rdev_by_wiphy_idx(i32 noundef %346) #20
  br label %348

348:                                              ; preds = %344, %340, %336, %328
  tail call fastcc void @print_rd_rules(ptr noundef %331) #20
  tail call void @nl80211_common_reg_change_event(i32 noundef 36, ptr noundef %32) #20
  %349 = load volatile ptr, ptr @last_request, align 4
  %350 = getelementptr inbounds %struct.regulatory_request, ptr %349, i32 0, i32 7
  store i8 1, ptr %350, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %351 = load volatile ptr, ptr @reg_requests_list, align 4
  %352 = icmp eq ptr %351, @reg_requests_list
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %353 = load i16, ptr @reg_requests_lock, align 4
  %354 = add i16 %353, 1
  store i16 %354, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %355 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @crda_timeout) #20
  br i1 %352, label %359, label %356

356:                                              ; preds = %348
  %357 = load ptr, ptr @system_wq, align 4
  %358 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %357, ptr noundef nonnull @reg_work) #20
  br label %359

359:                                              ; preds = %356, %348, %311, %302, %271, %27, %2
  %360 = phi i32 [ -22, %271 ], [ %303, %302 ], [ -22, %311 ], [ -22, %27 ], [ -61, %2 ], [ 0, %348 ], [ 0, %356 ]
  ret i32 %360
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulatory_set_wiphy_regd(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call fastcc i32 @__regulatory_set_wiphy_regd(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef nonnull @reg_work) #20
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__regulatory_set_wiphy_regd(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7, !prof !13

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4006, i32 noundef 9, ptr noundef null) #20
  br label %73

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !13

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4010, i32 noundef 9, ptr noundef nonnull @.str.26) #20
  br label %73

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %41, label %17, !prof !19

17:                                               ; preds = %13
  %18 = icmp ugt i32 %15, 128
  br i1 %18, label %19, label %23, !prof !13

19:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1286, i32 noundef 9, ptr noundef null) #20
  br label %41

20:                                               ; preds = %36
  %21 = add nuw nsw i32 %24, 1
  %22 = icmp eq i32 %21, %15
  br i1 %22, label %48, label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %21, %20 ], [ 0, %17 ]
  %25 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 4, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28, !prof !19

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %25, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = icmp uge i32 %30, %26
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ugt i32 %30, %26
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %41, !prof !25

36:                                               ; preds = %28
  %37 = sub i32 %30, %26
  %38 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %25, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %37
  br i1 %40, label %41, label %20, !prof !19

41:                                               ; preds = %36, %28, %23, %19, %13
  %42 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 2, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4015, i32 noundef 9, ptr noundef nonnull @.str.27, i32 noundef %44, i32 noundef %47) #20
  tail call fastcc void @print_rd_rules(ptr noundef %1) #20
  br label %73

48:                                               ; preds = %20
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 96) #20
  %50 = extractvalue { i32, i1 } %49, 1
  %51 = extractvalue { i32, i1 } %49, 0
  %52 = or i32 %51, 20
  %53 = select i1 %50, i32 -1, i32 %52
  %54 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %53, i32 noundef 3520) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %54, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false) #20
  %57 = load i32, ptr %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %54, i32 20
  %61 = getelementptr i8, ptr %1, i32 20
  %62 = mul nuw i32 %57, 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %60, ptr align 4 %61, i32 %62, i1 false) #20
  br label %63

63:                                               ; preds = %59, %56
  %64 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %63, %48
  %66 = phi ptr [ %54, %63 ], [ inttoptr (i32 -12 to ptr), %48 ]
  %67 = ptrtoint ptr %66 to i32
  br label %73

68:                                               ; preds = %63
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %69 = getelementptr i8, ptr %0, i32 -500
  %70 = load ptr, ptr %69, align 4
  store ptr %54, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %71 = load i16, ptr @reg_requests_lock, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  tail call void @kfree(ptr noundef %70) #20
  br label %73

73:                                               ; preds = %68, %65, %41, %12, %6
  %74 = phi i32 [ -22, %6 ], [ -1, %12 ], [ -22, %41 ], [ %67, %65 ], [ 0, %68 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulatory_set_wiphy_regd_sync(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @rtnl_is_locked() #20
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @regulatory_set_wiphy_regd_sync.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %2
  store i1 true, ptr @regulatory_set_wiphy_regd_sync.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4053, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 4053) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call fastcc i32 @__regulatory_set_wiphy_regd(ptr noundef %0, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  tail call fastcc void @reg_process_self_managed_hint(ptr noundef %0)
  %13 = load ptr, ptr @system_power_efficient_wq, align 4
  %14 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  br label %15

15:                                               ; preds = %12, %9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reg_process_self_managed_hint(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.regulatory_request, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #20, !srcloc !26
  unreachable

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false)
  %6 = tail call i32 @rtnl_is_locked() #20
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @reg_process_self_managed_hint.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %5
  store i1 true, ptr @reg_process_self_managed_hint.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3134, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 3134) #20
  br label %12

12:                                               ; preds = %11, %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %13 = getelementptr i8, ptr %0, i32 -500
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %15 = load i16, ptr @reg_requests_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %17 = icmp eq ptr %14, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %20 = load volatile ptr, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  store volatile ptr %14, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @kvfree_call_rcu(ptr noundef nonnull %20, ptr noundef null) #20
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 0
  %25 = load ptr, ptr %24, align 4
  tail call fastcc void @handle_band_custom(ptr noundef nonnull %0, ptr noundef %25, ptr noundef nonnull %14)
  %26 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call fastcc void @handle_band_custom(ptr noundef nonnull %0, ptr noundef %27, ptr noundef nonnull %14)
  %28 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call fastcc void @handle_band_custom(ptr noundef nonnull %0, ptr noundef %29, ptr noundef nonnull %14)
  %30 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call fastcc void @handle_band_custom(ptr noundef nonnull %0, ptr noundef %31, ptr noundef nonnull %14)
  %32 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call fastcc void @handle_band_custom(ptr noundef nonnull %0, ptr noundef %33, ptr noundef nonnull %14)
  %34 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 5
  %35 = load ptr, ptr %34, align 4
  tail call fastcc void @handle_band_custom(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %14)
  tail call fastcc void @reg_process_ht_flags(ptr noundef nonnull %0)
  %36 = tail call i32 @get_wiphy_idx(ptr noundef nonnull %0) #20
  %37 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %14, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 4
  store i8 %39, ptr %40, align 4
  %41 = getelementptr %struct.ieee80211_regdomain, ptr %14, i32 0, i32 2, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 4, i32 1
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 2
  store i32 2, ptr %44, align 4
  call void @nl80211_common_reg_change_event(i32 noundef 113, ptr noundef nonnull %2) #20
  br label %45

45:                                               ; preds = %23, %12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_regulatory_register(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load volatile ptr, ptr @last_request, align 4
  %3 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = or i32 %4, 20
  store i32 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 54
  %14 = load ptr, ptr %13, align 32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %0, ptr noundef %2) #20
  br label %17

17:                                               ; preds = %16, %12, %7, %1
  %18 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call fastcc void @wiphy_update_regulatory(ptr noundef %0, i32 noundef %19)
  tail call fastcc void @wiphy_all_share_dfs_chan_state(ptr noundef %0)
  tail call fastcc void @reg_process_self_managed_hints()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wiphy_update_regulatory(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ieee80211_channel, align 4
  %4 = alloca %struct.ieee80211_freq_range, align 4
  %5 = load volatile ptr, ptr @last_request, align 4
  %6 = load volatile ptr, ptr @last_request, align 4
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq ptr %6, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = icmp ne i32 %1, 0
  %15 = and i32 %8, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = and i32 %8, 3
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp ne i32 %1, 3
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.regulatory_request, ptr %6, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 48
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = getelementptr %struct.regulatory_request, ptr %6, i32 0, i32 4, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 48
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %21, %18
  %36 = getelementptr inbounds %struct.regulatory_request, ptr %6, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.regulatory_request, ptr %6, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %39, %31, %27, %2
  %44 = icmp eq i32 %1, 0
  %45 = and i32 %8, 129
  %46 = icmp eq i32 %45, 1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %51, label %637

48:                                               ; preds = %13
  %49 = and i32 %8, 129
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %637

51:                                               ; preds = %48, %43
  %52 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 54
  %53 = load ptr, ptr %52, align 32
  %54 = icmp eq ptr %53, null
  br i1 %54, label %637, label %55

55:                                               ; preds = %51
  tail call void %53(ptr noundef %0, ptr noundef %5) #20
  br label %637

56:                                               ; preds = %39, %35
  %57 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %58 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.regulatory_request, ptr %5, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %62 = icmp eq i32 %1, 3
  %63 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %4, i32 0, i32 1
  %64 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %4, i32 0, i32 2
  br label %65

65:                                               ; preds = %538, %56
  %66 = phi i32 [ 0, %56 ], [ %539, %538 ]
  %67 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %538, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %68, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %538, label %74

74:                                               ; preds = %534, %70
  %75 = phi i32 [ %535, %534 ], [ 0, %70 ]
  %76 = load ptr, ptr %68, align 4
  %77 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75
  %78 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = mul i32 %79, 1000
  %81 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 2
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = add i32 %80, %83
  %85 = load volatile ptr, ptr @last_request, align 4
  %86 = getelementptr inbounds %struct.regulatory_request, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = call ptr @wiphy_idx_to_wiphy(i32 noundef %87) #20
  %89 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 9
  %90 = load i32, ptr %89, align 4
  %91 = call ptr @freq_reg_info(ptr noundef %0, i32 noundef %84) #20
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %393

93:                                               ; preds = %74
  %94 = add i32 %84, -20000
  %95 = call ptr @freq_reg_info(ptr noundef %0, i32 noundef %94) #20
  %96 = add i32 %84, 20000
  %97 = call ptr @freq_reg_info(ptr noundef %0, i32 noundef %96) #20
  %98 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %370, label %101

101:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %102 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %95, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %97, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %369

106:                                              ; preds = %101
  %107 = load i32, ptr %95, align 4
  store i32 %107, ptr %4, align 4
  %108 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %97, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  store i32 %109, ptr %63, align 4
  %110 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %95, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %97, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = call i32 @llvm.umin.i32(i32 %111, i32 %113) #20
  store i32 %114, ptr %64, align 4
  %115 = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef nonnull %4, i32 noundef %84, i32 noundef 20000) #20
  br i1 %115, label %116, label %369

116:                                              ; preds = %106
  %117 = load volatile ptr, ptr @last_request, align 4
  %118 = getelementptr inbounds %struct.regulatory_request, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  switch i32 %119, label %120 [
    i32 3, label %123
    i32 1, label %123
  ]

120:                                              ; preds = %116
  %121 = load ptr, ptr %61, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %116, %116
  br label %124

124:                                              ; preds = %123, %120
  %125 = phi ptr [ @cfg80211_regdomain, %123 ], [ %61, %120 ]
  %126 = load volatile ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 1
  %128 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 1
  %129 = call fastcc i32 @reg_rule_to_chan_bw_flags(ptr noundef %126, ptr noundef %95, ptr noundef %77) #20
  %130 = call fastcc i32 @reg_rule_to_chan_bw_flags(ptr noundef %126, ptr noundef %97, ptr noundef %77) #20
  %131 = getelementptr inbounds %struct.regulatory_request, ptr %85, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 2
  %134 = icmp ne ptr %88, null
  %135 = and i1 %134, %133
  %136 = icmp eq ptr %88, %0
  %137 = and i1 %136, %135
  br i1 %137, label %138, label %233

138:                                              ; preds = %124
  %139 = load i32, ptr %7, align 4
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %233, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 384
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 0, i32 2
  %148 = lshr i32 %144, 1
  %149 = and i32 %148, 8
  %150 = shl i32 %144, 6
  %151 = and i32 %150, 64
  %152 = and i32 %150, 512
  %153 = lshr i32 %144, 2
  %154 = and i32 %153, 1024
  %155 = lshr i32 %144, 8
  %156 = and i32 %155, 32
  %157 = lshr i32 %144, 10
  %158 = and i32 %157, 16
  %159 = and i32 %155, 128
  %160 = and i32 %155, 256
  %161 = lshr i32 %144, 4
  %162 = and i32 %161, 8192
  %163 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 384
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, i32 0, i32 2
  %168 = lshr i32 %164, 1
  %169 = and i32 %168, 8
  %170 = shl i32 %164, 6
  %171 = lshr i32 %164, 2
  %172 = and i32 %171, 1024
  %173 = lshr i32 %164, 8
  %174 = and i32 %173, 32
  %175 = lshr i32 %164, 10
  %176 = and i32 %175, 16
  %177 = and i32 %173, 128
  %178 = and i32 %173, 256
  %179 = lshr i32 %164, 4
  %180 = and i32 %179, 8192
  %181 = or i32 %130, %129
  %182 = or i32 %181, %149
  %183 = or i32 %182, %151
  %184 = or i32 %183, %152
  %185 = or i32 %184, %154
  %186 = or i32 %185, %156
  %187 = or i32 %186, %158
  %188 = or i32 %187, %159
  %189 = or i32 %188, %160
  %190 = or i32 %189, %162
  %191 = or i32 %190, %147
  %192 = or i32 %191, %169
  %193 = and i32 %170, 576
  %194 = or i32 %193, %172
  %195 = or i32 %194, %174
  %196 = or i32 %195, %176
  %197 = or i32 %196, %177
  %198 = or i32 %197, %178
  %199 = or i32 %198, %180
  %200 = or i32 %199, %167
  %201 = or i32 %200, %192
  %202 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 4
  store i32 %201, ptr %202, align 4
  store i32 %201, ptr %89, align 4
  %203 = load i32, ptr %127, align 4
  %204 = udiv i32 %203, 100
  %205 = load i32, ptr %128, align 4
  %206 = udiv i32 %205, 100
  %207 = call i32 @llvm.umin.i32(i32 %204, i32 %206) #20
  %208 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 5
  store i32 %207, ptr %208, align 4
  %209 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 10
  store i32 %207, ptr %209, align 4
  %210 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 1, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = udiv i32 %211, 100
  %213 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 1, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = udiv i32 %214, 100
  %216 = call i32 @llvm.umin.i32(i32 %212, i32 %215) #20
  %217 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 7
  store i32 %216, ptr %217, align 4
  %218 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %216, ptr %218, align 4
  %219 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 11
  store i32 %216, ptr %219, align 4
  %220 = and i32 %192, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %368, label %222

222:                                              ; preds = %142
  %223 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 14
  store i32 60000, ptr %223, align 4
  %224 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 4
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  %227 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 4
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  %230 = select i1 %226, i1 %229, i1 false
  br i1 %230, label %368, label %231

231:                                              ; preds = %222
  %232 = call i32 @llvm.umax.i32(i32 %225, i32 %228) #20
  store i32 %232, ptr %223, align 4
  br label %368

233:                                              ; preds = %138, %124
  %234 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 12
  store i32 0, ptr %234, align 4
  %235 = load volatile i32, ptr @jiffies, align 64
  %236 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 13
  store i32 %235, ptr %236, align 4
  %237 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 8
  store i8 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 3
  %239 = load i32, ptr %238, align 4
  %240 = and i32 %239, 384
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i32 0, i32 2
  %243 = lshr i32 %239, 1
  %244 = and i32 %243, 8
  %245 = shl i32 %239, 6
  %246 = and i32 %245, 64
  %247 = and i32 %245, 512
  %248 = lshr i32 %239, 2
  %249 = and i32 %248, 1024
  %250 = lshr i32 %239, 8
  %251 = and i32 %250, 32
  %252 = lshr i32 %239, 10
  %253 = and i32 %252, 16
  %254 = and i32 %250, 128
  %255 = and i32 %250, 256
  %256 = lshr i32 %239, 4
  %257 = and i32 %256, 8192
  %258 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 3
  %259 = load i32, ptr %258, align 4
  %260 = and i32 %259, 384
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i32 0, i32 2
  %263 = lshr i32 %259, 1
  %264 = and i32 %263, 8
  %265 = shl i32 %259, 6
  %266 = and i32 %265, 64
  %267 = and i32 %265, 512
  %268 = lshr i32 %259, 2
  %269 = and i32 %268, 1024
  %270 = lshr i32 %259, 8
  %271 = and i32 %270, 32
  %272 = lshr i32 %259, 10
  %273 = and i32 %272, 16
  %274 = and i32 %270, 128
  %275 = and i32 %270, 256
  %276 = lshr i32 %259, 4
  %277 = and i32 %276, 8192
  %278 = or i32 %129, %90
  %279 = or i32 %278, %130
  %280 = or i32 %279, %244
  %281 = or i32 %280, %246
  %282 = or i32 %281, %247
  %283 = or i32 %282, %249
  %284 = or i32 %283, %251
  %285 = or i32 %284, %253
  %286 = or i32 %285, %254
  %287 = or i32 %286, %255
  %288 = or i32 %287, %257
  %289 = or i32 %288, %242
  %290 = or i32 %289, %264
  %291 = or i32 %290, %266
  %292 = or i32 %291, %267
  %293 = or i32 %292, %269
  %294 = or i32 %293, %271
  %295 = or i32 %294, %273
  %296 = or i32 %295, %274
  %297 = or i32 %296, %275
  %298 = or i32 %297, %277
  %299 = or i32 %298, %262
  %300 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 4
  store i32 %299, ptr %300, align 4
  %301 = load i32, ptr %78, align 4
  %302 = mul i32 %301, 1000
  %303 = load i16, ptr %81, align 4
  %304 = zext i16 %303 to i32
  %305 = add i32 %302, %304
  %306 = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef nonnull %4, i32 noundef %305, i32 noundef 10000) #20
  br i1 %306, label %307, label %310

307:                                              ; preds = %233
  %308 = load i32, ptr %300, align 4
  %309 = and i32 %308, -4097
  store i32 %309, ptr %300, align 4
  br label %310

310:                                              ; preds = %307, %233
  %311 = load i32, ptr %78, align 4
  %312 = mul i32 %311, 1000
  %313 = load i16, ptr %81, align 4
  %314 = zext i16 %313 to i32
  %315 = add i32 %312, %314
  %316 = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef nonnull %4, i32 noundef %315, i32 noundef 20000) #20
  %317 = load i32, ptr %300, align 4
  br i1 %316, label %318, label %320

318:                                              ; preds = %310
  %319 = and i32 %317, -2049
  store i32 %319, ptr %300, align 4
  br label %320

320:                                              ; preds = %318, %310
  %321 = phi i32 [ %319, %318 ], [ %317, %310 ]
  %322 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 10
  %323 = load i32, ptr %322, align 4
  %324 = load i32, ptr %127, align 4
  %325 = udiv i32 %324, 100
  %326 = load i32, ptr %128, align 4
  %327 = udiv i32 %326, 100
  %328 = call i32 @llvm.umin.i32(i32 %325, i32 %327) #20
  %329 = call i32 @llvm.smin.i32(i32 %323, i32 %328) #20
  %330 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 5
  store i32 %329, ptr %330, align 4
  %331 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 1, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = udiv i32 %332, 100
  %334 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 1, i32 1
  %335 = load i32, ptr %334, align 4
  %336 = udiv i32 %335, 100
  %337 = call i32 @llvm.umin.i32(i32 %333, i32 %336) #20
  %338 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 7
  store i32 %337, ptr %338, align 4
  %339 = and i32 %321, 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %352, label %341

341:                                              ; preds = %320
  %342 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %95, i32 0, i32 4
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %343, 0
  %345 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %97, i32 0, i32 4
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %344, i1 %347, i1 false
  %349 = call i32 @llvm.umax.i32(i32 %343, i32 %346) #20
  %350 = select i1 %348, i32 60000, i32 %349
  %351 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 14
  store i32 %350, ptr %351, align 4
  br label %352

352:                                              ; preds = %341, %320
  %353 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 11
  %354 = load i32, ptr %353, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %366, label %356

356:                                              ; preds = %352
  br i1 %62, label %357, label %363

357:                                              ; preds = %356
  %358 = load i32, ptr %7, align 4
  %359 = and i32 %358, 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %337, ptr %362, align 4
  br label %368

363:                                              ; preds = %357, %356
  %364 = call i32 @llvm.smin.i32(i32 %354, i32 %337) #20
  %365 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %364, ptr %365, align 4
  br label %368

366:                                              ; preds = %352
  %367 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %337, ptr %367, align 4
  br label %368

368:                                              ; preds = %366, %363, %361, %231, %222, %142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %534

369:                                              ; preds = %106, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %370

370:                                              ; preds = %369, %93
  %371 = icmp eq ptr %91, inttoptr (i32 -34 to ptr)
  %372 = select i1 %62, i1 %371, i1 false
  br i1 %372, label %534, label %373

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.regulatory_request, ptr %85, i32 0, i32 2
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 2
  %377 = icmp ne ptr %88, null
  %378 = select i1 %376, i1 %377, i1 false
  %379 = icmp eq ptr %88, %0
  %380 = select i1 %378, i1 %379, i1 false
  br i1 %380, label %381, label %389

381:                                              ; preds = %373
  %382 = load i32, ptr %7, align 4
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %381
  %386 = load i32, ptr %89, align 4
  %387 = or i32 %386, 1
  store i32 %387, ptr %89, align 4
  %388 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 4
  store i32 %387, ptr %388, align 4
  br label %534

389:                                              ; preds = %381, %373
  %390 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 4
  %391 = load i32, ptr %390, align 4
  %392 = or i32 %391, 1
  store i32 %392, ptr %390, align 4
  br label %534

393:                                              ; preds = %74
  %394 = load volatile ptr, ptr @last_request, align 4
  %395 = getelementptr inbounds %struct.regulatory_request, ptr %394, i32 0, i32 2
  %396 = load i32, ptr %395, align 4
  switch i32 %396, label %397 [
    i32 3, label %400
    i32 1, label %400
  ]

397:                                              ; preds = %393
  %398 = load ptr, ptr %61, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %397, %393, %393
  br label %401

401:                                              ; preds = %400, %397
  %402 = phi ptr [ @cfg80211_regdomain, %400 ], [ %61, %397 ]
  %403 = load volatile ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 1
  %405 = call fastcc i32 @reg_rule_to_chan_bw_flags(ptr noundef %403, ptr noundef %91, ptr noundef %77) #20
  %406 = getelementptr inbounds %struct.regulatory_request, ptr %85, i32 0, i32 2
  %407 = load i32, ptr %406, align 4
  %408 = icmp eq i32 %407, 2
  %409 = icmp ne ptr %88, null
  %410 = and i1 %409, %408
  %411 = icmp eq ptr %88, %0
  %412 = and i1 %411, %410
  br i1 %412, label %413, label %465

413:                                              ; preds = %401
  %414 = load i32, ptr %7, align 4
  %415 = and i32 %414, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %465, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 3
  %419 = load i32, ptr %418, align 4
  %420 = and i32 %419, 384
  %421 = icmp eq i32 %420, 0
  %422 = select i1 %421, i32 0, i32 2
  %423 = lshr i32 %419, 1
  %424 = and i32 %423, 8
  %425 = shl i32 %419, 6
  %426 = lshr i32 %419, 2
  %427 = and i32 %426, 1024
  %428 = lshr i32 %419, 8
  %429 = and i32 %428, 32
  %430 = lshr i32 %419, 10
  %431 = and i32 %430, 16
  %432 = and i32 %428, 128
  %433 = and i32 %428, 256
  %434 = lshr i32 %419, 4
  %435 = and i32 %434, 8192
  %436 = or i32 %424, %405
  %437 = and i32 %425, 576
  %438 = or i32 %437, %427
  %439 = or i32 %438, %429
  %440 = or i32 %439, %431
  %441 = or i32 %440, %432
  %442 = or i32 %441, %433
  %443 = or i32 %442, %435
  %444 = or i32 %443, %436
  %445 = or i32 %444, %422
  store i32 %445, ptr %89, align 4
  %446 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 4
  store i32 %445, ptr %446, align 4
  %447 = load i32, ptr %404, align 4
  %448 = udiv i32 %447, 100
  %449 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 10
  store i32 %448, ptr %449, align 4
  %450 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 5
  store i32 %448, ptr %450, align 4
  %451 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 1, i32 1
  %452 = load i32, ptr %451, align 4
  %453 = udiv i32 %452, 100
  %454 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 11
  store i32 %453, ptr %454, align 4
  %455 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %453, ptr %455, align 4
  %456 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 7
  store i32 %453, ptr %456, align 4
  %457 = and i32 %436, 8
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %534, label %459

459:                                              ; preds = %417
  %460 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 14
  store i32 60000, ptr %460, align 4
  %461 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 4
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 0
  %464 = select i1 %463, i32 60000, i32 %462
  store i32 %464, ptr %460, align 4
  br label %534

465:                                              ; preds = %413, %401
  %466 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 12
  store i32 0, ptr %466, align 4
  %467 = load volatile i32, ptr @jiffies, align 64
  %468 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 13
  store i32 %467, ptr %468, align 4
  %469 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 8
  store i8 0, ptr %469, align 4
  %470 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 3
  %471 = load i32, ptr %470, align 4
  %472 = and i32 %471, 384
  %473 = icmp eq i32 %472, 0
  %474 = select i1 %473, i32 0, i32 2
  %475 = lshr i32 %471, 1
  %476 = and i32 %475, 8
  %477 = shl i32 %471, 6
  %478 = lshr i32 %471, 2
  %479 = and i32 %478, 1024
  %480 = lshr i32 %471, 8
  %481 = and i32 %480, 32
  %482 = lshr i32 %471, 10
  %483 = and i32 %482, 16
  %484 = and i32 %480, 128
  %485 = and i32 %480, 256
  %486 = lshr i32 %471, 4
  %487 = and i32 %486, 8192
  %488 = or i32 %405, %90
  %489 = or i32 %488, %476
  %490 = and i32 %477, 576
  %491 = or i32 %490, %479
  %492 = or i32 %491, %481
  %493 = or i32 %492, %483
  %494 = or i32 %493, %484
  %495 = or i32 %494, %485
  %496 = or i32 %495, %487
  %497 = or i32 %496, %489
  %498 = or i32 %497, %474
  %499 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 4
  store i32 %498, ptr %499, align 4
  %500 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 10
  %501 = load i32, ptr %500, align 4
  %502 = load i32, ptr %404, align 4
  %503 = udiv i32 %502, 100
  %504 = call i32 @llvm.smin.i32(i32 %501, i32 %503) #20
  %505 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 5
  store i32 %504, ptr %505, align 4
  %506 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 1, i32 1
  %507 = load i32, ptr %506, align 4
  %508 = udiv i32 %507, 100
  %509 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 7
  store i32 %508, ptr %509, align 4
  %510 = and i32 %489, 8
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %518, label %512

512:                                              ; preds = %465
  %513 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %91, i32 0, i32 4
  %514 = load i32, ptr %513, align 4
  %515 = icmp eq i32 %514, 0
  %516 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 14
  %517 = select i1 %515, i32 60000, i32 %514
  store i32 %517, ptr %516, align 4
  br label %518

518:                                              ; preds = %512, %465
  %519 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 11
  %520 = load i32, ptr %519, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %532, label %522

522:                                              ; preds = %518
  br i1 %62, label %523, label %529

523:                                              ; preds = %522
  %524 = load i32, ptr %7, align 4
  %525 = and i32 %524, 8
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %523
  %528 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %508, ptr %528, align 4
  br label %534

529:                                              ; preds = %523, %522
  %530 = call i32 @llvm.smin.i32(i32 %520, i32 %508) #20
  %531 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %530, ptr %531, align 4
  br label %534

532:                                              ; preds = %518
  %533 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %75, i32 6
  store i32 %508, ptr %533, align 4
  br label %534

534:                                              ; preds = %532, %529, %527, %459, %417, %389, %385, %370, %368
  %535 = add nuw i32 %75, 1
  %536 = load i32, ptr %71, align 4
  %537 = icmp ult i32 %535, %536
  br i1 %537, label %74, label %538

538:                                              ; preds = %534, %70, %65
  %539 = add nuw nsw i32 %66, 1
  %540 = icmp eq i32 %539, 6
  br i1 %540, label %541, label %65

541:                                              ; preds = %538
  %542 = load ptr, ptr @last_request, align 4
  %543 = icmp eq ptr %542, null
  %544 = load ptr, ptr @reg_beacon_list, align 4
  %545 = icmp eq ptr %544, @reg_beacon_list
  %546 = select i1 %543, i1 true, i1 %545
  br i1 %546, label %632, label %547

547:                                              ; preds = %629, %541
  %548 = phi ptr [ %630, %629 ], [ %544, %541 ]
  %549 = getelementptr inbounds %struct.reg_beacon, ptr %548, i32 0, i32 1
  %550 = load i32, ptr %549, align 4
  %551 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %550
  %552 = load ptr, ptr %551, align 4
  %553 = icmp eq ptr %552, null
  br i1 %553, label %629, label %554

554:                                              ; preds = %547
  %555 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %552, i32 0, i32 3
  %556 = load i32, ptr %555, align 4
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %629, label %558

558:                                              ; preds = %554
  %559 = getelementptr inbounds %struct.reg_beacon, ptr %548, i32 0, i32 1, i32 1
  %560 = getelementptr inbounds %struct.reg_beacon, ptr %548, i32 0, i32 1, i32 2
  br label %561

561:                                              ; preds = %625, %558
  %562 = phi ptr [ %552, %558 ], [ %628, %625 ]
  %563 = phi i32 [ 0, %558 ], [ %622, %625 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %564 = load ptr, ptr %562, align 4
  %565 = getelementptr %struct.ieee80211_channel, ptr %564, i32 %563
  %566 = getelementptr %struct.ieee80211_channel, ptr %564, i32 %563, i32 1
  %567 = load i32, ptr %566, align 4
  %568 = load i32, ptr %559, align 4
  %569 = icmp eq i32 %567, %568
  br i1 %569, label %570, label %621

570:                                              ; preds = %561
  %571 = getelementptr %struct.ieee80211_channel, ptr %564, i32 %563, i32 2
  %572 = load i16, ptr %571, align 4
  %573 = load i16, ptr %560, align 4
  %574 = icmp eq i16 %572, %573
  br i1 %574, label %575, label %621, !prof !13

575:                                              ; preds = %570
  %576 = getelementptr %struct.ieee80211_channel, ptr %564, i32 %563, i32 8
  %577 = load i8, ptr %576, align 4, !range !12
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %579, label %621

579:                                              ; preds = %575
  store i8 1, ptr %576, align 4
  %580 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %581 = load volatile ptr, ptr %61, align 4
  %582 = load volatile ptr, ptr @last_request, align 4
  %583 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %580, i32 0, i32 2
  %584 = load i8, ptr %583, align 1
  %585 = icmp eq i8 %584, 48
  br i1 %585, label %586, label %590

586:                                              ; preds = %579
  %587 = getelementptr %struct.ieee80211_regdomain, ptr %580, i32 0, i32 2, i32 1
  %588 = load i8, ptr %587, align 1
  %589 = icmp eq i8 %588, 48
  br i1 %589, label %610, label %590

590:                                              ; preds = %586, %579
  %591 = icmp eq ptr %581, null
  br i1 %591, label %600, label %592

592:                                              ; preds = %590
  %593 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %581, i32 0, i32 2
  %594 = load i8, ptr %593, align 1
  %595 = icmp eq i8 %594, 48
  br i1 %595, label %596, label %600

596:                                              ; preds = %592
  %597 = getelementptr %struct.ieee80211_regdomain, ptr %581, i32 0, i32 2, i32 1
  %598 = load i8, ptr %597, align 1
  %599 = icmp eq i8 %598, 48
  br i1 %599, label %610, label %600

600:                                              ; preds = %596, %592, %590
  %601 = icmp eq ptr %582, null
  br i1 %601, label %621, label %602

602:                                              ; preds = %600
  %603 = getelementptr inbounds %struct.regulatory_request, ptr %582, i32 0, i32 2
  %604 = load i32, ptr %603, align 4
  %605 = icmp eq i32 %604, 3
  br i1 %605, label %621, label %606

606:                                              ; preds = %602
  %607 = load i32, ptr %7, align 4
  %608 = and i32 %607, 1
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %621, label %610

610:                                              ; preds = %606, %596, %586
  %611 = load i32, ptr %7, align 4
  %612 = and i32 %611, 4
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %621

614:                                              ; preds = %610
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, ptr noundef align 4 dereferenceable(56) %565, i32 56, i1 false) #20
  %615 = getelementptr %struct.ieee80211_channel, ptr %564, i32 %563, i32 4
  %616 = load i32, ptr %615, align 4
  %617 = and i32 %616, 2
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %621, label %619

619:                                              ; preds = %614
  %620 = and i32 %616, -3
  store i32 %620, ptr %615, align 4
  call void @nl80211_send_beacon_hint_event(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %565) #20
  br label %621

621:                                              ; preds = %619, %614, %610, %606, %602, %600, %575, %570, %561
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #20
  %622 = add nuw i32 %563, 1
  %623 = load i32, ptr %555, align 4
  %624 = icmp ult i32 %622, %623
  br i1 %624, label %625, label %629

625:                                              ; preds = %621
  %626 = load i32, ptr %549, align 4
  %627 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %626
  %628 = load ptr, ptr %627, align 4
  br label %561

629:                                              ; preds = %621, %554, %547
  %630 = load ptr, ptr %548, align 4
  %631 = icmp eq ptr %630, @reg_beacon_list
  br i1 %631, label %632, label %547

632:                                              ; preds = %629, %541
  call fastcc void @reg_process_ht_flags(ptr noundef %0)
  %633 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 54
  %634 = load ptr, ptr %633, align 32
  %635 = icmp eq ptr %634, null
  br i1 %635, label %637, label %636

636:                                              ; preds = %632
  call void %634(ptr noundef %0, ptr noundef %5) #20
  br label %637

637:                                              ; preds = %636, %632, %55, %51, %48, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wiphy_all_share_dfs_chan_state(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @rtnl_is_locked() #20
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @wiphy_all_share_dfs_chan_state.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !13

7:                                                ; preds = %1
  store i1 true, ptr @wiphy_all_share_dfs_chan_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2983, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 2983) #20
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr @cfg80211_rdev_list, align 4
  %10 = icmp eq ptr %9, @cfg80211_rdev_list
  br i1 %10, label %109, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  br label %13

13:                                               ; preds = %106, %11
  %14 = phi ptr [ %9, %11 ], [ %107, %106 ]
  %15 = getelementptr i8, ptr %14, i32 540
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %106, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %18 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %19 = load volatile ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %18, ptr %19
  %22 = getelementptr i8, ptr %14, i32 800
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %18, ptr %23
  %26 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %21, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %25, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  br i1 %30, label %31, label %106

31:                                               ; preds = %103, %17
  %32 = phi i32 [ %104, %103 ], [ 0, %17 ]
  %33 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %32
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %34, null
  %38 = icmp ne ptr %36, null
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %103

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %34, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %36, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %97, %44
  %48 = phi i32 [ %42, %44 ], [ %98, %97 ]
  %49 = phi i32 [ %46, %44 ], [ %99, %97 ]
  %50 = phi i32 [ %46, %44 ], [ %100, %97 ]
  %51 = phi i32 [ 0, %44 ], [ %101, %97 ]
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %47
  %54 = load ptr, ptr %34, align 4
  %55 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %51, i32 4
  %56 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %51, i32 1
  %57 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %51, i32 12
  %58 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %51, i32 13
  %59 = load i32, ptr %55, align 4
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %59, 1
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %91, %53
  %65 = phi i32 [ %49, %53 ], [ %92, %91 ]
  %66 = phi i32 [ 0, %53 ], [ %93, %91 ]
  %67 = load ptr, ptr %36, align 4
  br i1 %61, label %91, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.ieee80211_channel, ptr %67, i32 %66, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 8
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %72, i1 %63, i1 false
  %74 = and i32 %70, 1
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = getelementptr %struct.ieee80211_channel, ptr %67, i32 %66, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %56, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, ptr %57, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = getelementptr %struct.ieee80211_channel, ptr %67, i32 %66, i32 12
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %57, align 4
  %88 = getelementptr %struct.ieee80211_channel, ptr %67, i32 %66, i32 13
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %58, align 4
  %90 = load i32, ptr %45, align 4
  br label %91

91:                                               ; preds = %85, %82, %77, %68, %64
  %92 = phi i32 [ %65, %64 ], [ %65, %68 ], [ %65, %77 ], [ %65, %82 ], [ %90, %85 ]
  %93 = add nuw nsw i32 %66, 1
  %94 = icmp slt i32 %93, %92
  br i1 %94, label %64, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr %41, align 4
  br label %97

97:                                               ; preds = %95, %47
  %98 = phi i32 [ %96, %95 ], [ %48, %47 ]
  %99 = phi i32 [ %92, %95 ], [ %49, %47 ]
  %100 = phi i32 [ %92, %95 ], [ %50, %47 ]
  %101 = add nuw nsw i32 %51, 1
  %102 = icmp slt i32 %101, %98
  br i1 %102, label %47, label %103

103:                                              ; preds = %97, %40, %31
  %104 = add nuw nsw i32 %32, 1
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %31

106:                                              ; preds = %103, %17, %13
  %107 = load ptr, ptr %14, align 4
  %108 = icmp eq ptr %107, @cfg80211_rdev_list
  br i1 %108, label %109, label %13

109:                                              ; preds = %106, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reg_process_self_managed_hints() unnamed_addr #2 {
  %1 = tail call i32 @rtnl_is_locked() #20
  %2 = icmp eq i32 %1, 0
  %3 = load i1, ptr @reg_process_self_managed_hints.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !13

6:                                                ; preds = %0
  store i1 true, ptr @reg_process_self_managed_hints.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3166, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 3166) #20
  br label %7

7:                                                ; preds = %6, %0
  %8 = load ptr, ptr @cfg80211_rdev_list, align 4
  %9 = icmp eq ptr %8, @cfg80211_rdev_list
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %13, %10 ], [ %8, %7 ]
  %12 = getelementptr i8, ptr %11, i32 540
  tail call void @mutex_lock(ptr noundef %12) #20
  tail call fastcc void @reg_process_self_managed_hint(ptr noundef %12)
  tail call void @mutex_unlock(ptr noundef %12) #20
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, @cfg80211_rdev_list
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %7
  %16 = load ptr, ptr @system_power_efficient_wq, align 4
  %17 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %16, ptr noundef nonnull @reg_check_chans, i32 noundef 6000) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_regulatory_deregister(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load volatile ptr, ptr @last_request, align 4
  %3 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @kvfree_call_rcu(ptr noundef nonnull %4, ptr noundef null) #20
  br label %7

7:                                                ; preds = %6, %1
  store volatile ptr null, ptr %3, align 4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @wiphy_idx_to_wiphy(i32 noundef %11) #20
  %13 = icmp ne ptr %12, null
  %14 = icmp eq ptr %12, %0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  store i32 -1, ptr %10, align 4
  %17 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 8
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %9, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_idx_to_wiphy(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @cfg80211_get_unii(i32 noundef %0) local_unnamed_addr #9 {
  %2 = add i32 %0, -5150
  %3 = icmp ult i32 %2, 101
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = add i32 %0, -5251
  %6 = icmp ult i32 %5, 100
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = add i32 %0, -5351
  %9 = icmp ult i32 %8, 120
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = add i32 %0, -5471
  %12 = icmp ult i32 %11, 255
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = add i32 %0, -5726
  %15 = icmp ult i32 %14, 100
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = add i32 %0, -5926
  %18 = icmp ult i32 %17, 500
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = add i32 %0, -6426
  %21 = icmp ult i32 %20, 100
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = add i32 %0, -6526
  %24 = icmp ult i32 %23, 350
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = add i32 %0, -6876
  %27 = icmp ult i32 %26, 250
  %28 = select i1 %27, i32 8, i32 -22
  br label %29

29:                                               ; preds = %25, %22, %19, %16, %13, %10, %7, %4, %1
  %30 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 2, %7 ], [ 3, %10 ], [ 4, %13 ], [ 5, %16 ], [ 6, %19 ], [ 7, %22 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regulatory_indoor_allowed() local_unnamed_addr #10 {
  %1 = load i8, ptr @reg_is_indoor, align 1, !range !12
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regulatory_pre_cac_allowed(ptr noundef %0) #2 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %2 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %3 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %8, label %10

8:                                                ; preds = %1
  %9 = icmp eq i32 %7, 2
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  %14 = icmp eq i32 %7, 2
  %15 = and i1 %14, %13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i1 [ %15, %10 ], [ %9, %8 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulatory_propagate_dfs_state(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @regulatory_propagate_dfs_state.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !13

10:                                               ; preds = %4
  store i1 true, ptr @regulatory_propagate_dfs_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4221, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 4221) #20
  br label %11

11:                                               ; preds = %10, %4
  %12 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1) #20
  br i1 %12, label %13, label %19, !prof !22

13:                                               ; preds = %11
  %14 = load ptr, ptr @cfg80211_rdev_list, align 4
  %15 = icmp eq ptr %14, @cfg80211_rdev_list
  br i1 %15, label %106, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  %18 = icmp ult i32 %3, 2
  br label %20

19:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4223, i32 noundef 9, ptr noundef null) #20
  br label %106

20:                                               ; preds = %103, %16
  %21 = phi ptr [ %14, %16 ], [ %104, %103 ]
  %22 = getelementptr i8, ptr %21, i32 -4
  %23 = getelementptr i8, ptr %21, i32 540
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %103, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %26 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %27 = load volatile ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr %26, ptr %27
  %30 = getelementptr i8, ptr %21, i32 800
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %26, ptr %31
  %34 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %29, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %33, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  br i1 %38, label %39, label %103

39:                                               ; preds = %25
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.ieee80211_channel, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, 1000
  %44 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %23, i32 noundef %43) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %103, label %46

46:                                               ; preds = %39
  tail call void @cfg80211_set_dfs_state(ptr noundef %23, ptr noundef %1, i32 noundef %2) #20
  br i1 %18, label %47, label %102

47:                                               ; preds = %46
  tail call void @cfg80211_sched_dfs_chan_update(ptr noundef %22) #20
  %48 = getelementptr i8, ptr %21, i32 1292
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %102, label %51

51:                                               ; preds = %99, %47
  %52 = phi ptr [ %100, %99 ], [ %49, %47 ]
  %53 = getelementptr i8, ptr %52, i32 229
  %54 = load i8, ptr %53, align 1, !range !12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %99, label %56

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %52, i32 180
  %58 = tail call zeroext i1 @cfg80211_chandef_dfs_usable(ptr noundef %23, ptr noundef %57) #20
  br i1 %58, label %99, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %52, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_end_cac, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = tail call ptr @llvm.thread.pointer() #20
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !28
  %76 = tail call i32 @__traceiter_rdev_end_cac(ptr noundef null, ptr noundef %23, ptr noundef %61) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !29
  br label %77

77:                                               ; preds = %75, %64, %59
  %78 = load ptr, ptr %22, align 32
  %79 = getelementptr inbounds %struct.cfg80211_ops, ptr %78, i32 0, i32 81
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void %80(ptr noundef %23, ptr noundef %61) #20
  br label %83

83:                                               ; preds = %82, %77
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = tail call ptr @llvm.thread.pointer() #20
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !30
  %98 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %23) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  br label %99

99:                                               ; preds = %97, %86, %83, %56, %51
  %100 = load ptr, ptr %52, align 4
  %101 = icmp eq ptr %100, %48
  br i1 %101, label %102, label %51

102:                                              ; preds = %99, %47, %46
  tail call void @nl80211_radar_notify(ptr noundef %22, ptr noundef %1, i32 noundef %3, ptr noundef null, i32 noundef 3264) #20
  br label %103

103:                                              ; preds = %102, %39, %25, %20
  %104 = load ptr, ptr %21, align 4
  %105 = icmp eq ptr %104, @cfg80211_rdev_list
  br i1 %105, label %106, label %20

106:                                              ; preds = %103, %19, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_set_dfs_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_dfs_chan_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_radar_notify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @regulatory_init() local_unnamed_addr #11 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #20
  %2 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #20
  store ptr @.str.10, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false) #20
  %4 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #20
  store ptr %4, ptr @reg_pdev, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = ptrtoint ptr %4 to i32
  br label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr @cfg80211_world_regdom, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !32
  store volatile ptr %9, ptr @cfg80211_regdomain, align 4
  store i8 57, ptr @user_alpha2, align 1
  store i8 55, ptr getelementptr inbounds ([2 x i8], ptr @user_alpha2, i32 0, i32 1), align 1
  %10 = call fastcc i32 @regulatory_init_db() #24
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @regulatory_init_db() unnamed_addr #11 section ".init.text" {
  %1 = load ptr, ptr @reg_pdev, align 4
  %2 = icmp eq ptr %1, null
  %3 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %28, label %5

5:                                                ; preds = %0
  %6 = tail call fastcc i32 @load_builtin_regdb_keys() #24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load ptr, ptr @cfg80211_world_regdom, align 4
  %10 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %9, i32 0, i32 2
  %11 = tail call fastcc i32 @regulatory_hint_core(ptr noundef %10)
  switch i32 %11, label %14 [
    i32 0, label %16
    i32 -12, label %12
  ]

12:                                               ; preds = %8
  %13 = load ptr, ptr @reg_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %13) #20
  br label %28

14:                                               ; preds = %8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #23
  br label %16

16:                                               ; preds = %14, %8
  %17 = load ptr, ptr @ieee80211_regdom, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %17, align 1
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %17, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 48
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %19, %16
  %27 = tail call i32 @regulatory_hint_user(ptr noundef %17, i32 noundef 0)
  br label %28

28:                                               ; preds = %26, %22, %12, %5, %0
  %29 = phi i32 [ -12, %12 ], [ -22, %0 ], [ %6, %5 ], [ 0, %26 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulatory_exit() local_unnamed_addr #2 {
  %1 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @reg_work) #20
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @crda_timeout) #20
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @reg_check_chans) #20
  tail call void @rtnl_lock() #20
  tail call fastcc void @reset_regdomains(i1 noundef zeroext true, ptr noundef null)
  tail call void @rtnl_unlock() #20
  %4 = load ptr, ptr @reg_pdev, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 0, i32 7
  %6 = load i8, ptr %5, align 8
  %7 = or i8 %6, 16
  store i8 %7, ptr %5, align 8
  tail call void @platform_device_unregister(ptr noundef %4) #20
  %8 = load ptr, ptr @reg_pending_beacons, align 4
  %9 = icmp eq ptr %8, @reg_pending_beacons
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %0
  %11 = phi ptr [ %12, %10 ], [ %8, %0 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @kfree(ptr noundef %11) #20
  %16 = icmp eq ptr %12, @reg_pending_beacons
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %0
  %18 = load ptr, ptr @reg_beacon_list, align 4
  %19 = icmp eq ptr %18, @reg_beacon_list
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %22, %20 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %22, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call void @kfree(ptr noundef %21) #20
  %26 = icmp eq ptr %22, @reg_beacon_list
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %17
  %28 = load ptr, ptr @reg_requests_list, align 4
  %29 = icmp eq ptr %28, @reg_requests_list
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %33, %30 ], [ %28, %27 ]
  %32 = getelementptr i8, ptr %31, i32 -36
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  tail call void @kfree(ptr noundef %32) #20
  %37 = icmp eq ptr %33, @reg_requests_list
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27
  %39 = load ptr, ptr @regdb, align 4
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @kfree(ptr noundef nonnull %39) #20
  br label %44

44:                                               ; preds = %43, %38
  %45 = load ptr, ptr @cfg80211_user_regdom, align 4
  %46 = icmp eq ptr %45, null
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %48 = or i1 %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @kfree(ptr noundef nonnull %45) #20
  br label %50

50:                                               ; preds = %49, %44
  %51 = load ptr, ptr @builtin_regdb_keys, align 4
  tail call void @key_put(ptr noundef %51) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reset_regdomains(i1 noundef zeroext %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @rtnl_is_locked() #20
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @reset_regdomains.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %2
  store i1 true, ptr @reset_regdomains.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 326, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 326) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %11 = load ptr, ptr @cfg80211_world_regdom, align 4
  %12 = icmp eq ptr %10, %11
  %13 = select i1 %12, ptr null, ptr %10
  %14 = icmp eq ptr %11, @world_regdom
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store ptr null, ptr @cfg80211_world_regdom, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi ptr [ null, %15 ], [ %11, %9 ]
  %18 = icmp eq ptr %13, @world_regdom
  %19 = icmp eq ptr %13, null
  %20 = or i1 %18, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  tail call void @kvfree_call_rcu(ptr noundef nonnull %13, ptr noundef null) #20
  %22 = load ptr, ptr @cfg80211_world_regdom, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @kvfree_call_rcu(ptr noundef nonnull %24, ptr noundef null) #20
  br label %27

27:                                               ; preds = %26, %23
  store ptr @world_regdom, ptr @cfg80211_world_regdom, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !33
  store volatile ptr %1, ptr @cfg80211_regdomain, align 4
  br i1 %0, label %28, label %38

28:                                               ; preds = %27
  %29 = load volatile ptr, ptr @last_request, align 4
  %30 = icmp eq ptr %29, @core_request_world
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load volatile ptr, ptr @last_request, align 4
  %33 = icmp ne ptr %32, @core_request_world
  %34 = icmp ne ptr %32, null
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @kvfree_call_rcu(ptr noundef nonnull %32, ptr noundef null) #20
  br label %37

37:                                               ; preds = %36, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  store volatile ptr @core_request_world, ptr @last_request, align 4
  br label %38

38:                                               ; preds = %37, %28, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_wmm_rule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fwdb_rule, ptr %2, i32 0, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = zext i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = getelementptr i8, ptr %0, i32 %10
  %12 = tail call fastcc zeroext i1 @valid_wmm(ptr noundef %11)
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fwdb_wmm_rule, ptr %11, i32 0, i32 1
  br label %28

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.fwdb_rule, ptr %2, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr inbounds %struct.fwdb_rule, ptr %2, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = load i8, ptr %1, align 4
  %23 = zext i8 %22 to i32
  %24 = getelementptr [2 x i8], ptr %1, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %18, i32 noundef %21, i32 noundef %23, i32 noundef %26) #23
  br label %76

28:                                               ; preds = %28, %13
  %29 = phi i32 [ 0, %13 ], [ %72, %28 ]
  %30 = getelementptr [4 x %struct.fwdb_wmm_ac], ptr %11, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = lshr i8 %31, 4
  %33 = zext i8 %32 to i16
  %34 = shl nsw i16 -1, %33
  %35 = xor i16 %34, -1
  %36 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %5, i32 0, i32 %29
  store i16 %35, ptr %36, align 2
  %37 = load i8, ptr %30, align 1
  %38 = and i8 %37, 15
  %39 = zext i8 %38 to i16
  %40 = shl nsw i16 -1, %39
  %41 = xor i16 %40, -1
  %42 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %5, i32 0, i32 %29, i32 1
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.fwdb_wmm_ac, ptr %30, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %5, i32 0, i32 %29, i32 3
  store i8 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.fwdb_wmm_ac, ptr %30, i32 0, i32 2
  %47 = load i16, ptr %46, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = mul i16 %48, 1000
  %50 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %5, i32 0, i32 %29, i32 2
  store i16 %49, ptr %50, align 2
  %51 = getelementptr [4 x %struct.fwdb_wmm_ac], ptr %14, i32 0, i32 %29
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 4
  %54 = zext i8 %53 to i16
  %55 = shl nsw i16 -1, %54
  %56 = xor i16 %55, -1
  %57 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %29
  store i16 %56, ptr %57, align 2
  %58 = load i8, ptr %51, align 1
  %59 = and i8 %58, 15
  %60 = zext i8 %59 to i16
  %61 = shl nsw i16 -1, %60
  %62 = xor i16 %61, -1
  %63 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %29, i32 1
  store i16 %62, ptr %63, align 2
  %64 = getelementptr [4 x %struct.fwdb_wmm_ac], ptr %14, i32 0, i32 %29, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %29, i32 3
  store i8 %65, ptr %66, align 2
  %67 = getelementptr [4 x %struct.fwdb_wmm_ac], ptr %14, i32 0, i32 %29, i32 2
  %68 = load i16, ptr %67, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %70 = mul i16 %69, 1000
  %71 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %29, i32 2
  store i16 %70, ptr %71, align 2
  %72 = add nuw nsw i32 %29, 1
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %28

74:                                               ; preds = %28
  %75 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 5
  store i8 1, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %15
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @valid_wmm(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load i8, ptr %0, align 1
  %3 = lshr i8 %2, 4
  %4 = zext i8 %3 to i32
  %5 = shl nsw i32 -1, %4
  %6 = and i8 %2, 15
  %7 = zext i8 %6 to i32
  %8 = shl nsw i32 -1, %7
  %9 = icmp ult i32 %8, %5
  br i1 %9, label %108, label %112

10:                                               ; preds = %108
  %11 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = lshr i8 %12, 4
  %14 = zext i8 %13 to i32
  %15 = shl nsw i32 -1, %14
  %16 = and i8 %12, 15
  %17 = zext i8 %16 to i32
  %18 = shl nsw i32 -1, %17
  %19 = icmp ult i32 %18, %15
  br i1 %19, label %20, label %112

20:                                               ; preds = %10
  %21 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 1, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %112, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i32
  %29 = shl nsw i32 -1, %28
  %30 = and i8 %26, 15
  %31 = zext i8 %30 to i32
  %32 = shl nsw i32 -1, %31
  %33 = icmp ult i32 %32, %29
  br i1 %33, label %34, label %112

34:                                               ; preds = %24
  %35 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 2, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %112, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = lshr i8 %40, 4
  %42 = zext i8 %41 to i32
  %43 = shl nsw i32 -1, %42
  %44 = and i8 %40, 15
  %45 = zext i8 %44 to i32
  %46 = shl nsw i32 -1, %45
  %47 = icmp ult i32 %46, %43
  br i1 %47, label %48, label %112

48:                                               ; preds = %38
  %49 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 3, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %112, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = lshr i8 %54, 4
  %56 = zext i8 %55 to i32
  %57 = shl nsw i32 -1, %56
  %58 = and i8 %54, 15
  %59 = zext i8 %58 to i32
  %60 = shl nsw i32 -1, %59
  %61 = icmp ult i32 %60, %57
  br i1 %61, label %62, label %112

62:                                               ; preds = %52
  %63 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 4, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %112, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 5
  %68 = load i8, ptr %67, align 1
  %69 = lshr i8 %68, 4
  %70 = zext i8 %69 to i32
  %71 = shl nsw i32 -1, %70
  %72 = and i8 %68, 15
  %73 = zext i8 %72 to i32
  %74 = shl nsw i32 -1, %73
  %75 = icmp ult i32 %74, %71
  br i1 %75, label %76, label %112

76:                                               ; preds = %66
  %77 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 5, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %112, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 6
  %82 = load i8, ptr %81, align 1
  %83 = lshr i8 %82, 4
  %84 = zext i8 %83 to i32
  %85 = shl nsw i32 -1, %84
  %86 = and i8 %82, 15
  %87 = zext i8 %86 to i32
  %88 = shl nsw i32 -1, %87
  %89 = icmp ult i32 %88, %85
  br i1 %89, label %90, label %112

90:                                               ; preds = %80
  %91 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 6, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %90
  %95 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 7
  %96 = load i8, ptr %95, align 1
  %97 = lshr i8 %96, 4
  %98 = zext i8 %97 to i32
  %99 = shl nsw i32 -1, %98
  %100 = and i8 %96, 15
  %101 = zext i8 %100 to i32
  %102 = shl nsw i32 -1, %101
  %103 = icmp ult i32 %102, %99
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 7, i32 1
  %106 = load i8, ptr %105, align 1
  %107 = icmp ne i8 %106, 0
  br label %112

108:                                              ; preds = %1
  %109 = getelementptr %struct.fwdb_wmm_ac, ptr %0, i32 0, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %10

112:                                              ; preds = %108, %104, %94, %90, %80, %76, %66, %62, %52, %48, %38, %34, %24, %20, %10, %1
  %113 = phi i1 [ false, %1 ], [ false, %108 ], [ false, %10 ], [ false, %20 ], [ false, %24 ], [ false, %34 ], [ false, %38 ], [ false, %48 ], [ false, %52 ], [ false, %62 ], [ false, %66 ], [ false, %76 ], [ false, %80 ], [ false, %90 ], [ false, %94 ], [ %107, %104 ]
  ret i1 %113
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_pkcs7_signature(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reg_rule_to_chan_bw_flags(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 4
  %6 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, 1000
  %11 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = add i32 %10, %13
  %15 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %79, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %22 ]
  %24 = icmp uge i32 %23, %21
  %25 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %23
  %26 = icmp eq ptr %25, %1
  %27 = or i1 %24, %26
  %28 = add nuw i32 %23, 1
  br i1 %27, label %29, label %22

29:                                               ; preds = %22
  %30 = icmp eq i32 %23, %21
  br i1 %30, label %65, label %31

31:                                               ; preds = %37, %29
  %32 = phi ptr [ %39, %37 ], [ %1, %29 ]
  %33 = phi i32 [ %38, %37 ], [ %23, %29 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, ptr %32, align 4
  br label %44

37:                                               ; preds = %31
  %38 = add i32 %33, -1
  %39 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %38
  %40 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %32, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %31

44:                                               ; preds = %37, %35
  %45 = phi i32 [ %36, %35 ], [ %42, %37 ]
  %46 = add i32 %21, -1
  %47 = tail call i32 @llvm.umax.i32(i32 %23, i32 %46) #20
  br label %48

48:                                               ; preds = %55, %44
  %49 = phi ptr [ %1, %44 ], [ %57, %55 ]
  %50 = phi i32 [ %23, %44 ], [ %56, %55 ]
  %51 = icmp eq i32 %50, %47
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %49, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  br label %62

55:                                               ; preds = %48
  %56 = add i32 %50, 1
  %57 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %49, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %58, %60
  br i1 %61, label %62, label %48

62:                                               ; preds = %55, %52
  %63 = phi i32 [ %54, %52 ], [ %60, %55 ]
  %64 = sub i32 %63, %45
  br label %65

65:                                               ; preds = %62, %29
  %66 = phi i32 [ %64, %62 ], [ 0, %29 ]
  %67 = and i32 %16, 65536
  %68 = icmp eq i32 %67, 0
  %69 = tail call i32 @llvm.umin.i32(i32 %66, i32 80000) #20
  %70 = select i1 %68, i32 %66, i32 %69
  %71 = and i32 %16, 32768
  %72 = icmp eq i32 %71, 0
  %73 = tail call i32 @llvm.umin.i32(i32 %70, i32 40000) #20
  %74 = select i1 %72, i32 %70, i32 %73
  %75 = and i32 %16, 24576
  %76 = icmp eq i32 %75, 24576
  %77 = tail call i32 @llvm.umin.i32(i32 %74, i32 20000) #20
  %78 = select i1 %76, i32 %77, i32 %74
  br label %79

79:                                               ; preds = %65, %3
  %80 = phi i32 [ %78, %65 ], [ %7, %3 ]
  %81 = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %1, i32 noundef %14, i32 noundef 10000) #20
  %82 = select i1 %81, i32 0, i32 4096
  %83 = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %1, i32 noundef %14, i32 noundef 20000) #20
  %84 = or i32 %82, 2048
  %85 = select i1 %83, i32 %82, i32 %84
  br i1 %5, label %86, label %110

86:                                               ; preds = %89, %79
  %87 = phi i32 [ %90, %89 ], [ %80, %79 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %126, label %89

89:                                               ; preds = %86
  %90 = sdiv i32 %87, 2
  %91 = load i32, ptr %1, align 4
  %92 = add i32 %90, %91
  %93 = sub i32 %14, %92
  %94 = srem i32 %93, %87
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86

96:                                               ; preds = %89
  %97 = sdiv i32 %87, 1000
  switch i32 %97, label %108 [
    i32 1, label %98
    i32 2, label %100
    i32 4, label %102
    i32 8, label %104
    i32 16, label %106
  ]

98:                                               ; preds = %96
  %99 = or i32 %85, 16384
  br label %126

100:                                              ; preds = %96
  %101 = or i32 %85, 32768
  br label %126

102:                                              ; preds = %96
  %103 = or i32 %85, 65536
  br label %126

104:                                              ; preds = %96
  %105 = or i32 %85, 131072
  br label %126

106:                                              ; preds = %96
  %107 = or i32 %85, 262144
  br label %126

108:                                              ; preds = %96
  %109 = or i32 %85, 1
  br label %126

110:                                              ; preds = %79
  %111 = icmp ult i32 %80, 10000
  %112 = or i32 %85, 4096
  %113 = select i1 %111, i32 %112, i32 %85
  %114 = icmp ult i32 %80, 20000
  %115 = or i32 %113, 2048
  %116 = select i1 %114, i32 %115, i32 %113
  %117 = icmp ult i32 %80, 40000
  %118 = or i32 %116, 48
  %119 = select i1 %117, i32 %118, i32 %116
  %120 = icmp ult i32 %80, 80000
  %121 = or i32 %119, 128
  %122 = select i1 %120, i32 %121, i32 %119
  %123 = icmp ult i32 %80, 160000
  %124 = or i32 %122, 256
  %125 = select i1 %123, i32 %124, i32 %122
  br label %126

126:                                              ; preds = %110, %108, %106, %104, %102, %100, %98, %86
  %127 = phi i32 [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %125, %110 ], [ %85, %86 ]
  ret i32 %127
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_query_database(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [12 x i8], align 1
  %3 = alloca [2 x ptr], align 8
  %4 = getelementptr inbounds %struct.regulatory_request, ptr %0, i32 0, i32 4
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @query_regdb_file.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !13

10:                                               ; preds = %1
  store i1 true, ptr @query_regdb_file.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1083, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 1083) #20
  br label %11

11:                                               ; preds = %10, %1
  %12 = load ptr, ptr @regdb, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @query_regdb(ptr noundef %4) #20
  br label %23

16:                                               ; preds = %11
  %17 = tail call ptr @kmemdup(ptr noundef %4, i32 noundef 2, i32 noundef 3264) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @reg_pdev, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %21, i32 noundef 3264, ptr noundef nonnull %17, ptr noundef nonnull @regdb_fw_cb) #20
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %15, %14 ], [ %22, %19 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %23, %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %2, i8 0, i32 12, i1 false) #20, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr %2, ptr %3, align 8
  %27 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr null, ptr %27, align 4
  %28 = load i8, ptr %4, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr %struct.regulatory_request, ptr %0, i32 0, i32 4, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 12, ptr noundef nonnull @.str.17, i32 noundef %29, i32 noundef %32) #20
  %34 = load i32, ptr @reg_crda_timeouts, align 4
  %35 = icmp ugt i32 %34, 10
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr @reg_pdev, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %39 = call i32 @kobject_uevent_env(ptr noundef %38, i32 noundef 2, ptr noundef nonnull %3) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr @system_power_efficient_wq, align 4
  %43 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %42, ptr noundef nonnull @crda_timeout, i32 noundef 315) #20
  br label %44

44:                                               ; preds = %41, %36, %26
  %45 = phi i32 [ 0, %41 ], [ -22, %26 ], [ %39, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %44, %23
  %48 = phi i1 [ true, %23 ], [ %46, %44 ]
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @query_regdb(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr @regdb, align 4
  %3 = tail call i32 @rtnl_is_locked() #20
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @query_regdb.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %1
  store i1 true, ptr @query_regdb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1022, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 1022) #20
  br label %9

9:                                                ; preds = %8, %1
  %10 = load ptr, ptr @regdb, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %141

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fwdb_header, ptr %2, i32 0, i32 2
  %16 = getelementptr inbounds %struct.fwdb_country, ptr %15, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %141, label %19

19:                                               ; preds = %14
  %20 = icmp ne ptr %0, null
  %21 = getelementptr i8, ptr %0, i32 1
  br label %22

22:                                               ; preds = %136, %19
  %23 = phi i16 [ %17, %19 ], [ %139, %136 ]
  %24 = phi ptr [ %15, %19 ], [ %137, %136 ]
  %25 = icmp ne ptr %24, null
  %26 = and i1 %20, %25
  br i1 %26, label %27, label %136

27:                                               ; preds = %22
  %28 = load i8, ptr %0, align 1
  %29 = load i8, ptr %24, align 1
  %30 = icmp eq i8 %28, %29
  br i1 %30, label %31, label %136

31:                                               ; preds = %27
  %32 = load i8, ptr %21, align 1
  %33 = getelementptr i8, ptr %24, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %32, %34
  br i1 %35, label %36, label %136

36:                                               ; preds = %31
  %37 = tail call i16 @llvm.bswap.i16(i16 %23) #20
  %38 = zext i16 %37 to i32
  %39 = shl nuw nsw i32 %38, 2
  %40 = getelementptr i8, ptr %10, i32 %39
  %41 = getelementptr inbounds %struct.fwdb_collection, ptr %40, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %43, 96
  %45 = or i32 %44, 20
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %141, label %48

48:                                               ; preds = %36
  %49 = getelementptr i8, ptr %24, i32 1
  %50 = load i8, ptr %41, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %46, i32 0, i32 1
  store i32 %51, ptr %52, align 8
  %53 = load i8, ptr %24, align 4
  %54 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %46, i32 0, i32 2
  store i8 %53, ptr %54, align 4
  %55 = load i8, ptr %49, align 1
  %56 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 2, i32 1
  store i8 %55, ptr %56, align 1
  %57 = getelementptr inbounds %struct.fwdb_collection, ptr %40, i32 0, i32 2
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %46, i32 0, i32 3
  store i32 %59, ptr %60, align 16
  %61 = icmp eq i8 %50, 0
  br i1 %61, label %125, label %62

62:                                               ; preds = %121, %48
  %63 = phi i32 [ %122, %121 ], [ 0, %48 ]
  %64 = load i8, ptr %40, align 4
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %65, 1
  %67 = and i32 %66, 510
  %68 = getelementptr i8, ptr %40, i32 %67
  %69 = getelementptr i16, ptr %68, i32 %63
  %70 = load i16, ptr %69, align 2
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #20
  %72 = zext i16 %71 to i32
  %73 = shl nuw nsw i32 %72, 2
  %74 = getelementptr i8, ptr %10, i32 %73
  %75 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %63
  %76 = getelementptr inbounds %struct.fwdb_rule, ptr %74, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #20
  store i32 %78, ptr %75, align 4
  %79 = getelementptr inbounds %struct.fwdb_rule, ptr %74, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #20
  %82 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %75, i32 0, i32 1
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.fwdb_rule, ptr %74, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #20
  %86 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %75, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  %87 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %63, i32 1
  store i32 0, ptr %87, align 32
  %88 = getelementptr inbounds %struct.fwdb_rule, ptr %74, i32 0, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #20
  %91 = zext i16 %90 to i32
  %92 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %63, i32 1, i32 1
  store i32 %91, ptr %92, align 4
  %93 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %63, i32 3
  %94 = getelementptr inbounds %struct.fwdb_rule, ptr %74, i32 0, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = and i8 %95, 1
  %97 = shl i8 %95, 2
  %98 = and i8 %97, 8
  %99 = or i8 %98, %96
  %100 = and i8 %97, 16
  %101 = or i8 %99, %100
  %102 = shl i8 %95, 4
  %103 = and i8 %102, -128
  %104 = or i8 %101, %103
  %105 = zext i8 %104 to i32
  %106 = and i8 %95, 16
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 7
  %109 = or i32 %108, %105
  store i32 %109, ptr %93, align 8
  %110 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %63, i32 4
  store i32 0, ptr %110, align 4
  %111 = load i8, ptr %74, align 4
  %112 = icmp ugt i8 %111, 17
  br i1 %112, label %113, label %121

113:                                              ; preds = %62
  %114 = getelementptr inbounds %struct.fwdb_rule, ptr %74, i32 0, i32 6
  %115 = load i16, ptr %114, align 4
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #20
  %117 = zext i16 %116 to i32
  %118 = mul nuw nsw i32 %117, 1000
  store i32 %118, ptr %110, align 4
  %119 = icmp ugt i8 %111, 19
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  tail call fastcc void @set_wmm_rule(ptr noundef %10, ptr noundef nonnull %24, ptr noundef %74, ptr noundef %75) #20
  br label %121

121:                                              ; preds = %120, %113, %62
  %122 = add nuw i32 %63, 1
  %123 = load i32, ptr %52, align 8
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %62, label %125

125:                                              ; preds = %121, %48
  %126 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %127 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %126, i32 noundef 3520, i32 noundef 12) #21
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call void @kfree(ptr noundef nonnull %46) #20
  br label %141

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.reg_regdb_apply_request, ptr %127, i32 0, i32 1
  store ptr %46, ptr %131, align 8
  tail call void @mutex_lock(ptr noundef nonnull @reg_regdb_apply_mutex) #20
  %132 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_regdb_apply_list, i32 0, i32 1), align 4
  store ptr %127, ptr getelementptr inbounds (%struct.list_head, ptr @reg_regdb_apply_list, i32 0, i32 1), align 4
  store ptr @reg_regdb_apply_list, ptr %127, align 8
  %133 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %132, ptr %133, align 4
  store volatile ptr %127, ptr %132, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @reg_regdb_apply_mutex) #20
  %134 = load ptr, ptr @system_wq, align 4
  %135 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %134, ptr noundef nonnull @reg_regdb_work) #20
  br label %141

136:                                              ; preds = %31, %27, %22
  %137 = getelementptr %struct.fwdb_country, ptr %24, i32 1
  %138 = getelementptr %struct.fwdb_country, ptr %24, i32 1, i32 1
  %139 = load i16, ptr %138, align 2
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %22

141:                                              ; preds = %136, %130, %129, %36, %14, %12
  %142 = phi i32 [ %13, %12 ], [ -12, %36 ], [ 0, %130 ], [ -12, %129 ], [ -61, %14 ], [ -61, %136 ]
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regdb_fw_cb(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = tail call fastcc zeroext i1 @valid_regdb(ptr noundef %6, i32 noundef %7)
  br i1 %8, label %13, label %9

9:                                                ; preds = %4, %2
  %10 = phi ptr [ @.str.15, %2 ], [ @.str.16, %4 ]
  %11 = phi ptr [ inttoptr (i32 -61 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %4 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i1 [ true, %4 ], [ false, %9 ]
  %15 = phi ptr [ null, %4 ], [ %11, %9 ]
  tail call void @rtnl_lock() #20
  %16 = load ptr, ptr @regdb, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  br i1 %14, label %22, label %21

21:                                               ; preds = %20
  store ptr %15, ptr @regdb, align 4
  br label %34

22:                                               ; preds = %20
  br i1 %3, label %34, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %0, align 4
  %27 = tail call ptr @kmemdup(ptr noundef %25, i32 noundef %26, i32 noundef 3264) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  store ptr %27, ptr @regdb, align 4
  %30 = icmp eq ptr %1, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = tail call fastcc i32 @query_regdb(ptr noundef nonnull %1)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %23, %22, %21, %13
  tail call fastcc void @restore_regulatory_settings(i1 noundef zeroext true, i1 noundef zeroext false)
  br label %35

35:                                               ; preds = %34, %31, %29
  tail call void @rtnl_unlock() #20
  tail call void @kfree(ptr noundef %1) #20
  tail call void @release_firmware(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @reg_regdb_apply(ptr nocapture noundef readnone %0) #2 {
  tail call void @rtnl_lock() #20
  tail call void @mutex_lock(ptr noundef nonnull @reg_regdb_apply_mutex) #20
  %2 = load volatile ptr, ptr @reg_regdb_apply_list, align 4
  %3 = icmp eq ptr %2, @reg_regdb_apply_list
  br i1 %3, label %15, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %13, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  %10 = getelementptr inbounds %struct.reg_regdb_apply_request, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @set_regdom(ptr noundef %11, i32 noundef 0)
  tail call void @kfree(ptr noundef %5) #20
  %13 = load volatile ptr, ptr @reg_regdb_apply_list, align 4
  %14 = icmp eq ptr %13, @reg_regdb_apply_list
  br i1 %14, label %15, label %4

15:                                               ; preds = %4, %1
  tail call void @mutex_unlock(ptr noundef nonnull @reg_regdb_apply_mutex) #20
  tail call void @rtnl_unlock() #20
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crda_timeout_work(ptr nocapture noundef readnone %0) #2 {
  tail call void @rtnl_lock() #20
  %2 = load i32, ptr @reg_crda_timeouts, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @reg_crda_timeouts, align 4
  tail call fastcc void @restore_regulatory_settings(i1 noundef zeroext true, i1 noundef zeroext false)
  tail call void @rtnl_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulatory_hint_core(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1
  %7 = getelementptr inbounds %struct.regulatory_request, ptr %3, i32 0, i32 4
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr %struct.regulatory_request, ptr %3, i32 0, i32 4, i32 1
  %11 = getelementptr inbounds %struct.regulatory_request, ptr %3, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.regulatory_request, ptr %3, i32 0, i32 1
  store i32 -1, ptr %12, align 8
  %13 = zext i8 %6 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  %18 = add i8 %6, -32
  %19 = select i1 %17, i8 %6, i8 %18
  store i8 %19, ptr %7, align 4
  %20 = zext i8 %9 to i32
  %21 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  %25 = add i8 %9, -32
  %26 = select i1 %24, i8 %9, i8 %25
  store i8 %26, ptr %10, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %27 = getelementptr inbounds %struct.regulatory_request, ptr %3, i32 0, i32 9
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr %27, ptr getelementptr inbounds (%struct.list_head, ptr @reg_requests_list, i32 0, i32 1), align 4
  store ptr @reg_requests_list, ptr %27, align 4
  %29 = getelementptr inbounds %struct.regulatory_request, ptr %3, i32 0, i32 9, i32 1
  store ptr %28, ptr %29, align 8
  store volatile ptr %27, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %30 = load i16, ptr @reg_requests_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %32 = load ptr, ptr @system_wq, align 4
  %33 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %32, ptr noundef nonnull @reg_work) #20
  br label %34

34:                                               ; preds = %5, %1
  %35 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @reg_todo(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca %struct.ieee80211_channel, align 4
  tail call void @rtnl_lock() #20
  %3 = load volatile ptr, ptr @last_request, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.regulatory_request, ptr %3, i32 0, i32 7
  %7 = load i8, ptr %6, align 1, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %5, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %10 = load volatile ptr, ptr @reg_requests_list, align 4
  %11 = icmp eq ptr %10, @reg_requests_list
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %13 = load i16, ptr @reg_requests_lock, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %61

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %10, i32 -36
  %17 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %21 = load i16, ptr @reg_requests_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %23 = load ptr, ptr @cfg80211_rdev_list, align 4
  %24 = icmp eq ptr %23, @cfg80211_rdev_list
  br i1 %24, label %45, label %25

25:                                               ; preds = %15
  %26 = getelementptr i8, ptr %10, i32 -24
  br label %27

27:                                               ; preds = %42, %25
  %28 = phi ptr [ %23, %25 ], [ %43, %42 ]
  %29 = getelementptr i8, ptr %28, i32 540
  %30 = getelementptr i8, ptr %28, i32 600
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %26, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %28, i32 796
  %39 = load ptr, ptr %38, align 32
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef %29, ptr noundef %16) #20
  br label %42

42:                                               ; preds = %41, %37, %34, %27
  %43 = load ptr, ptr %28, align 4
  %44 = icmp eq ptr %43, @cfg80211_rdev_list
  br i1 %44, label %45, label %27

45:                                               ; preds = %42, %15
  tail call fastcc void @reg_process_hint(ptr noundef %16) #20
  %46 = load volatile ptr, ptr @last_request, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @reg_requests_lock) #20
  %47 = load volatile ptr, ptr @reg_requests_list, align 4
  %48 = icmp ne ptr %47, @reg_requests_list
  %49 = icmp ne ptr %46, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.regulatory_request, ptr %46, i32 0, i32 7
  %53 = load i8, ptr %52, align 1, !range !12
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @system_wq, align 4
  %57 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %56, ptr noundef nonnull @reg_work) #20
  br label %58

58:                                               ; preds = %55, %51, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %59 = load i16, ptr @reg_requests_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @reg_requests_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %61

61:                                               ; preds = %58, %12, %5
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  %62 = load ptr, ptr @reg_pending_beacons, align 4
  %63 = icmp eq ptr %62, @reg_pending_beacons
  br i1 %63, label %164, label %64

64:                                               ; preds = %161, %61
  %65 = phi ptr [ %66, %161 ], [ %62, %61 ]
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %66, ptr %68, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %67, align 4
  %70 = load ptr, ptr @cfg80211_rdev_list, align 4
  %71 = icmp eq ptr %70, @cfg80211_rdev_list
  br i1 %71, label %161, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.reg_beacon, ptr %65, i32 0, i32 1
  %74 = getelementptr inbounds %struct.reg_beacon, ptr %65, i32 0, i32 1, i32 1
  %75 = getelementptr inbounds %struct.reg_beacon, ptr %65, i32 0, i32 1, i32 2
  br label %76

76:                                               ; preds = %158, %72
  %77 = phi ptr [ %70, %72 ], [ %159, %158 ]
  %78 = getelementptr i8, ptr %77, i32 540
  %79 = load i32, ptr %73, align 4
  %80 = getelementptr %struct.wiphy, ptr %78, i32 0, i32 53, i32 %79
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %158, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %81, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %158, label %87

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %77, i32 800
  %89 = getelementptr i8, ptr %77, i32 600
  br label %90

90:                                               ; preds = %154, %87
  %91 = phi ptr [ %81, %87 ], [ %157, %154 ]
  %92 = phi i32 [ 0, %87 ], [ %151, %154 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #20
  %93 = load ptr, ptr %91, align 4
  %94 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %92
  %95 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %92, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %74, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %150

99:                                               ; preds = %90
  %100 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %92, i32 2
  %101 = load i16, ptr %100, align 4
  %102 = load i16, ptr %75, align 4
  %103 = icmp eq i16 %101, %102
  br i1 %103, label %104, label %150, !prof !13

104:                                              ; preds = %99
  %105 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %92, i32 8
  %106 = load i8, ptr %105, align 4, !range !12
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %150

108:                                              ; preds = %104
  store i8 1, ptr %105, align 4
  %109 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %110 = load volatile ptr, ptr %88, align 4
  %111 = load volatile ptr, ptr @last_request, align 4
  %112 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %109, i32 0, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 48
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = getelementptr %struct.ieee80211_regdomain, ptr %109, i32 0, i32 2, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = icmp eq i8 %117, 48
  br i1 %118, label %139, label %119

119:                                              ; preds = %115, %108
  %120 = icmp eq ptr %110, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %110, i32 0, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 48
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr %struct.ieee80211_regdomain, ptr %110, i32 0, i32 2, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 48
  br i1 %128, label %139, label %129

129:                                              ; preds = %125, %121, %119
  %130 = icmp eq ptr %111, null
  br i1 %130, label %150, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.regulatory_request, ptr %111, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %150, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %89, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %135, %125, %115
  %140 = load i32, ptr %89, align 4
  %141 = and i32 %140, 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef align 4 dereferenceable(56) %94, i32 56, i1 false) #20
  %144 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %92, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = and i32 %145, -3
  store i32 %149, ptr %144, align 4
  call void @nl80211_send_beacon_hint_event(ptr noundef %78, ptr noundef nonnull %2, ptr noundef %94) #20
  br label %150

150:                                              ; preds = %148, %143, %139, %135, %131, %129, %104, %99, %90
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #20
  %151 = add nuw i32 %92, 1
  %152 = load i32, ptr %84, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, ptr %73, align 4
  %156 = getelementptr %struct.wiphy, ptr %78, i32 0, i32 53, i32 %155
  %157 = load ptr, ptr %156, align 4
  br label %90

158:                                              ; preds = %150, %83, %76
  %159 = load ptr, ptr %77, align 4
  %160 = icmp eq ptr %159, @cfg80211_rdev_list
  br i1 %160, label %161, label %76

161:                                              ; preds = %158, %64
  %162 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_beacon_list, i32 0, i32 1), align 4
  store ptr %65, ptr getelementptr inbounds (%struct.list_head, ptr @reg_beacon_list, i32 0, i32 1), align 4
  store ptr @reg_beacon_list, ptr %65, align 4
  store ptr %162, ptr %67, align 4
  store volatile ptr %65, ptr %162, align 4
  %163 = icmp eq ptr %66, @reg_pending_beacons
  br i1 %163, label %164, label %64

164:                                              ; preds = %161, %61
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @reg_pending_beacons_lock) #20
  call fastcc void @reg_process_self_managed_hints()
  call void @rtnl_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_beacon_hint_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @regdom_intersect(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ieee80211_reg_rule, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !10
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %155

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %155, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %34, %11
  %15 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %16 = phi i32 [ %13, %11 ], [ %36, %34 ]
  %17 = phi i32 [ 0, %11 ], [ %37, %34 ]
  %18 = phi i32 [ 0, %11 ], [ %38, %34 ]
  %19 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %18
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %21, %14
  %22 = phi i32 [ %28, %21 ], [ %17, %14 ]
  %23 = phi i32 [ %29, %21 ], [ 0, %14 ]
  %24 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 4, i32 %23
  %25 = call fastcc i32 @reg_rules_intersect(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %19, ptr noundef %24, ptr noundef nonnull %3)
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %22, %27
  %29 = add nuw i32 %23, 1
  %30 = load i32, ptr %12, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %21, label %32

32:                                               ; preds = %21
  %33 = load i32, ptr %8, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i32 [ %15, %14 ], [ %33, %32 ]
  %36 = phi i32 [ 0, %14 ], [ %30, %32 ]
  %37 = phi i32 [ %17, %14 ], [ %28, %32 ]
  %38 = add nuw i32 %18, 1
  %39 = icmp ult i32 %38, %35
  br i1 %39, label %14, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %155, label %42

42:                                               ; preds = %40
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 96) #20
  %44 = extractvalue { i32, i1 } %43, 1
  %45 = extractvalue { i32, i1 } %43, 0
  %46 = or i32 %45, 20
  %47 = select i1 %44, i32 -1, i32 %46
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %155, label %50

50:                                               ; preds = %42
  %51 = load i32, ptr %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %145, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %48, i32 0, i32 4
  %56 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %48, i32 0, i32 1
  %57 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 3
  %58 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 1, i32 1
  %60 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %3, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %3, i32 0, i32 2
  %62 = load i32, ptr %54, align 4
  br label %63

63:                                               ; preds = %140, %53
  %64 = phi i32 [ %51, %53 ], [ %141, %140 ]
  %65 = phi i32 [ %62, %53 ], [ %142, %140 ]
  %66 = phi i32 [ 0, %53 ], [ %143, %140 ]
  %67 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %66
  %68 = icmp eq i32 %65, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %134, %63
  %70 = phi i32 [ %135, %134 ], [ 0, %63 ]
  %71 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 4, i32 %70
  %72 = call fastcc i32 @reg_rules_intersect(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %67, ptr noundef %71, ptr noundef nonnull %3)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %134

74:                                               ; preds = %69
  %75 = load i32, ptr %56, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %130, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %57, align 4
  %79 = load i32, ptr %58, align 4
  %80 = load i32, ptr %59, align 4
  %81 = load i32, ptr %3, align 4
  %82 = load i32, ptr %60, align 4
  %83 = load i32, ptr %61, align 4
  br label %84

84:                                               ; preds = %127, %77
  %85 = phi i32 [ 0, %77 ], [ %128, %127 ]
  %86 = getelementptr %struct.ieee80211_reg_rule, ptr %55, i32 %85
  %87 = getelementptr %struct.ieee80211_reg_rule, ptr %55, i32 %85, i32 3
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, %78
  br i1 %89, label %90, label %127

90:                                               ; preds = %84
  %91 = getelementptr %struct.ieee80211_reg_rule, ptr %55, i32 %85, i32 1
  %92 = load i32, ptr %91, align 32
  %93 = icmp ugt i32 %92, %79
  br i1 %93, label %109, label %94

94:                                               ; preds = %90
  %95 = getelementptr %struct.ieee80211_reg_rule, ptr %55, i32 %85, i32 1, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, %80
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %86, align 4
  %100 = icmp ugt i32 %99, %81
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %86, i32 0, i32 1
  %103 = load i32, ptr %102, align 8
  %104 = icmp ult i32 %103, %82
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %86, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = icmp ult i32 %107, %83
  br i1 %108, label %109, label %134

109:                                              ; preds = %105, %101, %98, %94, %90
  %110 = icmp ugt i32 %79, %92
  br i1 %110, label %127, label %111

111:                                              ; preds = %109
  %112 = getelementptr %struct.ieee80211_reg_rule, ptr %55, i32 %85, i32 1, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %80, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %86, align 4
  %117 = icmp ugt i32 %81, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %86, i32 0, i32 1
  %120 = load i32, ptr %119, align 8
  %121 = icmp ult i32 %82, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %86, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp ult i32 %83, %124
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(96) %86, ptr noundef nonnull align 4 dereferenceable(96) %3, i32 96, i1 false) #20
  br label %134

127:                                              ; preds = %122, %118, %115, %111, %109, %84
  %128 = add nuw i32 %85, 1
  %129 = icmp eq i32 %128, %75
  br i1 %129, label %130, label %84

130:                                              ; preds = %127, %74
  %131 = getelementptr %struct.ieee80211_reg_rule, ptr %55, i32 %75
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(96) %131, ptr noundef nonnull align 4 dereferenceable(96) %3, i32 96, i1 false) #20
  %132 = load i32, ptr %56, align 8
  %133 = add i32 %132, 1
  store i32 %133, ptr %56, align 8
  br label %134

134:                                              ; preds = %130, %126, %105, %69
  %135 = add nuw i32 %70, 1
  %136 = load i32, ptr %54, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %69, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %8, align 4
  br label %140

140:                                              ; preds = %138, %63
  %141 = phi i32 [ %139, %138 ], [ %64, %63 ]
  %142 = phi i32 [ %136, %138 ], [ 0, %63 ]
  %143 = add nuw i32 %66, 1
  %144 = icmp ult i32 %143, %141
  br i1 %144, label %63, label %145

145:                                              ; preds = %140, %50
  %146 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %48, i32 0, i32 2
  store i8 57, ptr %146, align 4
  %147 = getelementptr %struct.ieee80211_regdomain, ptr %48, i32 0, i32 2, i32 1
  store i8 56, ptr %147, align 1
  %148 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %149, %151
  %153 = select i1 %152, i32 %149, i32 0
  %154 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %48, i32 0, i32 3
  store i32 %153, ptr %154, align 16
  br label %155

155:                                              ; preds = %145, %42, %40, %7, %2
  %156 = phi ptr [ %48, %145 ], [ null, %2 ], [ null, %40 ], [ null, %42 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  ret ptr %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_rd_rules(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %91, label %7

7:                                                ; preds = %86, %1
  %8 = phi i32 [ %90, %86 ], [ 0, %1 ]
  %9 = phi i32 [ %88, %86 ], [ %5, %1 ]
  %10 = phi i32 [ %87, %86 ], [ 0, %1 ]
  %11 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %10
  %12 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %10, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %7
  %17 = lshr exact i32 %8, 5
  %18 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %11, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @llvm.umin.i32(i32 %9, i32 %17)
  %21 = icmp ugt i32 %9, %17
  br i1 %21, label %22, label %56

22:                                               ; preds = %28, %16
  %23 = phi ptr [ %30, %28 ], [ %11, %16 ]
  %24 = phi i32 [ %29, %28 ], [ %20, %16 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, ptr %23, align 4
  br label %35

28:                                               ; preds = %22
  %29 = add nsw i32 %24, -1
  %30 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %29
  %31 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %23, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %22

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %27, %26 ], [ %33, %28 ]
  %37 = add i32 %9, -1
  %38 = call i32 @llvm.umax.i32(i32 %20, i32 %37) #20
  br label %39

39:                                               ; preds = %46, %35
  %40 = phi ptr [ %11, %35 ], [ %48, %46 ]
  %41 = phi i32 [ %20, %35 ], [ %47, %46 ]
  %42 = icmp eq i32 %41, %38
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %40, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  br label %53

46:                                               ; preds = %39
  %47 = add i32 %41, 1
  %48 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %40, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %49, %51
  br i1 %52, label %53, label %39

53:                                               ; preds = %46, %43
  %54 = phi i32 [ %45, %43 ], [ %51, %46 ]
  %55 = sub i32 %54, %36
  br label %56

56:                                               ; preds = %53, %16
  %57 = phi i32 [ %55, %53 ], [ 0, %16 ]
  %58 = and i32 %13, 65536
  %59 = icmp eq i32 %58, 0
  %60 = call i32 @llvm.umin.i32(i32 %57, i32 80000) #20
  %61 = select i1 %59, i32 %57, i32 %60
  %62 = and i32 %13, 32768
  %63 = icmp eq i32 %62, 0
  %64 = call i32 @llvm.umin.i32(i32 %61, i32 40000) #20
  %65 = select i1 %63, i32 %61, i32 %64
  %66 = and i32 %13, 24576
  %67 = icmp eq i32 %66, 24576
  %68 = call i32 @llvm.umin.i32(i32 %65, i32 20000) #20
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %19, i32 noundef %69)
  br label %75

71:                                               ; preds = %7
  %72 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %11, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %73)
  br label %75

75:                                               ; preds = %71, %56
  %76 = load i32, ptr %12, align 4
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %10, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = udiv i32 %81, 1000
  %83 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %82) #20
  br label %86

84:                                               ; preds = %75
  %85 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.25) #20
  br label %86

86:                                               ; preds = %84, %79
  %87 = add nuw i32 %10, 1
  %88 = load i32, ptr %4, align 4
  %89 = icmp ult i32 %87, %88
  %90 = add i32 %8, 32
  br i1 %89, label %7, label %91

91:                                               ; preds = %86, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reg_rules_intersect(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #18 {
  %6 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %2, align 4
  %13 = load i32, ptr %3, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %12, i32 %13)
  store i32 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %16, i32 %18)
  %20 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %4, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %3, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %89, label %29

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ 0, %29 ], [ %38, %32 ]
  %34 = icmp uge i32 %33, %31
  %35 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %33
  %36 = icmp eq ptr %35, %2
  %37 = or i1 %34, %36
  %38 = add nuw i32 %33, 1
  br i1 %37, label %39, label %32

39:                                               ; preds = %32
  %40 = icmp eq i32 %33, %31
  br i1 %40, label %75, label %41

41:                                               ; preds = %47, %39
  %42 = phi ptr [ %49, %47 ], [ %2, %39 ]
  %43 = phi i32 [ %48, %47 ], [ %33, %39 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, ptr %42, align 4
  br label %54

47:                                               ; preds = %41
  %48 = add i32 %43, -1
  %49 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %48
  %50 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %42, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %41

54:                                               ; preds = %47, %45
  %55 = phi i32 [ %46, %45 ], [ %52, %47 ]
  %56 = add i32 %31, -1
  %57 = tail call i32 @llvm.umax.i32(i32 %33, i32 %56) #20
  br label %58

58:                                               ; preds = %65, %54
  %59 = phi ptr [ %2, %54 ], [ %67, %65 ]
  %60 = phi i32 [ %33, %54 ], [ %66, %65 ]
  %61 = icmp eq i32 %60, %57
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %59, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  br label %72

65:                                               ; preds = %58
  %66 = add i32 %60, 1
  %67 = getelementptr %struct.ieee80211_regdomain, ptr %0, i32 0, i32 4, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %59, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %68, %70
  br i1 %71, label %72, label %58

72:                                               ; preds = %65, %62
  %73 = phi i32 [ %64, %62 ], [ %70, %65 ]
  %74 = sub i32 %73, %55
  br label %75

75:                                               ; preds = %72, %39
  %76 = phi i32 [ %74, %72 ], [ 0, %39 ]
  %77 = and i32 %26, 65536
  %78 = icmp eq i32 %77, 0
  %79 = tail call i32 @llvm.umin.i32(i32 %76, i32 80000) #20
  %80 = select i1 %78, i32 %76, i32 %79
  %81 = and i32 %26, 32768
  %82 = icmp eq i32 %81, 0
  %83 = tail call i32 @llvm.umin.i32(i32 %80, i32 40000) #20
  %84 = select i1 %82, i32 %80, i32 %83
  %85 = and i32 %26, 24576
  %86 = icmp eq i32 %85, 24576
  %87 = tail call i32 @llvm.umin.i32(i32 %84, i32 20000) #20
  %88 = select i1 %86, i32 %87, i32 %84
  br label %89

89:                                               ; preds = %75, %5
  %90 = phi i32 [ %88, %75 ], [ %22, %5 ]
  %91 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 2048
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %155, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %1, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %98, %95
  %99 = phi i32 [ 0, %95 ], [ %104, %98 ]
  %100 = icmp uge i32 %99, %97
  %101 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 4, i32 %99
  %102 = icmp eq ptr %101, %3
  %103 = or i1 %100, %102
  %104 = add nuw i32 %99, 1
  br i1 %103, label %105, label %98

105:                                              ; preds = %98
  %106 = icmp eq i32 %99, %97
  br i1 %106, label %141, label %107

107:                                              ; preds = %113, %105
  %108 = phi ptr [ %115, %113 ], [ %3, %105 ]
  %109 = phi i32 [ %114, %113 ], [ %99, %105 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, ptr %108, align 4
  br label %120

113:                                              ; preds = %107
  %114 = add i32 %109, -1
  %115 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 4, i32 %114
  %116 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %108, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %107

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %112, %111 ], [ %118, %113 ]
  %122 = add i32 %97, -1
  %123 = tail call i32 @llvm.umax.i32(i32 %99, i32 %122) #20
  br label %124

124:                                              ; preds = %131, %120
  %125 = phi ptr [ %3, %120 ], [ %133, %131 ]
  %126 = phi i32 [ %99, %120 ], [ %132, %131 ]
  %127 = icmp eq i32 %126, %123
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %125, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  br label %138

131:                                              ; preds = %124
  %132 = add i32 %126, 1
  %133 = getelementptr %struct.ieee80211_regdomain, ptr %1, i32 0, i32 4, i32 %132
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %125, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = icmp ugt i32 %134, %136
  br i1 %137, label %138, label %124

138:                                              ; preds = %131, %128
  %139 = phi i32 [ %130, %128 ], [ %136, %131 ]
  %140 = sub i32 %139, %121
  br label %141

141:                                              ; preds = %138, %105
  %142 = phi i32 [ %140, %138 ], [ 0, %105 ]
  %143 = and i32 %92, 65536
  %144 = icmp eq i32 %143, 0
  %145 = tail call i32 @llvm.umin.i32(i32 %142, i32 80000) #20
  %146 = select i1 %144, i32 %142, i32 %145
  %147 = and i32 %92, 32768
  %148 = icmp eq i32 %147, 0
  %149 = tail call i32 @llvm.umin.i32(i32 %146, i32 40000) #20
  %150 = select i1 %148, i32 %146, i32 %149
  %151 = and i32 %92, 24576
  %152 = icmp eq i32 %151, 24576
  %153 = tail call i32 @llvm.umin.i32(i32 %150, i32 20000) #20
  %154 = select i1 %152, i32 %153, i32 %150
  br label %155

155:                                              ; preds = %141, %89
  %156 = phi i32 [ %154, %141 ], [ %24, %89 ]
  %157 = tail call i32 @llvm.umin.i32(i32 %90, i32 %156)
  %158 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %4, i32 0, i32 2
  store i32 %157, ptr %158, align 4
  %159 = load i32, ptr %25, align 4
  %160 = load i32, ptr %91, align 4
  %161 = or i32 %160, %159
  %162 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 3
  store i32 %161, ptr %162, align 4
  %163 = load i32, ptr %25, align 4
  %164 = and i32 %163, 2048
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %155
  %167 = load i32, ptr %91, align 4
  %168 = and i32 %167, 2048
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = or i32 %161, 2048
  br label %174

172:                                              ; preds = %166, %155
  %173 = and i32 %161, -2049
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %173, %172 ], [ %171, %170 ]
  store i32 %175, ptr %162, align 4
  %176 = sub i32 %19, %14
  %177 = icmp ugt i32 %157, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 %176, ptr %158, align 4
  br label %179

179:                                              ; preds = %178, %174
  %180 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 1, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 1, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = tail call i32 @llvm.umin.i32(i32 %181, i32 %183)
  %185 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 1, i32 1
  store i32 %184, ptr %185, align 4
  %186 = load i32, ptr %6, align 4
  %187 = load i32, ptr %7, align 4
  %188 = tail call i32 @llvm.umin.i32(i32 %186, i32 %187)
  store i32 %188, ptr %8, align 4
  %189 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 4
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 4
  %192 = load i32, ptr %191, align 4
  %193 = tail call i32 @llvm.umax.i32(i32 %190, i32 %192)
  %194 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 4
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 5
  %196 = load i8, ptr %195, align 4, !range !12
  %197 = icmp eq i8 %196, 0
  %198 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 5
  %199 = load i8, ptr %198, align 4, !range !12
  %200 = icmp eq i8 %199, 0
  br i1 %197, label %254, label %201

201:                                              ; preds = %179
  br i1 %200, label %255, label %202

202:                                              ; preds = %202, %201
  %203 = phi i32 [ %252, %202 ], [ 0, %201 ]
  %204 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %9, i32 0, i32 %203
  %205 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %10, i32 0, i32 %203
  %206 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %11, i32 0, i32 %203
  %207 = load i16, ptr %204, align 2
  %208 = load i16, ptr %205, align 2
  %209 = tail call i16 @llvm.umax.i16(i16 %207, i16 %208) #20
  store i16 %209, ptr %206, align 2
  %210 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %9, i32 0, i32 %203, i32 1
  %211 = load i16, ptr %210, align 2
  %212 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %10, i32 0, i32 %203, i32 1
  %213 = load i16, ptr %212, align 2
  %214 = tail call i16 @llvm.umax.i16(i16 %211, i16 %213) #20
  %215 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %11, i32 0, i32 %203, i32 1
  store i16 %214, ptr %215, align 2
  %216 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %9, i32 0, i32 %203, i32 2
  %217 = load i16, ptr %216, align 2
  %218 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %10, i32 0, i32 %203, i32 2
  %219 = load i16, ptr %218, align 2
  %220 = tail call i16 @llvm.umin.i16(i16 %217, i16 %219) #20
  %221 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %11, i32 0, i32 %203, i32 2
  store i16 %220, ptr %221, align 2
  %222 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %9, i32 0, i32 %203, i32 3
  %223 = load i8, ptr %222, align 2
  %224 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %10, i32 0, i32 %203, i32 3
  %225 = load i8, ptr %224, align 2
  %226 = tail call i8 @llvm.umax.i8(i8 %223, i8 %225) #20
  %227 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %11, i32 0, i32 %203, i32 3
  store i8 %226, ptr %227, align 2
  %228 = getelementptr %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 2, i32 1, i32 %203
  %229 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %203
  %230 = getelementptr %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 2, i32 1, i32 %203
  %231 = load i16, ptr %228, align 2
  %232 = load i16, ptr %229, align 2
  %233 = tail call i16 @llvm.umax.i16(i16 %231, i16 %232) #20
  store i16 %233, ptr %230, align 2
  %234 = getelementptr %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 2, i32 1, i32 %203, i32 1
  %235 = load i16, ptr %234, align 2
  %236 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %203, i32 1
  %237 = load i16, ptr %236, align 2
  %238 = tail call i16 @llvm.umax.i16(i16 %235, i16 %237) #20
  %239 = getelementptr %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 2, i32 1, i32 %203, i32 1
  store i16 %238, ptr %239, align 2
  %240 = getelementptr %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 2, i32 1, i32 %203, i32 2
  %241 = load i16, ptr %240, align 2
  %242 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %203, i32 2
  %243 = load i16, ptr %242, align 2
  %244 = tail call i16 @llvm.umin.i16(i16 %241, i16 %243) #20
  %245 = getelementptr %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 2, i32 1, i32 %203, i32 2
  store i16 %244, ptr %245, align 2
  %246 = getelementptr %struct.ieee80211_reg_rule, ptr %2, i32 0, i32 2, i32 1, i32 %203, i32 3
  %247 = load i8, ptr %246, align 2
  %248 = getelementptr %struct.ieee80211_reg_rule, ptr %3, i32 0, i32 2, i32 1, i32 %203, i32 3
  %249 = load i8, ptr %248, align 2
  %250 = tail call i8 @llvm.umax.i8(i8 %247, i8 %249) #20
  %251 = getelementptr %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 2, i32 1, i32 %203, i32 3
  store i8 %250, ptr %251, align 2
  %252 = add nuw nsw i32 %203, 1
  %253 = icmp eq i32 %252, 4
  br i1 %253, label %257, label %202

254:                                              ; preds = %179
  br i1 %200, label %257, label %255

255:                                              ; preds = %254, %201
  %256 = phi ptr [ %9, %201 ], [ %10, %254 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(64) %11, ptr noundef align 2 dereferenceable(64) %256, i32 64, i1 false)
  br label %257

257:                                              ; preds = %255, %254, %202
  %258 = phi i8 [ 0, %254 ], [ 1, %255 ], [ 1, %202 ]
  %259 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %4, i32 0, i32 5
  store i8 %258, ptr %259, align 4
  %260 = icmp eq i32 %14, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %257
  %262 = icmp ne i32 %19, 0
  %263 = icmp uge i32 %19, %14
  %264 = select i1 %262, i1 %263, i1 false
  %265 = icmp ugt i32 %19, %14
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load i32, ptr %158, align 4
  %269 = icmp ugt i32 %268, %176
  %270 = select i1 %269, i32 -22, i32 0
  br label %271

271:                                              ; preds = %267, %261, %257
  %272 = phi i32 [ -22, %261 ], [ -22, %257 ], [ %270, %267 ]
  ret i32 %272
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_rdev_by_wiphy_idx(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_common_reg_change_event(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reg_process_ht_flags(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %147, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 55
  br label %5

5:                                                ; preds = %144, %3
  %6 = phi i32 [ 0, %3 ], [ %145, %144 ]
  %7 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %144, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %144, label %14

14:                                               ; preds = %140, %10
  %15 = phi i32 [ %141, %140 ], [ 0, %10 ]
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr %struct.ieee80211_channel, ptr %16, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, ptr inttoptr (i32 12 to ptr), align 4
  br label %42

24:                                               ; preds = %14
  %25 = getelementptr %struct.ieee80211_channel, ptr %16, i32 %15, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %26, 48
  %30 = icmp ne i32 %29, 48
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %20, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %20, align 4
  %38 = getelementptr %struct.ieee80211_channel, ptr %16, i32 %15, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -20
  %41 = add i32 %39, 20
  br label %46

42:                                               ; preds = %24, %22
  %43 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %44 = getelementptr %struct.ieee80211_channel, ptr %16, i32 %15, i32 4
  %45 = or i32 %43, 48
  store i32 %45, ptr %44, align 4
  br label %140

46:                                               ; preds = %46, %36
  %47 = phi i32 [ 0, %36 ], [ %57, %46 ]
  %48 = phi ptr [ null, %36 ], [ %56, %46 ]
  %49 = phi ptr [ null, %36 ], [ %54, %46 ]
  %50 = getelementptr %struct.ieee80211_channel, ptr %37, i32 %47
  %51 = getelementptr %struct.ieee80211_channel, ptr %37, i32 %47, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %40
  %54 = select i1 %53, ptr %50, ptr %49
  %55 = icmp eq i32 %52, %41
  %56 = select i1 %55, ptr %50, ptr %48
  %57 = add nuw i32 %47, 1
  %58 = icmp eq i32 %57, %34
  br i1 %58, label %59, label %46

59:                                               ; preds = %46, %32
  %60 = phi ptr [ null, %32 ], [ %54, %46 ]
  %61 = phi ptr [ null, %32 ], [ %56, %46 ]
  %62 = load volatile ptr, ptr %4, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %102, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.ieee80211_channel, ptr %16, i32 %15, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, 1000
  %68 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %62, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %64
  %72 = icmp ugt i32 %67, 45000000
  %73 = select i1 %72, i32 20000000, i32 2000000
  br label %78

74:                                               ; preds = %93
  %75 = add nuw i32 %80, 1
  %76 = load i32, ptr %68, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %94, %74 ]
  %80 = phi i32 [ 0, %71 ], [ %75, %74 ]
  %81 = getelementptr %struct.ieee80211_regdomain, ptr %62, i32 0, i32 4, i32 %80
  br i1 %79, label %93, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %81, align 4
  %84 = sub i32 %67, %83
  %85 = tail call i32 @llvm.abs.i32(i32 %84, i1 false) #20
  %86 = icmp ugt i32 %85, %73
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %81, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = sub i32 %67, %89
  %91 = tail call i32 @llvm.abs.i32(i32 %90, i1 false) #20
  %92 = icmp ule i32 %91, %73
  br label %93

93:                                               ; preds = %87, %82, %78
  %94 = phi i1 [ true, %78 ], [ true, %82 ], [ %92, %87 ]
  %95 = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %81, i32 noundef %67, i32 noundef 20000) #20
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %74

97:                                               ; preds = %93
  %98 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %102, label %99

99:                                               ; preds = %97
  %100 = getelementptr %struct.ieee80211_regdomain, ptr %62, i32 0, i32 4, i32 %80, i32 3
  %101 = load i32, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %97, %74, %64, %59
  %103 = phi i32 [ 0, %59 ], [ 0, %97 ], [ %101, %99 ], [ 0, %64 ], [ 0, %74 ]
  %104 = icmp eq ptr %60, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.ieee80211_channel, ptr %60, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = and i32 %107, 48
  %112 = icmp ne i32 %111, 48
  %113 = and i32 %103, 8192
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %119, label %116

116:                                              ; preds = %110, %105, %102
  %117 = load i32, ptr %25, align 4
  %118 = or i32 %117, 32
  br label %122

119:                                              ; preds = %110
  %120 = load i32, ptr %25, align 4
  %121 = and i32 %120, -33
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  store i32 %123, ptr %25, align 4
  %124 = icmp eq ptr %61, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.ieee80211_channel, ptr %61, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = and i32 %127, 48
  %132 = icmp ne i32 %131, 48
  %133 = and i32 %103, 16384
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %138, label %136

136:                                              ; preds = %130, %125, %122
  %137 = or i32 %123, 16
  store i32 %137, ptr %25, align 4
  br label %140

138:                                              ; preds = %130
  %139 = and i32 %123, -17
  store i32 %139, ptr %25, align 4
  br label %140

140:                                              ; preds = %138, %136, %42
  %141 = add nuw i32 %15, 1
  %142 = load i32, ptr %11, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %14, label %144

144:                                              ; preds = %140, %10, %5
  %145 = add nuw nsw i32 %6, 1
  %146 = icmp eq i32 %145, 6
  br i1 %146, label %147, label %5

147:                                              ; preds = %144, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_dfs_usable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_end_cac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @load_builtin_regdb_keys() unnamed_addr #11 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #20
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.30, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %3, i32 noundef 520814592, i32 noundef 2, ptr noundef null, ptr noundef null) #20
  store ptr %4, ptr @builtin_regdb_keys, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = ptrtoint ptr %4 to i32
  br label %11

8:                                                ; preds = %0
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #23
  %10 = load i32, ptr @shipped_regdb_certs_len, align 4
  tail call fastcc void @load_keys_from_buffer(i32 noundef %10) #24
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @load_keys_from_buffer(i32 noundef %0) unnamed_addr #11 section ".init.text" {
  %2 = getelementptr i8, ptr @shipped_regdb_certs, i32 %0
  %3 = icmp ugt ptr %2, @shipped_regdb_certs
  br i1 %3, label %4, label %50

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %6

6:                                                ; preds = %45, %4
  %7 = phi ptr [ @shipped_regdb_certs, %4 ], [ %46, %45 ]
  %8 = ptrtoint ptr %7 to i32
  %9 = sub i32 %5, %8
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %48, label %11

11:                                               ; preds = %6
  %12 = load i8, ptr %7, align 1
  %13 = icmp eq i8 %12, 48
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %7, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, -126
  br i1 %17, label %18, label %48

18:                                               ; preds = %14, %11
  %19 = getelementptr i8, ptr %7, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = getelementptr i8, ptr %7, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = add nuw nsw i32 %26, 4
  %28 = icmp ugt i32 %27, %9
  br i1 %28, label %48, label %29

29:                                               ; preds = %18
  %30 = load ptr, ptr @builtin_regdb_keys, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = or i32 %31, 1
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call ptr @key_create_or_update(ptr noundef nonnull %33, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef %7, i32 noundef %27, i32 noundef 520290304, i32 noundef 14) #20
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %34 to i32
  br i1 %35, label %37, label %39

37:                                               ; preds = %29
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %36) #23
  br label %45

39:                                               ; preds = %29
  %40 = and i32 %36, -2
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.key, ptr %41, i32 0, i32 15, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %43) #23
  tail call void @key_put(ptr noundef %41) #20
  br label %45

45:                                               ; preds = %39, %37
  %46 = getelementptr i8, ptr %7, i32 %27
  %47 = icmp ult ptr %46, %2
  br i1 %47, label %6, label %50

48:                                               ; preds = %18, %14, %6
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #23
  br label %50

50:                                               ; preds = %48, %45, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @reg_check_chans_work(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  tail call void @rtnl_lock() #20
  %3 = load ptr, ptr @cfg80211_rdev_list, align 4
  %4 = icmp eq ptr %3, @cfg80211_rdev_list
  br i1 %4, label %127, label %5

5:                                                ; preds = %124, %1
  %6 = phi ptr [ %125, %124 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 600
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %124

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %6, i32 540
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !13

14:                                               ; preds = %11
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #20, !srcloc !26
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %6, i32 -4
  %17 = call i32 @rtnl_is_locked() #20
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @reg_leave_invalid_chans.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !13

22:                                               ; preds = %15
  store i1 true, ptr @reg_leave_invalid_chans.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2439, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 2439) #20
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr i8, ptr %6, i32 1292
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %124, label %27

27:                                               ; preds = %121, %23
  %28 = phi ptr [ %122, %121 ], [ %25, %23 ]
  %29 = getelementptr i8, ptr %28, i32 -8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #20
  %30 = getelementptr i8, ptr %28, i32 28
  call void @mutex_lock(ptr noundef %30) #20
  %31 = getelementptr i8, ptr %28, i32 -4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %28, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %116, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 6
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %116, label %41

41:                                               ; preds = %36
  switch i32 %32, label %112 [
    i32 3, label %42
    i32 9, label %42
    i32 7, label %42
    i32 1, label %48
    i32 2, label %54
    i32 8, label %54
    i32 6, label %113
    i32 4, label %113
    i32 10, label %113
  ]

42:                                               ; preds = %41, %41, %41
  %43 = getelementptr i8, ptr %28, i32 216
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %116, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %28, i32 180
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %47, i32 28, i1 false) #20
  br label %113

48:                                               ; preds = %41
  %49 = getelementptr i8, ptr %28, i32 90
  %50 = load i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %116, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %28, i32 180
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %53, i32 28, i1 false) #20
  call void @mutex_unlock(ptr noundef %30) #20
  br label %118

54:                                               ; preds = %41, %41
  %55 = getelementptr i8, ptr %28, i32 148
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %116, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %56, i32 0, i32 9
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %116, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %16, align 32
  %64 = getelementptr inbounds %struct.cfg80211_ops, ptr %63, i32 0, i32 76
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %110, label %67

67:                                               ; preds = %62
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_get_channel, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = tail call ptr @llvm.thread.pointer() #20
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr @__cpu_online_mask, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %82 = call i32 @__traceiter_rdev_get_channel(ptr noundef null, ptr noundef nonnull %12, ptr noundef %29) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %83 = load ptr, ptr %16, align 32
  %84 = getelementptr inbounds %struct.cfg80211_ops, ptr %83, i32 0, i32 76
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %81, %70, %67
  %87 = phi ptr [ %85, %81 ], [ %65, %70 ], [ %65, %67 ]
  %88 = call i32 %87(ptr noundef nonnull %12, ptr noundef %29, ptr noundef nonnull %2) #20
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_chandef, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = tail call ptr @llvm.thread.pointer() #20
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  %103 = call i32 @__traceiter_rdev_return_chandef(ptr noundef null, ptr noundef nonnull %12, i32 noundef %88, ptr noundef nonnull %2) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %104

104:                                              ; preds = %102, %91, %86
  %105 = icmp eq i32 %88, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr %55, align 4
  %108 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %107, i32 0, i32 9
  %109 = load ptr, ptr %108, align 8
  br label %110

110:                                              ; preds = %106, %62
  %111 = phi ptr [ %109, %106 ], [ %60, %62 ]
  call void @cfg80211_chandef_create(ptr noundef nonnull %2, ptr noundef %111, i32 noundef 0) #20
  br label %113

112:                                              ; preds = %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2403, i32 noundef 9, ptr noundef null) #20
  br label %113

113:                                              ; preds = %112, %110, %104, %46, %41, %41, %41
  call void @mutex_unlock(ptr noundef %30) #20
  switch i32 %32, label %117 [
    i32 3, label %118
    i32 9, label %118
    i32 8, label %114
    i32 7, label %118
    i32 2, label %114
  ]

114:                                              ; preds = %113, %113
  %115 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef nonnull %12, ptr noundef nonnull %2, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #20
  br i1 %115, label %121, label %120

116:                                              ; preds = %58, %54, %48, %42, %36, %27
  call void @mutex_unlock(ptr noundef %30) #20
  br label %117

117:                                              ; preds = %116, %113
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #20
  br label %121

118:                                              ; preds = %113, %113, %113, %52
  call void @mutex_lock(ptr noundef nonnull %12) #20
  %119 = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef nonnull %12, ptr noundef nonnull %2, i32 noundef %32) #20
  call void @mutex_unlock(ptr noundef nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #20
  br i1 %119, label %121, label %120

120:                                              ; preds = %118, %114
  call void @cfg80211_leave(ptr noundef %16, ptr noundef %29) #20
  br label %121

121:                                              ; preds = %120, %118, %117, %114
  %122 = load ptr, ptr %28, align 4
  %123 = icmp eq ptr %122, %24
  br i1 %123, label %124, label %27

124:                                              ; preds = %121, %23, %5
  %125 = load ptr, ptr %6, align 4
  %126 = icmp eq ptr %125, @cfg80211_rdev_list
  br i1 %126, label %127, label %5

127:                                              ; preds = %124, %1
  call void @rtnl_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_leave(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_get_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_chandef(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }
attributes #24 = { cold }

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
!8 = !{i64 2149436259}
!9 = !{i64 2149436476}
!10 = !{!"auto-init"}
!11 = !{i64 2158872746}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2159041914}
!15 = !{i64 2149037487}
!16 = !{i64 2149033311}
!17 = !{i64 2149033386, i64 2149033413, i64 2149033460, i64 2149033482, i64 2149033510, i64 2149033530}
!18 = !{i64 2149060490}
!19 = !{!"branch_weights", i32 1073205, i32 2146410443}
!20 = !{!"branch_weights", i32 2000, i32 2002}
!21 = !{i64 2159031679}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2159162745}
!24 = !{i64 2159170807}
!25 = !{!"branch_weights", i32 2146410443, i32 1073205}
!26 = !{i64 2155940574, i64 2155941058, i64 2155940611, i64 2155940667, i64 2155940701, i64 2155940725, i64 2155940766, i64 2155940787, i64 2155940815, i64 2155940849}
!27 = !{i64 2159083767}
!28 = !{i64 2156554517}
!29 = !{i64 2156554679}
!30 = !{i64 2156223880}
!31 = !{i64 2156224034}
!32 = !{i64 2159212088}
!33 = !{i64 2158881949}
!34 = !{i64 2157445175}
!35 = !{i64 2157445341}
!36 = !{i64 2157458767}
!37 = !{i64 2157458955}
