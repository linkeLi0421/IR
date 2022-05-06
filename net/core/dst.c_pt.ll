; ModuleID = '/llk/IR/net/core/dst.c_pt.bc'
source_filename = "../net/core/dst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_discard_out:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_discard_out\22\09\09\09\09\09"
module asm "__kstrtabns_dst_discard_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_default_metrics:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_default_metrics\22\09\09\09\09\09"
module asm "__kstrtabns_dst_default_metrics:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_init\22\09\09\09\09\09"
module asm "__kstrtabns_dst_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_dst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dst_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_dev_put\22\09\09\09\09\09"
module asm "__kstrtabns_dst_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_release\22\09\09\09\09\09"
module asm "__kstrtabns_dst_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_release_immediate:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_release_immediate\22\09\09\09\09\09"
module asm "__kstrtabns_dst_release_immediate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_cow_metrics_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_cow_metrics_generic\22\09\09\09\09\09"
module asm "__kstrtabns_dst_cow_metrics_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dst_destroy_metrics_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22__dst_destroy_metrics_generic\22\09\09\09\09\09"
module asm "__kstrtabns___dst_destroy_metrics_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_blackhole_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_blackhole_update_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_dst_blackhole_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_blackhole_redirect:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_blackhole_redirect\22\09\09\09\09\09"
module asm "__kstrtabns_dst_blackhole_redirect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dst_blackhole_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22dst_blackhole_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_dst_blackhole_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_metadata_dst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22metadata_dst_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_metadata_dst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_metadata_dst_free:\09\09\09\09\09"
module asm "\09.asciz \09\22metadata_dst_free\22\09\09\09\09\09"
module asm "__kstrtabns_metadata_dst_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_metadata_dst_alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22metadata_dst_alloc_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_metadata_dst_alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_metadata_dst_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22metadata_dst_free_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_metadata_dst_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_dst = type { %union.anon.148, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.149 }
%union.anon.149 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.150, i16, i8, i8, i32, i16, i16 }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }

