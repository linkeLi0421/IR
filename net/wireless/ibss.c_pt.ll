; ModuleID = '/llk/IR/net/wireless/ibss.c_pt.bc'
source_filename = "../net/wireless/ibss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_ibss_joined:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_ibss_joined\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_ibss_joined:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.115 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.114, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.114 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_event = type { %struct.list_head, i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_connect_resp_params }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_cached_keys = type { [4 x %struct.key_params], [4 x [13 x i8]], i32 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"net/wireless/ibss.c\00", align 1
@cfg80211_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cfg80211_ibss_joined = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_ibss_joined = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_ibss_joined = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_ibss_joined to i32), ptr @__kstrtab_cfg80211_ibss_joined, ptr @__kstrtabns_cfg80211_ibss_joined }, section "___ksymtab+cfg80211_ibss_joined", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"net/wireless/core.h\00", align 1
@__tracepoint_cfg80211_ibss_joined = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_rdev_join_ibss = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_qos_map = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_del_key = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_leave_ibss = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_cfg80211_ibss_joined], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_ibss_joined(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %67

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 14
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %67, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = tail call ptr @cfg80211_get_bss(ptr noundef %15, ptr noundef %2, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef 2) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  br label %67

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %21, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #6, !srcloc !11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #6, !srcloc !12
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %21, i32 0, i32 9, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #6, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #6, !srcloc !12
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 9, ptr noundef null) #6
  br label %39

39:                                               ; preds = %38, %33, %29
  %40 = load ptr, ptr %5, align 4
  %41 = load ptr, ptr %20, align 4
  %42 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %40, ptr noundef %42) #6
  br label %43

43:                                               ; preds = %39, %19
  %44 = getelementptr i8, ptr %16, i32 -72
  %45 = getelementptr i8, ptr %16, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #6, !srcloc !11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #6, !srcloc !14
  %47 = getelementptr i8, ptr %16, i32 24
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %48, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #6, !srcloc !11
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #6, !srcloc !14
  br label %53

53:                                               ; preds = %50, %43
  store ptr %44, ptr %20, align 4
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 11
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 16777216
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  tail call void @cfg80211_upload_connect_keys(ptr noundef %5) #6
  %60 = load ptr, ptr %5, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi ptr [ %60, %59 ], [ %54, %53 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65, !prof !9

64:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %62, i32 -544
  tail call void @nl80211_send_ibss_bssid(ptr noundef %66, ptr noundef %0, ptr noundef %1, i32 noundef 3264) #6
  br label %67

67:                                               ; preds = %65, %18, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_upload_connect_keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_ibss_bssid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_ibss_joined(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

10:                                               ; preds = %4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_ibss_joined, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.thread.pointer() #6
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %25 = tail call i32 @__traceiter_cfg80211_ibss_joined(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %26

26:                                               ; preds = %24, %13, %10
  %27 = icmp eq ptr %2, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #6
  br label %56

29:                                               ; preds = %26
  %30 = and i32 %3, 17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !8

32:                                               ; preds = %29
  %33 = and i32 %3, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 2
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ 0, %29 ], [ %35, %32 ]
  %38 = or i32 %3, 256
  %39 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %37, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef %38, i32 noundef 68) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.cfg80211_event, ptr %41, i32 0, i32 1
  store i32 3, ptr %44, align 8
  %45 = getelementptr inbounds %struct.cfg80211_event, ptr %41, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %45, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %46 = getelementptr inbounds %struct.cfg80211_event, ptr %41, i32 0, i32 2, i32 0, i32 2
  store ptr %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 24
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #6
  %49 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 23
  %50 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 23, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %41, ptr %50, align 4
  store ptr %49, ptr %41, align 8
  %52 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %41, ptr %51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #6
  %53 = load ptr, ptr @cfg80211_wq, align 4
  %54 = getelementptr i8, ptr %7, i32 -340
  %55 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %54) #6
  br label %56

