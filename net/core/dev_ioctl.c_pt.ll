; ModuleID = '/llk/IR/net/core/dev_ioctl.c_pt.bc'
source_filename = "../net/core/dev_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_load:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_load\22\09\09\09\09\09"
module asm "__kstrtabns_dev_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ifconf = type { i32, %union.anon.155 }
%union.anon.155 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.150, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.150 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ifreq = type { %union.anon.79, %union.anon.80 }
%union.anon.79 = type { [16 x i8] }
%union.anon.80 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon.103, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.103 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.91 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.91 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }

@.str = private unnamed_addr constant [10 x i8] c"netdev-%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_dev_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_load = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_load to i32), ptr @__kstrtab_dev_load, ptr @__kstrtabns_dev_load }, section "___ksymtab+dev_load", align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"net/core/dev_ioctl.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_dev_load], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_ifconf(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ifconf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #10, !srcloc !10
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !11

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #7, !srcloc !12
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !11

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 8, %2 ]
  %17 = sub i32 8, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #9
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.ifconf, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %3, align 8
  %25 = select i1 %21, i32 %24, i32 0
  %26 = select i1 %21, i32 32, i32 0
  %27 = select i1 %21, ptr %23, ptr null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %21, label %28, label %60

28:                                               ; preds = %19
  call void @rtnl_lock() #9
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %27, null
  br label %38

34:                                               ; preds = %48
  %35 = add i32 %49, %40
  %36 = load ptr, ptr %39, align 8
  %37 = icmp eq ptr %36, %29
  br i1 %37, label %52, label %38

38:                                               ; preds = %34, %32
  %39 = phi ptr [ %30, %32 ], [ %36, %34 ]
  %40 = phi i32 [ 0, %32 ], [ %35, %34 ]
  %41 = getelementptr i8, ptr %39, i32 -40
  br i1 %33, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @inet_gifconf(ptr noundef %41, ptr noundef null, i32 noundef 0, i32 noundef %26) #9
  br label %48

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %27, i32 %40
  %46 = sub i32 %25, %40
  %47 = call i32 @inet_gifconf(ptr noundef %41, ptr noundef %45, i32 noundef %46, i32 noundef %26) #9
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %47, %44 ], [ %43, %42 ]
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %34

51:                                               ; preds = %48
  call void @rtnl_unlock() #9
  br label %60

52:                                               ; preds = %34, %28
  %53 = phi i32 [ 0, %28 ], [ %35, %34 ]
  call void @rtnl_unlock() #9
  %54 = tail call ptr @llvm.thread.pointer() #9
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #7, !srcloc !12
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %59 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %53, i32 -1090519041) #9, !srcloc !15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  br label %60

60:                                               ; preds = %52, %51, %19
  %61 = phi i32 [ -14, %51 ], [ %59, %52 ], [ -14, %19 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_gifconf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_load(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %3 = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %1) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %5
  %11 = tail call zeroext i1 @capable(i32 noundef 16) #9
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %10, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  store i8 1, ptr %4, align 1
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq i32 %1, 35088
  %10 = getelementptr [16 x i8], ptr %2, i32 0, i32 15
  store i8 0, ptr %10, align 1
  br i1 %9, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @netdev_get_name(ptr noundef %0, ptr noundef %2, i32 noundef %13) #9
  br label %143

15:                                               ; preds = %8
  %16 = tail call ptr @strchr(ptr noundef %2, i32 noundef 58)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i8 0, ptr %16, align 1
  br label %19

19:                                               ; preds = %18, %15
  switch i32 %1, label %126 [
    i32 35111, label %20
    i32 35091, label %24
    i32 35101, label %24
    i32 35105, label %24
    i32 35113, label %24
    i32 35184, label %24
    i32 35123, label %24
    i32 35138, label %24
    i32 35142, label %83
    i32 35143, label %86
    i32 35144, label %86
    i32 35107, label %86
    i32 35185, label %105
    i32 35139, label %105
    i32 35092, label %107
    i32 35102, label %107
    i32 35106, label %107
    i32 35108, label %107
    i32 35120, label %107
    i32 35121, label %107
    i32 35122, label %107
    i32 35127, label %107
    i32 35145, label %107
    i32 35216, label %107
    i32 35217, label %107
    i32 35218, label %107
    i32 35221, label %107
    i32 35234, label %107
    i32 35235, label %107
    i32 35248, label %107
    i32 35219, label %111
    i32 35220, label %111
    i32 35103, label %143
    i32 35104, label %143
    i32 35089, label %143
    i32 35249, label %129
    i32 35146, label %129
  ]

20:                                               ; preds = %19
  tail call void @dev_load(ptr noundef %0, ptr noundef %2)
  %21 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  %22 = tail call i32 @dev_get_mac_address(ptr noundef %21, ptr noundef %0, ptr noundef %2) #9
  br i1 %17, label %143, label %23

23:                                               ; preds = %20
  store i8 58, ptr %16, align 1
  br label %143

24:                                               ; preds = %19, %19, %19, %19, %19, %19, %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %25 = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %2) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29, %27
  %33 = tail call zeroext i1 @capable(i32 noundef 16) #9
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %2) #9
  br label %36