@__kstrtab_dst_discard_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_discard_out = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_discard_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_discard_out to i32), ptr @__kstrtab_dst_discard_out, ptr @__kstrtabns_dst_discard_out }, section "___ksymtab+dst_discard_out", align 4
@dst_default_metrics = dso_local constant %struct.dst_metrics { [17 x i32] zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } } }, align 4
@__kstrtab_dst_default_metrics = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_default_metrics = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_default_metrics = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_default_metrics to i32), ptr @__kstrtab_dst_default_metrics, ptr @__kstrtabns_dst_default_metrics }, section "___ksymtab+dst_default_metrics", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_dst_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_init to i32), ptr @__kstrtab_dst_init, ptr @__kstrtabns_dst_init }, section "___ksymtab+dst_init", align 4
@dst_alloc._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dst_alloc = private unnamed_addr constant [10 x i8] c"dst_alloc\00", align 1
@.str = private unnamed_addr constant [76 x i8] c"\015Route cache is full: consider increasing sysctl net.ipv6.route.max_size.\0A\00", align 1
@__kstrtab_dst_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_alloc to i32), ptr @__kstrtab_dst_alloc, ptr @__kstrtabns_dst_alloc }, section "___ksymtab+dst_alloc", align 4
@__kstrtab_dst_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_destroy to i32), ptr @__kstrtab_dst_destroy, ptr @__kstrtabns_dst_destroy }, section "___ksymtab+dst_destroy", align 4
@blackhole_netdev = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_dst_dev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_dev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_dev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_dev_put to i32), ptr @__kstrtab_dst_dev_put, ptr @__kstrtabns_dst_dev_put }, section "___ksymtab+dst_dev_put", align 4
@dst_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"net/core/dst.c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dst_release underflow\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\014%s: dst:%p refcnt:%d\0A\00", align 1
@__func__.dst_release = private unnamed_addr constant [12 x i8] c"dst_release\00", align 1
@__kstrtab_dst_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_release to i32), ptr @__kstrtab_dst_release, ptr @__kstrtabns_dst_release }, section "___ksymtab+dst_release", align 4
@dst_release_immediate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"dst_release_immediate underflow\00", align 1
@__func__.dst_release_immediate = private unnamed_addr constant [22 x i8] c"dst_release_immediate\00", align 1
@__kstrtab_dst_release_immediate = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_release_immediate = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_release_immediate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_release_immediate to i32), ptr @__kstrtab_dst_release_immediate, ptr @__kstrtabns_dst_release_immediate }, section "___ksymtab+dst_release_immediate", align 4
@__kstrtab_dst_cow_metrics_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_cow_metrics_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_cow_metrics_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_cow_metrics_generic to i32), ptr @__kstrtab_dst_cow_metrics_generic, ptr @__kstrtabns_dst_cow_metrics_generic }, section "___ksymtab+dst_cow_metrics_generic", align 4
@__kstrtab___dst_destroy_metrics_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns___dst_destroy_metrics_generic = external dso_local constant [0 x i8], align 1
@__ksymtab___dst_destroy_metrics_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dst_destroy_metrics_generic to i32), ptr @__kstrtab___dst_destroy_metrics_generic, ptr @__kstrtabns___dst_destroy_metrics_generic }, section "___ksymtab+__dst_destroy_metrics_generic", align 4
@__kstrtab_dst_blackhole_update_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_blackhole_update_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_blackhole_update_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_blackhole_update_pmtu to i32), ptr @__kstrtab_dst_blackhole_update_pmtu, ptr @__kstrtabns_dst_blackhole_update_pmtu }, section "___ksymtab_gpl+dst_blackhole_update_pmtu", align 4
@__kstrtab_dst_blackhole_redirect = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_blackhole_redirect = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_blackhole_redirect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_blackhole_redirect to i32), ptr @__kstrtab_dst_blackhole_redirect, ptr @__kstrtabns_dst_blackhole_redirect }, section "___ksymtab_gpl+dst_blackhole_redirect", align 4
@__kstrtab_dst_blackhole_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_dst_blackhole_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_dst_blackhole_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dst_blackhole_mtu to i32), ptr @__kstrtab_dst_blackhole_mtu, ptr @__kstrtabns_dst_blackhole_mtu }, section "___ksymtab_gpl+dst_blackhole_mtu", align 4
@__kstrtab_metadata_dst_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_metadata_dst_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_metadata_dst_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @metadata_dst_alloc to i32), ptr @__kstrtab_metadata_dst_alloc, ptr @__kstrtabns_metadata_dst_alloc }, section "___ksymtab_gpl+metadata_dst_alloc", align 4
@__kstrtab_metadata_dst_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_metadata_dst_free = external dso_local constant [0 x i8], align 1
@__ksymtab_metadata_dst_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @metadata_dst_free to i32), ptr @__kstrtab_metadata_dst_free, ptr @__kstrtabns_metadata_dst_free }, section "___ksymtab_gpl+metadata_dst_free", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_metadata_dst_alloc_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_metadata_dst_alloc_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_metadata_dst_alloc_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @metadata_dst_alloc_percpu to i32), ptr @__kstrtab_metadata_dst_alloc_percpu, ptr @__kstrtabns_metadata_dst_alloc_percpu }, section "___ksymtab_gpl+metadata_dst_alloc_percpu", align 4
@__kstrtab_metadata_dst_free_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_metadata_dst_free_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_metadata_dst_free_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @metadata_dst_free_percpu to i32), ptr @__kstrtab_metadata_dst_free_percpu, ptr @__kstrtabns_metadata_dst_free_percpu }, section "___ksymtab_gpl+metadata_dst_free_percpu", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dst_blackhole_ops = internal global %struct.dst_ops { i16 0, i32 0, ptr null, ptr @dst_blackhole_check, ptr null, ptr @dst_blackhole_mtu, ptr @dst_blackhole_cow_metrics, ptr null, ptr null, ptr null, ptr null, ptr @dst_blackhole_update_pmtu, ptr @dst_blackhole_redirect, ptr null, ptr @dst_blackhole_neigh_lookup, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [32 x i8] undef }, align 64
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab___dst_destroy_metrics_generic, ptr @__ksymtab_dst_alloc, ptr @__ksymtab_dst_blackhole_mtu, ptr @__ksymtab_dst_blackhole_redirect, ptr @__ksymtab_dst_blackhole_update_pmtu, ptr @__ksymtab_dst_cow_metrics_generic, ptr @__ksymtab_dst_default_metrics, ptr @__ksymtab_dst_destroy, ptr @__ksymtab_dst_dev_put, ptr @__ksymtab_dst_discard_out, ptr @__ksymtab_dst_init, ptr @__ksymtab_dst_release, ptr @__ksymtab_dst_release_immediate, ptr @__ksymtab_metadata_dst_alloc, ptr @__ksymtab_metadata_dst_alloc_percpu, ptr @__ksymtab_metadata_dst_free, ptr @__ksymtab_metadata_dst_free_percpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dst_discard_out(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #0 {
  store ptr %2, ptr %0, align 4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !9
  %10 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 99
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #9, !srcloc !10
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #13, !srcloc !11
  br label %20

20:                                               ; preds = %8, %6
  %21 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  store i32 or (i32 ptrtoint (ptr @dst_default_metrics to i32), i32 1), ptr %22, align 4
  %23 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 5
  store ptr @dst_discard, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 6
  store ptr @dst_discard_out, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 15
  store i16 0, ptr %27, align 4
  %28 = trunc i32 %4 to i16
  %29 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  store i16 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 9
  store i16 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 10
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 13
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 18
  store volatile i32 %3, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 11
  store i32 0, ptr %34, align 4
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 12
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  store i16 %5, ptr %37, align 4
  %38 = and i16 %5, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.dst_ops, ptr %1, i32 0, i32 18
  tail call void @percpu_counter_add_batch(ptr noundef %41, i64 noundef 1, i32 noundef 32) #13
  br label %42

42:                                               ; preds = %40, %20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dst_discard(ptr noundef %0) #1 {
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dst_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.dst_ops, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  %9 = and i16 %4, 8
  %10 = icmp eq i16 %9, 0
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.dst_ops, ptr %0, i32 0, i32 18, i32 1
  %14 = load volatile i64, ptr %13, align 8
  %15 = tail call i64 @llvm.smax.i64(i64 %14, i64 0) #13
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.dst_ops, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %16
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = tail call i32 %7(ptr noundef %0) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @dst_alloc._rs, ptr noundef nonnull @__func__.dst_alloc) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %67