56:                                               ; preds = %43, %36, %28
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_join_ibss(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 14
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %120

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -3
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %19, i32 2, i32 4
  %21 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 %17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %22, i32 0, i32 1
  br label %28

28:                                               ; preds = %41, %26
  %29 = phi i32 [ %24, %26 ], [ %42, %41 ]
  %30 = phi i32 [ 0, %26 ], [ %43, %41 ]
  %31 = phi i32 [ 0, %26 ], [ %44, %41 ]
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr %struct.ieee80211_rate, ptr %32, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = shl nuw i32 1, %31
  %39 = or i32 %30, %38
  store i32 %39, ptr %11, align 4
  %40 = load i32, ptr %23, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi i32 [ %29, %28 ], [ %40, %37 ]
  %43 = phi i32 [ %30, %28 ], [ %39, %37 ]
  %44 = add nuw nsw i32 %31, 1
  %45 = icmp slt i32 %44, %42
  br i1 %45, label %28, label %46

46:                                               ; preds = %41, %14, %10
  %47 = icmp eq ptr %3, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %3, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53, !prof !9

52:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #6
  br label %120

53:                                               ; preds = %48, %46
  %54 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 18
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !8

57:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #6
  %58 = load ptr, ptr %54, align 4
  tail call void @kfree_sensitive(ptr noundef %58) #6
  br label %59

59:                                               ; preds = %57, %53
  store ptr %3, ptr %54, align 4
  %60 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 8
  %61 = load i8, ptr %60, align 4, !range !18
  %62 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 28
  store i8 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 12
  %64 = load i8, ptr %63, align 4, !range !18
  %65 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 29
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 27
  %67 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %66, ptr noundef align 4 dereferenceable(28) %67, i32 28, i1 false)
  br i1 %47, label %73, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 16
  store ptr %3, ptr %69, align 4
  %70 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %3, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 17
  store i32 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_join_ibss, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = tail call ptr @llvm.thread.pointer() #6
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  %89 = tail call i32 @__traceiter_rdev_join_ibss(ptr noundef null, ptr noundef %74, ptr noundef %1, ptr noundef %2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %90

90:                                               ; preds = %88, %77, %73
  %91 = load ptr, ptr %0, align 32
  %92 = getelementptr inbounds %struct.cfg80211_ops, ptr %91, i32 0, i32 46
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(ptr noundef %74, ptr noundef %1, ptr noundef %2) #6
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = tail call ptr @llvm.thread.pointer() #6
  %99 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = lshr i32 %100, 5
  %102 = getelementptr i32, ptr @__cpu_online_mask, i32 %101
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %100, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %105, %103
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %97
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  %109 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %74, i32 noundef %94) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  br label %110

110:                                              ; preds = %108, %97, %90
  %111 = icmp eq i32 %94, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %110
  store ptr null, ptr %54, align 4
  br label %120

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 13
  %115 = load ptr, ptr %2, align 4
  %116 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 4
  %117 = load i8, ptr %116, align 4
  %118 = zext i8 %117 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %114, ptr align 1 %115, i32 %118, i1 false)
  %119 = load i8, ptr %116, align 4
  store i8 %119, ptr %7, align 2
  br label %120

120:                                              ; preds = %113, %112, %52, %4
  %121 = phi i32 [ -22, %52 ], [ %94, %112 ], [ 0, %113 ], [ -114, %4 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_clear_ibss(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %5) #6
  tail call fastcc void @__cfg80211_clear_ibss(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__cfg80211_clear_ibss(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %4, i32 -544
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #6
  store ptr null, ptr %9, align 4
  %11 = load ptr, ptr %8, align 32
  %12 = getelementptr inbounds %struct.cfg80211_ops, ptr %11, i32 0, i32 87
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %7
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #6
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %30 = tail call i32 @__traceiter_rdev_set_qos_map(ptr noundef null, ptr noundef nonnull %4, ptr noundef %0, ptr noundef null) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %31 = load ptr, ptr %8, align 32
  %32 = getelementptr inbounds %struct.cfg80211_ops, ptr %31, i32 0, i32 87
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %29, %18, %15
  %35 = phi ptr [ %13, %15 ], [ %13, %18 ], [ %33, %29 ]
  %36 = tail call i32 %35(ptr noundef nonnull %4, ptr noundef %0, ptr noundef null) #6
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = tail call ptr @llvm.thread.pointer() #6
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  %51 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %4, i32 noundef %36) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  br label %52

52:                                               ; preds = %50, %39, %34, %7
  %53 = load ptr, ptr %8, align 32
  %54 = getelementptr inbounds %struct.cfg80211_ops, ptr %53, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %98, label %57

57:                                               ; preds = %95, %52
  %58 = phi i32 [ %96, %95 ], [ 0, %52 ]
  %59 = trunc i32 %58 to i8
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = tail call ptr @llvm.thread.pointer() #6
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %74 = tail call i32 @__traceiter_rdev_del_key(ptr noundef null, ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext %59, i1 noundef zeroext false, ptr noundef null) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  br label %75

75:                                               ; preds = %73, %62, %57
  %76 = load ptr, ptr %8, align 32
  %77 = getelementptr inbounds %struct.cfg80211_ops, ptr %76, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext %59, i1 noundef zeroext false, ptr noundef null) #6
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = tail call ptr @llvm.thread.pointer() #6
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  %94 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %4, i32 noundef %79) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  br label %95