36:                                               ; preds = %34, %32, %29, %24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %37 = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %2) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %80, label %39

39:                                               ; preds = %36
  switch i32 %1, label %79 [
    i32 35091, label %40
    i32 35101, label %44
    i32 35105, label %46
    i32 35113, label %80
    i32 35184, label %50
    i32 35123, label %71
    i32 35138, label %75
  ]

40:                                               ; preds = %39
  %41 = tail call i32 @dev_get_flags(ptr noundef nonnull %37) #9
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  store i16 %42, ptr %43, align 4
  br label %80

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  store i32 0, ptr %45, align 4
  br label %80

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 20
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  br label %80

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  %52 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 5
  %58 = load i32, ptr %57, align 32
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 59
  %62 = load i32, ptr %61, align 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i8 %63, ptr %64, align 2
  %65 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 48
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 47
  %69 = load i8, ptr %68, align 2
  %70 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i8 %69, ptr %70, align 4
  br label %80

71:                                               ; preds = %39
  %72 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  store i32 %73, ptr %74, align 4
  br label %80

75:                                               ; preds = %39
  %76 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 91
  %77 = load i32, ptr %76, align 16
  %78 = getelementptr inbounds %struct.ifreq, ptr %2, i32 0, i32 1
  store i32 %77, ptr %78, align 4
  br label %80

79:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 176, i32 noundef 9, ptr noundef null) #9
  br label %80

80:                                               ; preds = %79, %75, %71, %50, %46, %44, %40, %39, %36
  %81 = phi i32 [ 0, %75 ], [ 0, %71 ], [ 0, %50 ], [ 0, %46 ], [ 0, %44 ], [ 0, %40 ], [ -19, %36 ], [ -25, %79 ], [ -22, %39 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br i1 %17, label %143, label %82

82:                                               ; preds = %80
  store i8 58, ptr %16, align 1
  br label %143

83:                                               ; preds = %19
  tail call void @dev_load(ptr noundef %0, ptr noundef %2)
  %84 = tail call i32 @dev_ethtool(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9
  br i1 %17, label %143, label %85

85:                                               ; preds = %83
  store i8 58, ptr %16, align 1
  br label %143

86:                                               ; preds = %19, %19, %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %87 = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %2) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91, %89
  %95 = tail call zeroext i1 @capable(i32 noundef 16) #9
  br i1 %95, label %96, label %98

96:                                               ; preds = %94
  %97 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %2) #9
  br label %98

98:                                               ; preds = %96, %94, %91, %86
  %99 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = tail call zeroext i1 @ns_capable(ptr noundef %100, i32 noundef 12) #9
  br i1 %101, label %102, label %143

102:                                              ; preds = %98
  tail call void @rtnl_lock() #9
  %103 = tail call fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %1)
  tail call void @rtnl_unlock() #9
  br i1 %17, label %143, label %104

104:                                              ; preds = %102
  store i8 58, ptr %16, align 1
  br label %143

105:                                              ; preds = %19, %19
  %106 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %106, label %107, label %143

107:                                              ; preds = %105, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %108 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %109 = load ptr, ptr %108, align 4
  %110 = tail call zeroext i1 @ns_capable(ptr noundef %109, i32 noundef 12) #9
  br i1 %110, label %111, label %143

111:                                              ; preds = %107, %19, %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %112 = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %2) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116, %114
  %120 = tail call zeroext i1 @capable(i32 noundef 16) #9
  br i1 %120, label %121, label %123

121:                                              ; preds = %119
  %122 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %2) #9
  br label %123

123:                                              ; preds = %121, %119, %116, %111
  tail call void @rtnl_lock() #9
  %124 = tail call fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %1)
  tail call void @rtnl_unlock() #9
  br i1 %6, label %143, label %125

125:                                              ; preds = %123
  store i8 0, ptr %4, align 1
  br label %143

126:                                              ; preds = %19
  %127 = and i32 %1, -16
  %128 = icmp eq i32 %127, 35312
  br i1 %128, label %129, label %143

129:                                              ; preds = %126, %19, %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %130 = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %2) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134, %132
  %138 = tail call zeroext i1 @capable(i32 noundef 16) #9
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  %140 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %2) #9
  br label %141

141:                                              ; preds = %139, %137, %134, %129
  tail call void @rtnl_lock() #9
  %142 = tail call fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %1)
  tail call void @rtnl_unlock() #9
  br label %143