28:                                               ; preds = %20, %12, %5
  %29 = getelementptr inbounds %struct.dst_ops, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 64
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef 2592) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %28
  store ptr %1, ptr %31, align 8
  %34 = icmp eq ptr %1, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %33
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !9
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #9, !srcloc !10
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #13, !srcloc !11
  br label %47

47:                                               ; preds = %35, %33
  %48 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 1
  store ptr %0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 2
  store i32 or (i32 ptrtoint (ptr @dst_default_metrics to i32), i32 1), ptr %49, align 8
  %50 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 3
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 4
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 5
  store ptr @dst_discard, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 6
  store ptr @dst_discard_out, ptr %53, align 8
  %54 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 15
  store i16 0, ptr %54, align 8
  %55 = trunc i32 %3 to i16
  %56 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 8
  store i16 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 9
  store i16 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 10
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 13
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 18
  store volatile i32 %2, ptr %60, align 8
  %61 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 11
  store i32 0, ptr %61, align 4
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 12
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  store i16 %4, ptr %64, align 4
  br i1 %10, label %65, label %67

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.dst_ops, ptr %0, i32 0, i32 18
  tail call void @percpu_counter_add_batch(ptr noundef %66, i64 noundef 1, i32 noundef 32) #13
  br label %67

67:                                               ; preds = %65, %47, %28, %26, %23
  %68 = phi ptr [ null, %26 ], [ null, %23 ], [ null, %28 ], [ %31, %47 ], [ %31, %65 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dst_destroy(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dst_ops, ptr %16, i32 0, i32 18
  tail call void @percpu_counter_add_batch(ptr noundef %17, i64 noundef -1, i32 noundef 32) #13
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dst_ops, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void %22(ptr noundef %0) #13
  br label %25

25:                                               ; preds = %24, %18
  %26 = load ptr, ptr %0, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !9
  %30 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 99
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #9, !srcloc !10
  %36 = add i32 %35, %32
  %37 = inttoptr i32 %36 to ptr
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #13, !srcloc !11
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i16, ptr %10, align 4
  %42 = and i16 %41, 128
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 1
  tail call void @dst_cache_destroy(ptr noundef %49) #13
  br label %50

50:                                               ; preds = %48, %44
  tail call void @kfree(ptr noundef %0) #13
  br label %55

51:                                               ; preds = %40
  %52 = load ptr, ptr %19, align 4
  %53 = getelementptr inbounds %struct.dst_ops, ptr %52, i32 0, i32 16
  %54 = load ptr, ptr %53, align 64
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef %0) #13
  br label %55

55:                                               ; preds = %51, %50
  %56 = icmp eq ptr %9, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  tail call void @dst_release_immediate(ptr noundef nonnull %9)
  br label %58

58:                                               ; preds = %57, %55
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @metadata_dst_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 1
  tail call void @dst_cache_destroy(ptr noundef %6) #13
  br label %7

7:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_release_immediate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !15
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %7 = icmp slt i32 %6, 0
  %8 = load i1, ptr @dst_release_immediate.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %3
  store i1 true, ptr @dst_release_immediate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 188, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %12

12:                                               ; preds = %11, %3
  br i1 %7, label %13, label %18

13:                                               ; preds = %12
  %14 = tail call i32 @net_ratelimit() #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dst_release_immediate, ptr noundef nonnull %0, i32 noundef %6) #14
  br label %22

18:                                               ; preds = %12
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr @dst_destroy(ptr noundef nonnull %0)
  br label %22

22:                                               ; preds = %20, %18, %16, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_dev_put(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  store i16 2, ptr %3, align 2
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dst_ops, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0, ptr noundef %2, i32 noundef 1) #13
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 5
  store ptr @dst_discard, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 6
  store ptr @dst_discard_out, ptr %12, align 4
  %13 = load ptr, ptr @blackhole_netdev, align 4
  store ptr %13, ptr %0, align 4
  %14 = load ptr, ptr @blackhole_netdev, align 4
  %15 = icmp eq ptr %2, null
  %16 = icmp eq ptr %14, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !9
  %19 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 99
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #9, !srcloc !10
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #13, !srcloc !11
  br label %29

29:                                               ; preds = %17, %10
  br i1 %15, label %42, label %30

30:                                               ; preds = %29
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !9
  %32 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 99
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #9, !srcloc !10
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #13, !srcloc !11
  br label %42

42:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dst_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !15
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %7 = icmp slt i32 %6, 0
  %8 = load i1, ptr @dst_release.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %3
  store i1 true, ptr @dst_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.2) #13
  br label %12