95:                                               ; preds = %93, %82, %75
  %96 = add nuw nsw i32 %58, 1
  %97 = icmp eq i32 %96, 6
  br i1 %97, label %98, label %57

98:                                               ; preds = %95, %52
  %99 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 25
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %122, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %100, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #6, !srcloc !11
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #6, !srcloc !12
  %105 = extractvalue { i32, i32 } %104, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108, !prof !9

107:                                              ; preds = %102
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %108

108:                                              ; preds = %107, %102
  %109 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %100, i32 0, i32 9, i32 6
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = getelementptr i8, ptr %110, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #6, !srcloc !11
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #6, !srcloc !12
  %115 = extractvalue { i32, i32 } %114, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118, !prof !9

117:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 9, ptr noundef null) #6
  br label %118

118:                                              ; preds = %117, %112, %108
  %119 = load ptr, ptr %3, align 4
  %120 = load ptr, ptr %99, align 4
  %121 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %120, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %119, ptr noundef %121) #6
  br label %122

122:                                              ; preds = %118, %98
  store ptr null, ptr %99, align 4
  %123 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 14
  store i8 0, ptr %123, align 2
  %124 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 27
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %124, i8 0, i32 28, i1 false)
  tail call void @cfg80211_sched_dfs_chan_update(ptr noundef %8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_leave_ibss(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 14
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_leave_ibss, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #6
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !27
  %25 = tail call i32 @__traceiter_rdev_leave_ibss(ptr noundef null, ptr noundef %10, ptr noundef %1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  br label %26

26:                                               ; preds = %24, %13, %9
  %27 = load ptr, ptr %0, align 32
  %28 = getelementptr inbounds %struct.cfg80211_ops, ptr %27, i32 0, i32 47
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %10, ptr noundef %1) #6
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = tail call ptr @llvm.thread.pointer() #6
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  %45 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %10, i32 noundef %30) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  br label %46

46:                                               ; preds = %44, %33, %26
  %47 = icmp eq i32 %30, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 20
  store i32 0, ptr %49, align 4
  tail call fastcc void @__cfg80211_clear_ibss(ptr noundef %1)
  br label %50

50:                                               ; preds = %48, %46, %3
  %51 = phi i32 [ 0, %48 ], [ -67, %3 ], [ %30, %46 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_leave_ibss(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_join_ibss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_dfs_chan_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_qos_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_del_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_leave_ibss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148181830}
!11 = !{i64 578992, i64 2148068963, i64 2148068989, i64 2148069036, i64 2148069058, i64 2148069086, i64 2148069106}
!12 = !{i64 2148084216, i64 2148084248, i64 2148084277, i64 2148084311, i64 2148084342, i64 2148084365}
!13 = !{i64 2148182033}
!14 = !{i64 2148081175, i64 2148081201, i64 2148081230, i64 2148081264, i64 2148081295, i64 2148081318}
!15 = !{i64 2155902718, i64 2155903202, i64 2155902755, i64 2155902811, i64 2155902845, i64 2155902869, i64 2155902910, i64 2155902931, i64 2155902959, i64 2155902993}
!16 = !{i64 2158320852}
!17 = !{i64 2158321048}
!18 = !{i8 0, i8 2}
!19 = !{i64 2157022274}
!20 = !{i64 2157022456}
!21 = !{i64 2156144849}
!22 = !{i64 2156145011}
!23 = !{i64 2157612414}
!24 = !{i64 2157612602}
!25 = !{i64 2156315522}
!26 = !{i64 2156315746}
!27 = !{i64 2156474055}
!28 = !{i64 2156474223}