143:                                              ; preds = %141, %126, %125, %123, %107, %105, %104, %102, %98, %85, %83, %82, %80, %23, %20, %19, %19, %19, %11
  %144 = phi i32 [ %14, %11 ], [ %142, %141 ], [ %22, %23 ], [ %22, %20 ], [ %81, %82 ], [ %81, %80 ], [ %84, %85 ], [ %84, %83 ], [ -1, %98 ], [ %103, %104 ], [ %103, %102 ], [ -1, %105 ], [ -1, %107 ], [ %124, %125 ], [ %124, %123 ], [ -25, %19 ], [ -25, %19 ], [ -25, %19 ], [ -25, %126 ]
  ret i32 %144
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_mac_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_ethtool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.hwtstamp_config, align 4
  %6 = tail call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %196, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  switch i32 %3, label %168 [
    i32 35092, label %11
    i32 35102, label %196
    i32 35106, label %16
    i32 35108, label %20
    i32 35127, label %27
    i32 35185, label %41
    i32 35121, label %48
    i32 35122, label %64
    i32 35139, label %80
    i32 35107, label %86
    i32 35146, label %90
    i32 35234, label %102
    i32 35235, label %102
    i32 35248, label %136
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = sext i16 %13 to i32
  %15 = tail call i32 @dev_change_flags(ptr noundef nonnull %6, i32 noundef %14, ptr noundef null) #9
  br label %196

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @dev_set_mtu(ptr noundef nonnull %6, i32 noundef %18) #9
  br label %196

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 51
  %22 = load i8, ptr %21, align 1
  %23 = icmp ugt i8 %22, 16
  br i1 %23, label %196, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %26 = tail call i32 @dev_set_mac_address_user(ptr noundef nonnull %6, ptr noundef %25, ptr noundef null) #9
  br label %196

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 32
  %31 = load i16, ptr %30, align 16
  %32 = icmp eq i16 %29, %31
  br i1 %32, label %33, label %196

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 83
  %35 = getelementptr inbounds %struct.sockaddr, ptr %28, i32 0, i32 1
  %36 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 51
  %37 = load i8, ptr %36, align 1
  %38 = tail call i8 @llvm.umin.i8(i8 %37, i8 14)
  %39 = zext i8 %38 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %34, ptr align 2 %35, i32 %39, i1 false)
  %40 = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef nonnull %6) #9
  br label %196

41:                                               ; preds = %8
  %42 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %196, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %47 = tail call i32 %43(ptr noundef nonnull %6, ptr noundef %46) #9
  br label %196

48:                                               ; preds = %8
  %49 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %196, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %54 = load i16, ptr %53, align 4
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %196

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %196, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.sockaddr, ptr %53, i32 0, i32 1
  %63 = tail call i32 @dev_mc_add_global(ptr noundef nonnull %6, ptr noundef %62) #9
  br label %196

64:                                               ; preds = %8
  %65 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %196, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %196

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %196, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.sockaddr, ptr %69, i32 0, i32 1
  %79 = tail call i32 @dev_mc_del_global(ptr noundef nonnull %6, ptr noundef %78) #9
  br label %196

80:                                               ; preds = %8
  %81 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %196, label %84

84:                                               ; preds = %80
  %85 = tail call i32 @dev_change_tx_queue_len(ptr noundef nonnull %6, i32 noundef %82) #9
  br label %196

86:                                               ; preds = %8
  %87 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %88 = getelementptr [16 x i8], ptr %87, i32 0, i32 15
  store i8 0, ptr %88, align 1
  %89 = tail call i32 @dev_change_name(ptr noundef nonnull %6, ptr noundef %87) #9
  br label %196

90:                                               ; preds = %8
  %91 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %92 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 14
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %196, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %196, label %100

100:                                              ; preds = %95
  %101 = tail call i32 %93(ptr noundef nonnull %6, ptr noundef %91) #9
  br label %196

102:                                              ; preds = %8, %8
  %103 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %196, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 15
  %109 = load i64, ptr %108, align 16
  %110 = and i64 %109, 2
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %196, label %112

112:                                              ; preds = %107
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !18
  %114 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 99
  %115 = load ptr, ptr %114, align 8
  %116 = ptrtoint ptr %115 to i32
  %117 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %118 = inttoptr i32 %117 to ptr
  %119 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %118) #7, !srcloc !19
  %120 = add i32 %119, %116
  %121 = inttoptr i32 %120 to ptr
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %113) #9, !srcloc !20
  tail call void @rtnl_unlock() #9
  %124 = getelementptr i8, ptr %6, i32 1408
  %125 = tail call i32 @br_ioctl_call(ptr noundef %0, ptr noundef %124, i32 noundef %3, ptr noundef %1, ptr noundef null) #9
  %126 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !18
  %127 = load ptr, ptr %114, align 8
  %128 = ptrtoint ptr %127 to i32
  %129 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %130 = inttoptr i32 %129 to ptr
  %131 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %130) #7, !srcloc !19
  %132 = add i32 %131, %128
  %133 = inttoptr i32 %132 to ptr
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, -1
  store i32 %135, ptr %133, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %126) #9, !srcloc !20
  tail call void @rtnl_lock() #9
  br label %196