12:                                               ; preds = %11, %3
  br i1 %7, label %13, label %18

13:                                               ; preds = %12
  %14 = tail call i32 @net_ratelimit() #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dst_release, ptr noundef nonnull %0, i32 noundef %6) #14
  br label %22

18:                                               ; preds = %12
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 14
  tail call void @call_rcu(ptr noundef %21, ptr noundef nonnull @dst_destroy_rcu) #13
  br label %22

22:                                               ; preds = %20, %18, %16, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dst_destroy_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = tail call ptr @dst_destroy(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dst_cow_metrics_generic(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 72) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.dst_metrics, ptr %4, i32 0, i32 1
  store volatile i32 1, ptr %9, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef align 4 dereferenceable(68) %8, i32 68, i1 false)
  %10 = ptrtoint ptr %4 to i32
  %11 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !14
  br label %12

12:                                               ; preds = %12, %6
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %11, i32 %1, i32 %10) #13, !srcloc !19
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %4) #13
  %20 = and i32 %17, -4
  %21 = inttoptr i32 %20 to ptr
  %22 = and i32 %17, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr %21, ptr null
  br label %37

25:                                               ; preds = %16
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.dst_metrics, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #13, !srcloc !14
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #13, !srcloc !22
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %37, label %35, !prof !23

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #13
  br label %37

36:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void @kfree(ptr noundef %8) #13
  br label %37

37:                                               ; preds = %36, %35, %33, %25, %19, %2
  %38 = phi ptr [ null, %2 ], [ %24, %19 ], [ %4, %36 ], [ %4, %25 ], [ %4, %33 ], [ %4, %35 ]
  ret ptr %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__dst_destroy_metrics_generic(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #13, !srcloc !14
  br label %4

4:                                                ; preds = %4, %2
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 %1, i32 or (i32 ptrtoint (ptr @dst_default_metrics to i32), i32 1)) #13, !srcloc !19
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = and i32 %1, -4
  %13 = inttoptr i32 %12 to ptr
  tail call void @kfree(ptr noundef %13) #13
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @dst_blackhole_check(ptr nocapture readnone %0, i32 %1) #5 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @dst_blackhole_cow_metrics(ptr nocapture readnone %0, i32 %1) #5 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @dst_blackhole_neigh_lookup(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #5 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @dst_blackhole_update_pmtu(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2, i32 %3, i1 zeroext %4) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @dst_blackhole_redirect(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dst_blackhole_mtu(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr i32, ptr %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ %7, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @metadata_dst_alloc(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = zext i8 %0 to i32
  %5 = add nuw nsw i32 %4, 144
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %2) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  store ptr null, ptr %6, align 64
  %9 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 1
  store ptr @dst_blackhole_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 2
  store i32 or (i32 ptrtoint (ptr @dst_default_metrics to i32), i32 1), ptr %10, align 8
  %11 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 4
  store ptr null, ptr %12, align 16
  %13 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 5
  store ptr @dst_discard, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 6
  store ptr @dst_discard_out, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 15
  store i16 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 8
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 9
  store i16 0, ptr %17, align 32
  %18 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 10
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 13
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 18
  store volatile i32 1, ptr %20, align 64
  %21 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 11
  store i32 0, ptr %21, align 4
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 12
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 7
  store i16 136, ptr %24, align 4
  %25 = getelementptr %struct.dst_entry, ptr %6, i32 1
  %26 = add nuw nsw i32 %4, 76
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %25, i8 0, i32 %26, i1 false) #13
  store i32 %1, ptr %25, align 4
  br label %27

27:                                               ; preds = %8, %3
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @metadata_dst_alloc_percpu(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = zext i8 %0 to i32
  %5 = add nuw nsw i32 %4, 144
  %6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef %5, i32 noundef 8, i32 noundef %2) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = ptrtoint ptr %6 to i32
  %14 = add nuw nsw i32 %4, 76
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %9, %12 ], [ %38, %15 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %13
  %20 = inttoptr i32 %19 to ptr
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 1
  store ptr @dst_blackhole_ops, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 2
  store i32 or (i32 ptrtoint (ptr @dst_default_metrics to i32), i32 1), ptr %22, align 4
  %23 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 4
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 5
  store ptr @dst_discard, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 6
  store ptr @dst_discard_out, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 15
  store i16 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 8
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 9
  store i16 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 10
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 13
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 18
  store volatile i32 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 11
  store i32 0, ptr %33, align 4
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 12
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 7
  store i16 136, ptr %36, align 4
  %37 = getelementptr %struct.dst_entry, ptr %20, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %37, i8 0, i32 %14, i1 false) #13
  store i32 %1, ptr %37, align 4
  %38 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #17
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %15, label %41

41:                                               ; preds = %15, %8, %3
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @metadata_dst_free_percpu(ptr noundef %0) #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = ptrtoint ptr %0 to i32
  br label %7

7:                                                ; preds = %20, %5
  %8 = phi i32 [ %3, %5 ], [ %21, %20 ]
  %9 = phi i32 [ %2, %5 ], [ %22, %20 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %6
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 2, i32 0, i32 1
  tail call void @dst_cache_destroy(ptr noundef %18) #13
  %19 = load i32, ptr @nr_cpu_ids, align 4
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi i32 [ %19, %17 ], [ %8, %7 ]
  %22 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #17
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %7, label %24

24:                                               ; preds = %20, %1
  tail call void @free_percpu(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

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
!9 = !{i64 265337, i64 265398}
!10 = !{i64 284037}
!11 = !{i64 268354}
!12 = !{i64 2156659707}
!13 = !{i64 2147972936}
!14 = !{i64 370098, i64 2147860069, i64 2147860095, i64 2147860142, i64 2147860164, i64 2147860192, i64 2147860212}
!15 = !{i64 2147875322, i64 2147875354, i64 2147875383, i64 2147875417, i64 2147875448, i64 2147875471}
!16 = !{i64 2147973139}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2156670540}
!19 = !{i64 382269, i64 382290, i64 382313, i64 382332, i64 382351}
!20 = !{i64 2156670919}
!21 = !{i64 2147973937}
!22 = !{i64 2147876096, i64 2147876128, i64 2147876157, i64 2147876191, i64 2147876222, i64 2147876245}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2149529105}
!25 = !{i64 2156674845}
!26 = !{i64 2156675224}