136:                                              ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #9, !annotation !9
  %137 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %138, i32 12, i32 -1090519040) #10, !srcloc !10
  %140 = extractvalue { i32, i32 } %139, 0
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150, !prof !11

142:                                              ; preds = %136
  %143 = tail call ptr @llvm.thread.pointer() #9
  %144 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 3
  %145 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %144) #7, !srcloc !12
  %146 = and i32 %145, -13
  %147 = or i32 %146, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %148 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %138, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150, !prof !11

150:                                              ; preds = %142, %136
  %151 = phi i32 [ %148, %142 ], [ 12, %136 ]
  %152 = sub i32 12, %151
  %153 = getelementptr i8, ptr %5, i32 %152
  call void @llvm.memset.p0.i32(ptr align 1 %153, i8 0, i32 %151, i1 false) #9
  br label %165

154:                                              ; preds = %142
  %155 = load i32, ptr %5, align 4
  %156 = icmp ult i32 %155, 2
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.hwtstamp_config, ptr %5, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.hwtstamp_config, ptr %5, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = icmp ult i32 %159, 4
  %163 = icmp ult i32 %161, 16
  %164 = and i1 %162, %163
  br i1 %164, label %167, label %165

165:                                              ; preds = %157, %154, %150
  %166 = phi i32 [ -14, %150 ], [ -34, %157 ], [ -22, %154 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %196

167:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %183

168:                                              ; preds = %8
  %169 = and i32 %3, -16
  %170 = icmp eq i32 %169, 35312
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 15
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %196, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %175
  %181 = tail call i32 %173(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %196

182:                                              ; preds = %168
  switch i32 %3, label %196 [
    i32 35249, label %183
    i32 35248, label %183
    i32 35145, label %183
    i32 35144, label %183
    i32 35143, label %183
    i32 35221, label %185
    i32 35220, label %185
    i32 35219, label %185
    i32 35218, label %185
    i32 35217, label %185
    i32 35216, label %185
  ]

183:                                              ; preds = %182, %182, %182, %182, %182, %167
  %184 = call fastcc i32 @dev_eth_ioctl(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %3)
  br label %196

185:                                              ; preds = %182, %182, %182, %182, %182, %182
  %186 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 13
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = tail call i32 %187(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %3) #9
  br label %196

196:                                              ; preds = %194, %189, %185, %183, %182, %180, %175, %171, %165, %112, %107, %102, %100, %95, %90, %86, %84, %80, %77, %72, %68, %64, %61, %56, %52, %48, %45, %41, %33, %27, %24, %20, %16, %11, %8, %4
  %197 = phi i32 [ %125, %112 ], [ %89, %86 ], [ %85, %84 ], [ %79, %77 ], [ %63, %61 ], [ 0, %33 ], [ %26, %24 ], [ %19, %16 ], [ %15, %11 ], [ -19, %4 ], [ -95, %8 ], [ -22, %20 ], [ -22, %27 ], [ -22, %52 ], [ -22, %48 ], [ -19, %56 ], [ -22, %68 ], [ -22, %64 ], [ -19, %72 ], [ -22, %80 ], [ -19, %102 ], [ -95, %107 ], [ %184, %183 ], [ -22, %182 ], [ %47, %45 ], [ -95, %41 ], [ %101, %100 ], [ -19, %95 ], [ -95, %90 ], [ %166, %165 ], [ %181, %180 ], [ -19, %175 ], [ -95, %171 ], [ %195, %194 ], [ -19, %189 ], [ -95, %185 ]
  ret i32 %197
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_get_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mac_address_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add_global(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del_global(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_tx_queue_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_ioctl_call(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dev_eth_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 %14(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  %16 = icmp eq i32 %15, -95
  br i1 %16, label %17, label %28

17:                                               ; preds = %13, %9, %3
  %18 = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %19(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  br label %28

28:                                               ; preds = %26, %21, %17, %13
  %29 = phi i32 [ %15, %13 ], [ %27, %26 ], [ -95, %17 ], [ -19, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }

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
!10 = !{i64 2151645202, i64 2151645227}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 4141314}
!13 = !{i64 4141511}
!14 = !{i64 2151626790}
!15 = !{i64 2156619056, i64 2156619336, i64 2156619670, i64 2156620004}
!16 = !{i64 2149314246}
!17 = !{i64 2149314463}
!18 = !{i64 652548, i64 652609}
!19 = !{i64 671248}
!20 = !{i64 655565}
