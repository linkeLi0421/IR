; ModuleID = '/llk/IR/net/socket.c_pt.bc'
source_filename = "../net/socket.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_alloc_file:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_alloc_file\22\09\09\09\09\09"
module asm "__kstrtabns_sock_alloc_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_from_file:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_from_file\22\09\09\09\09\09"
module asm "__kstrtabns_sock_from_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sockfd_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22sockfd_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_sockfd_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_sock_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_release:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_release\22\09\09\09\09\09"
module asm "__kstrtabns_sock_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_tx_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns___sock_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_sock_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sendmsg_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sendmsg_locked\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sendmsg_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_recv_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_recv_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns___sock_recv_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_recv_wifi_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_recv_wifi_status\22\09\09\09\09\09"
module asm "__kstrtabns___sock_recv_wifi_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_recv_ts_and_drops:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_recv_ts_and_drops\22\09\09\09\09\09"
module asm "__kstrtabns___sock_recv_ts_and_drops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_sock_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brioctl_set:\09\09\09\09\09"
module asm "\09.asciz \09\22brioctl_set\22\09\09\09\09\09"
module asm "__kstrtabns_brioctl_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vlan_ioctl_set:\09\09\09\09\09"
module asm "\09.asciz \09\22vlan_ioctl_set\22\09\09\09\09\09"
module asm "__kstrtabns_vlan_ioctl_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_create_lite:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_create_lite\22\09\09\09\09\09"
module asm "__kstrtabns_sock_create_lite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_wake_async:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_wake_async\22\09\09\09\09\09"
module asm "__kstrtabns_sock_wake_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_create\22\09\09\09\09\09"
module asm "__kstrtabns___sock_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_create:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_create\22\09\09\09\09\09"
module asm "__kstrtabns_sock_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_create_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_create_kern\22\09\09\09\09\09"
module asm "__kstrtabns_sock_create_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_register\22\09\09\09\09\09"
module asm "__kstrtabns_sock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_sock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_ifreq:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_ifreq\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_ifreq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_user_ifreq:\09\09\09\09\09"
module asm "\09.asciz \09\22put_user_ifreq\22\09\09\09\09\09"
module asm "__kstrtabns_put_user_ifreq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_bind\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_listen\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_accept\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_connect\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_getsockname:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_getsockname\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_getsockname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_getpeername:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_getpeername\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_getpeername:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sendpage_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sendpage_locked\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sendpage_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sock_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sock_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sock_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sock_ip_overhead:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sock_ip_overhead\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sock_ip_overhead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.3 }
%union.anon.3 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type {}
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.195, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.195 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.184, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.185, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.186, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.18, %union.anon.20, %union.anon.21, i16, i8, i8, i32, %union.anon.23, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.180, [0 x i32], %union.anon.181, i16, i16, %union.anon.182, %struct.refcount_struct, [0 x i32], %union.anon.183 }
%union.anon.18 = type { i64 }
%union.anon.20 = type { i32 }
%union.anon.21 = type { i32 }
%union.anon.23 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.156 }
%union.anon.156 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { %struct.hlist_node }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.184 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.sk_buff_head = type { %union.anon.139, i32, %struct.spinlock }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.179, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.179 = type { ptr }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [56 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.197, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.198, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.199, ptr, %struct.address_space, %struct.list_head, %union.anon.202, i32, i32, ptr, ptr }
%union.anon.197 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.198 = type { %struct.callback_head }
%union.anon.199 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.202 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.97, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.97 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.82 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.82 = type { %struct.callback_head }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.131, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.24, %union.anon.129 }
%union.anon.24 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.131 = type { ptr }
%struct.scm_ts_pktinfo = type { i32, i32, [2 x i32] }
%struct.scm_timestamping_internal = type { [3 x %struct.timespec64] }
%struct.__kernel_sock_timeval = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.__kernel_old_timespec = type { i32, i32 }
%struct.sk_buff = type { %union.anon.132, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, ptr, %union.anon.134 }
%union.anon.134 = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.135, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.135 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.161 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.user_msghdr = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.used_address = type { %struct.__kernel_sockaddr_storage, i32 }
%struct.mmsghdr = type { %struct.user_msghdr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ifreq = type { %union.anon.136, %union.anon.137 }
%union.anon.136 = type { [16 x i8] }
%union.anon.137 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.page = type { i32, %union.anon.25, %union.anon.128, %struct.atomic_t }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.128 = type { %struct.atomic_t }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.190 }
%union.anon.190 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.212, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.212 = type { %struct.anon.213 }
%struct.anon.213 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.205, %struct.list_head, %struct.list_head, %union.anon.206 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.203 }
%union.anon.203 = type { i64 }
%union.anon.205 = type { %struct.list_head }
%union.anon.206 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.anon.2 = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sock_mnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@socket_file_ops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @sock_read_iter, ptr @sock_write_iter, ptr null, ptr null, ptr null, ptr @sock_poll, ptr @sock_ioctl, ptr null, ptr @sock_mmap, i32 0, ptr null, ptr null, ptr @sock_close, ptr null, ptr @sock_fasync, ptr null, ptr @sock_sendpage, ptr null, ptr null, ptr null, ptr @generic_splice_sendpage, ptr @sock_splice_read, ptr null, ptr null, ptr @sock_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@__kstrtab_sock_alloc_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_alloc_file = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_alloc_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_alloc_file to i32), ptr @__kstrtab_sock_alloc_file, ptr @__kstrtabns_sock_alloc_file }, section "___ksymtab+sock_alloc_file", align 4
@__kstrtab_sock_from_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_from_file = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_from_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_from_file to i32), ptr @__kstrtab_sock_from_file, ptr @__kstrtabns_sock_from_file }, section "___ksymtab+sock_from_file", align 4
@__kstrtab_sockfd_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_sockfd_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_sockfd_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sockfd_lookup to i32), ptr @__kstrtab_sockfd_lookup, ptr @__kstrtabns_sockfd_lookup }, section "___ksymtab+sockfd_lookup", align 4
@sockfs_inode_ops = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sockfs_setattr, ptr null, ptr @sockfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab_sock_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_alloc to i32), ptr @__kstrtab_sock_alloc, ptr @__kstrtabns_sock_alloc }, section "___ksymtab+sock_alloc", align 4
@__kstrtab_sock_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_release = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_release to i32), ptr @__kstrtab_sock_release, ptr @__kstrtabns_sock_release }, section "___ksymtab+sock_release", align 4
@__kstrtab___sock_tx_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_tx_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_tx_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_tx_timestamp to i32), ptr @__kstrtab___sock_tx_timestamp, ptr @__kstrtabns___sock_tx_timestamp }, section "___ksymtab+__sock_tx_timestamp", align 4
@__kstrtab_sock_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_sendmsg to i32), ptr @__kstrtab_sock_sendmsg, ptr @__kstrtabns_sock_sendmsg }, section "___ksymtab+sock_sendmsg", align 4
@__kstrtab_kernel_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sendmsg to i32), ptr @__kstrtab_kernel_sendmsg, ptr @__kstrtabns_kernel_sendmsg }, section "___ksymtab+kernel_sendmsg", align 4
@__kstrtab_kernel_sendmsg_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sendmsg_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sendmsg_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sendmsg_locked to i32), ptr @__kstrtab_kernel_sendmsg_locked, ptr @__kstrtabns_kernel_sendmsg_locked }, section "___ksymtab+kernel_sendmsg_locked", align 4
@__kstrtab___sock_recv_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_recv_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_recv_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_recv_timestamp to i32), ptr @__kstrtab___sock_recv_timestamp, ptr @__kstrtabns___sock_recv_timestamp }, section "___ksymtab_gpl+__sock_recv_timestamp", align 4
@__kstrtab___sock_recv_wifi_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_recv_wifi_status = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_recv_wifi_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_recv_wifi_status to i32), ptr @__kstrtab___sock_recv_wifi_status, ptr @__kstrtabns___sock_recv_wifi_status }, section "___ksymtab_gpl+__sock_recv_wifi_status", align 4
@__kstrtab___sock_recv_ts_and_drops = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_recv_ts_and_drops = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_recv_ts_and_drops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_recv_ts_and_drops to i32), ptr @__kstrtab___sock_recv_ts_and_drops, ptr @__kstrtabns___sock_recv_ts_and_drops }, section "___ksymtab_gpl+__sock_recv_ts_and_drops", align 4
@__kstrtab_sock_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_recvmsg to i32), ptr @__kstrtab_sock_recvmsg, ptr @__kstrtabns_sock_recvmsg }, section "___ksymtab+sock_recvmsg", align 4
@__kstrtab_kernel_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_recvmsg to i32), ptr @__kstrtab_kernel_recvmsg, ptr @__kstrtabns_kernel_recvmsg }, section "___ksymtab+kernel_recvmsg", align 4
@br_ioctl_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @br_ioctl_mutex, i64 12), ptr getelementptr (i8, ptr @br_ioctl_mutex, i64 12) } }, align 4
@br_ioctl_hook = internal unnamed_addr global ptr null, align 4
@__kstrtab_brioctl_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_brioctl_set = external dso_local constant [0 x i8], align 1
@__ksymtab_brioctl_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brioctl_set to i32), ptr @__kstrtab_brioctl_set, ptr @__kstrtabns_brioctl_set }, section "___ksymtab+brioctl_set", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@vlan_ioctl_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vlan_ioctl_mutex, i64 12), ptr getelementptr (i8, ptr @vlan_ioctl_mutex, i64 12) } }, align 4
@vlan_ioctl_hook = internal unnamed_addr global ptr null, align 4
@__kstrtab_vlan_ioctl_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_vlan_ioctl_set = external dso_local constant [0 x i8], align 1
@__ksymtab_vlan_ioctl_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vlan_ioctl_set to i32), ptr @__kstrtab_vlan_ioctl_set, ptr @__kstrtabns_vlan_ioctl_set }, section "___ksymtab+vlan_ioctl_set", align 4
@__kstrtab_sock_create_lite = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_create_lite = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_create_lite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_create_lite to i32), ptr @__kstrtab_sock_create_lite, ptr @__kstrtabns_sock_create_lite }, section "___ksymtab+sock_create_lite", align 4
@__kstrtab_sock_wake_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_wake_async = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_wake_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_wake_async to i32), ptr @__kstrtab_sock_wake_async, ptr @__kstrtabns_sock_wake_async }, section "___ksymtab+sock_wake_async", align 4
@__sock_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\016%s uses obsolete (PF_INET,SOCK_PACKET)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\014socket: no more sockets\0A\00", align 1
@net_families = internal global [46 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"net-pf-%d\00", align 1
@__kstrtab___sock_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_create = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_create to i32), ptr @__kstrtab___sock_create, ptr @__kstrtabns___sock_create }, section "___ksymtab+__sock_create", align 4
@__kstrtab_sock_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_create = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_create to i32), ptr @__kstrtab_sock_create, ptr @__kstrtabns_sock_create }, section "___ksymtab+sock_create", align 4
@__kstrtab_sock_create_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_create_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_create_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_create_kern to i32), ptr @__kstrtab_sock_create_kern, ptr @__kstrtabns_sock_create_kern }, section "___ksymtab+sock_create_kern", align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"net/socket.c\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\012protocol %d >= NPROTO(%d)\0A\00", align 1
@net_family_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"\016NET: Registered %s protocol family\0A\00", align 1
@pf_family_names = internal unnamed_addr constant [46 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], align 4
@__kstrtab_sock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_register to i32), ptr @__kstrtab_sock_register, ptr @__kstrtabns_sock_register }, section "___ksymtab+sock_register", align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"\016NET: Unregistered %s protocol family\0A\00", align 1
@__kstrtab_sock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_unregister to i32), ptr @__kstrtab_sock_unregister, ptr @__kstrtabns_sock_unregister }, section "___ksymtab+sock_unregister", align 4
@__initcall__kmod_socket__532_3140_sock_init1 = internal global ptr @sock_init, section ".initcall1.init", align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"sockets: used %d\0A\00", align 1
@__kstrtab_get_user_ifreq = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_ifreq = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_ifreq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_ifreq to i32), ptr @__kstrtab_get_user_ifreq, ptr @__kstrtabns_get_user_ifreq }, section "___ksymtab+get_user_ifreq", align 4
@__kstrtab_put_user_ifreq = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_user_ifreq = external dso_local constant [0 x i8], align 1
@__ksymtab_put_user_ifreq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_user_ifreq to i32), ptr @__kstrtab_put_user_ifreq, ptr @__kstrtabns_put_user_ifreq }, section "___ksymtab+put_user_ifreq", align 4
@__kstrtab_kernel_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_bind to i32), ptr @__kstrtab_kernel_bind, ptr @__kstrtabns_kernel_bind }, section "___ksymtab+kernel_bind", align 4
@__kstrtab_kernel_listen = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_listen = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_listen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_listen to i32), ptr @__kstrtab_kernel_listen, ptr @__kstrtabns_kernel_listen }, section "___ksymtab+kernel_listen", align 4
@__kstrtab_kernel_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_accept to i32), ptr @__kstrtab_kernel_accept, ptr @__kstrtabns_kernel_accept }, section "___ksymtab+kernel_accept", align 4
@__kstrtab_kernel_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_connect to i32), ptr @__kstrtab_kernel_connect, ptr @__kstrtabns_kernel_connect }, section "___ksymtab+kernel_connect", align 4
@__kstrtab_kernel_getsockname = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_getsockname = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_getsockname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_getsockname to i32), ptr @__kstrtab_kernel_getsockname, ptr @__kstrtabns_kernel_getsockname }, section "___ksymtab+kernel_getsockname", align 4
@__kstrtab_kernel_getpeername = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_getpeername = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_getpeername = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_getpeername to i32), ptr @__kstrtab_kernel_getpeername, ptr @__kstrtabns_kernel_getpeername }, section "___ksymtab+kernel_getpeername", align 4
@kernel_sendpage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"improper page for zero-copy send\00", align 1
@__kstrtab_kernel_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sendpage to i32), ptr @__kstrtab_kernel_sendpage, ptr @__kstrtabns_kernel_sendpage }, section "___ksymtab+kernel_sendpage", align 4
@__kstrtab_kernel_sendpage_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sendpage_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sendpage_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sendpage_locked to i32), ptr @__kstrtab_kernel_sendpage_locked, ptr @__kstrtabns_kernel_sendpage_locked }, section "___ksymtab+kernel_sendpage_locked", align 4
@__kstrtab_kernel_sock_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sock_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sock_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sock_shutdown to i32), ptr @__kstrtab_kernel_sock_shutdown, ptr @__kstrtabns_kernel_sock_shutdown }, section "___ksymtab+kernel_sock_shutdown", align 4
@__kstrtab_kernel_sock_ip_overhead = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sock_ip_overhead = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sock_ip_overhead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sock_ip_overhead to i32), ptr @__kstrtab_kernel_sock_ip_overhead, ptr @__kstrtabns_kernel_sock_ip_overhead }, section "___ksymtab+kernel_sock_ip_overhead", align 4
@sysctl_net_busy_read = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_net_busy_poll = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"8021q\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"system.sockprotoname\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"\013%s: fasync list not empty!\0A\00", align 1
@__func__.__sock_release = private unnamed_addr constant [15 x i8] c"__sock_release\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.16 = private unnamed_addr constant [10 x i8] c"PF_UNSPEC\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"PF_UNIX/PF_LOCAL\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"PF_INET\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"PF_AX25\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"PF_IPX\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"PF_APPLETALK\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"PF_NETROM\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"PF_BRIDGE\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"PF_ATMPVC\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"PF_X25\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"PF_INET6\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"PF_ROSE\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"PF_DECnet\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"PF_NETBEUI\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"PF_SECURITY\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"PF_KEY\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"PF_NETLINK/PF_ROUTE\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"PF_PACKET\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"PF_ASH\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"PF_ECONET\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"PF_ATMSVC\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"PF_RDS\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"PF_SNA\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"PF_IRDA\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"PF_PPPOX\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"PF_WANPIPE\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"PF_LLC\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"PF_IB\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"PF_MPLS\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"PF_CAN\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"PF_TIPC\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"PF_BLUETOOTH\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"PF_IUCV\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"PF_RXRPC\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"PF_ISDN\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"PF_PHONET\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"PF_IEEE802154\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"PF_CAIF\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"PF_ALG\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"PF_NFC\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"PF_VSOCK\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"PF_KCM\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"PF_QIPCRTR\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"PF_SMC\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"PF_XDP\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"PF_MCTP\00", align 1
@sock_fs_type = internal global %struct.file_system_type { ptr @.str.63, i32 0, ptr @sockfs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.62 = private unnamed_addr constant [17 x i8] c"sock_inode_cache\00", align 1
@sock_inode_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"sockfs\00", align 1
@sockfs_ops = internal constant %struct.super_operations { ptr @sock_alloc_inode, ptr null, ptr @sock_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sockfs_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sockfs_dname, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@sockfs_xattr_handlers = internal global [3 x ptr] [ptr @sockfs_xattr_handler, ptr @sockfs_security_xattr_handler, ptr null], align 4
@sock_alloc_inode.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"&ei->socket.wq.wait\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"socket:[%lu]\00", align 1
@sockfs_xattr_handler = internal constant %struct.xattr_handler { ptr @.str.14, ptr null, i32 0, ptr null, ptr @sockfs_xattr_get, ptr null }, align 4
@sockfs_security_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.66, i32 0, ptr null, ptr null, ptr @sockfs_security_xattr_set }, align 4
@.str.66 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__initcall__kmod_socket__532_3140_sock_init1, ptr @__ksymtab___sock_create, ptr @__ksymtab___sock_recv_timestamp, ptr @__ksymtab___sock_recv_ts_and_drops, ptr @__ksymtab___sock_recv_wifi_status, ptr @__ksymtab___sock_tx_timestamp, ptr @__ksymtab_brioctl_set, ptr @__ksymtab_get_user_ifreq, ptr @__ksymtab_kernel_accept, ptr @__ksymtab_kernel_bind, ptr @__ksymtab_kernel_connect, ptr @__ksymtab_kernel_getpeername, ptr @__ksymtab_kernel_getsockname, ptr @__ksymtab_kernel_listen, ptr @__ksymtab_kernel_recvmsg, ptr @__ksymtab_kernel_sendmsg, ptr @__ksymtab_kernel_sendmsg_locked, ptr @__ksymtab_kernel_sendpage, ptr @__ksymtab_kernel_sendpage_locked, ptr @__ksymtab_kernel_sock_ip_overhead, ptr @__ksymtab_kernel_sock_shutdown, ptr @__ksymtab_put_user_ifreq, ptr @__ksymtab_sock_alloc, ptr @__ksymtab_sock_alloc_file, ptr @__ksymtab_sock_create, ptr @__ksymtab_sock_create_kern, ptr @__ksymtab_sock_create_lite, ptr @__ksymtab_sock_from_file, ptr @__ksymtab_sock_recvmsg, ptr @__ksymtab_sock_register, ptr @__ksymtab_sock_release, ptr @__ksymtab_sock_sendmsg, ptr @__ksymtab_sock_unregister, ptr @__ksymtab_sock_wake_async, ptr @__ksymtab_sockfd_lookup, ptr @__ksymtab_vlan_ioctl_set], section "llvm.metadata"

@sys_socket = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_socket
@sys_socketpair = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_socketpair
@sys_bind = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_bind
@sys_listen = dso_local alias i32 (i32, i32), ptr @__se_sys_listen
@sys_accept4 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_accept4
@sys_accept = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_accept
@sys_connect = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_connect
@sys_getsockname = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_getsockname
@sys_getpeername = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_getpeername
@sys_sendto = dso_local alias i32 (i32, ptr, i32, i32, ptr, i32), ptr @__se_sys_sendto
@sys_send = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_send
@sys_recvfrom = dso_local alias i32 (i32, ptr, i32, i32, ptr, ptr), ptr @__se_sys_recvfrom
@sys_recv = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_recv
@sys_setsockopt = dso_local alias i32 (i32, i32, i32, ptr, i32), ptr @__se_sys_setsockopt
@sys_getsockopt = dso_local alias i32 (i32, i32, i32, ptr, ptr), ptr @__se_sys_getsockopt
@sys_shutdown = dso_local alias i32 (i32, i32), ptr @__se_sys_shutdown
@sys_sendmsg = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_sendmsg
@sys_sendmmsg = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_sendmmsg
@sys_recvmsg = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_recvmsg
@sys_recvmmsg = dso_local alias i32 (i32, ptr, i32, i32, ptr), ptr @__se_sys_recvmmsg
@sys_recvmmsg_time32 = dso_local alias i32 (i32, ptr, i32, i32, ptr), ptr @__se_sys_recvmmsg_time32

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @move_addr_to_kernel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 128
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %5
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #16, !srcloc !8
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !9

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #17
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !10
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %17 = tail call i32 @arm_copy_from_user(ptr noundef %2, ptr noundef %0, i32 noundef %1) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !9

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %17, %11 ], [ %1, %7 ]
  %21 = sub i32 %1, %20
  %22 = getelementptr i8, ptr %2, i32 %21
  tail call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #17
  br label %23

23:                                               ; preds = %19, %11, %5, %3
  %24 = phi i32 [ -22, %3 ], [ 0, %5 ], [ 0, %11 ], [ -14, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_alloc_file(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 50
  br label %13

13:                                               ; preds = %9, %5, %3
  %14 = phi ptr [ %2, %3 ], [ %12, %9 ], [ @.str, %5 ]
  %15 = getelementptr inbounds %struct.socket_alloc, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr @sock_mnt, align 4
  %17 = and i32 %1, 2048
  %18 = or i32 %17, 2
  %19 = tail call ptr @alloc_file_pseudo(ptr noundef %15, ptr noundef %16, ptr noundef %14, i32 noundef %18, ptr noundef nonnull @socket_file_ops) #17
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %44

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.proto_ops, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.proto_ops, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0) #17
  %31 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  store ptr null, ptr %31, align 16
  store ptr null, ptr %22, align 4
  tail call void @module_put(ptr noundef %27) #17
  br label %32

32:                                               ; preds = %25, %21
  %33 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 7, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @iput(ptr noundef %15) #17
  br label %48

43:                                               ; preds = %38
  store ptr null, ptr %39, align 4
  br label %48

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  store ptr %19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 15
  store ptr %0, ptr %46, align 8
  %47 = tail call i32 @stream_open(ptr noundef %15, ptr noundef %19) #17
  br label %48

48:                                               ; preds = %44, %43, %42
  ret ptr %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.proto_ops, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proto_ops, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  store ptr null, ptr %11, align 16
  store ptr null, ptr %2, align 4
  tail call void @module_put(ptr noundef %7) #17
  br label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.socket_alloc, ptr %0, i32 0, i32 1
  tail call void @iput(ptr noundef %23) #17
  br label %25

24:                                               ; preds = %18
  store ptr null, ptr %19, align 4
  br label %25

25:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @sock_from_file(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @socket_file_ops
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sockfd_lookup(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @fget(i32 noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 -9, ptr %1, align 4
  br label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @socket_file_ops
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  store i32 -88, ptr %1, align 4
  tail call void @fput(ptr noundef nonnull %3) #17
  br label %15

15:                                               ; preds = %14, %10, %5
  %16 = phi ptr [ null, %5 ], [ null, %14 ], [ %12, %10 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_alloc() #0 {
  %1 = load ptr, ptr @sock_mnt, align 4
  %2 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @new_inode_pseudo(ptr noundef %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %0
  %7 = getelementptr i8, ptr %4, i32 -128
  %8 = tail call i32 @get_next_ino() #17
  %9 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  store i32 %8, ptr %9, align 4
  store i16 -15873, ptr %4, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2
  %11 = tail call ptr @llvm.thread.pointer() #17
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 83
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %10, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %16, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  store ptr @sockfs_inode_ops, ptr %20, align 8
  br label %21

21:                                               ; preds = %6, %0
  %22 = phi ptr [ %7, %6 ], [ null, %0 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode_pseudo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__sock_tx_timestamp(i16 noundef zeroext %0, ptr nocapture noundef %1) #5 {
  %3 = load i8, ptr %1, align 1
  %4 = trunc i16 %0 to i8
  %5 = lshr i16 %0, 2
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 64
  %8 = and i8 %4, 3
  %9 = or i8 %8, %7
  %10 = or i8 %9, %3
  store i8 %10, ptr %1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_sendmsg(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %3, align 8
  %9 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i32 noundef %8) #17
  %10 = icmp eq i32 %9, -529
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

12:                                               ; preds = %2
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_sendmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %6, i32 noundef 1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  %7 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %7, align 8
  %13 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i32 noundef %12) #17
  %14 = icmp eq i32 %13, -529
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

16:                                               ; preds = %5
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_sendmsg_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call i32 @sock_no_sendmsg_locked(ptr noundef %0, ptr noundef %1, i32 noundef %4) #17
  br label %23

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %16, i32 noundef 1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.proto_ops, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 %19(ptr noundef %0, ptr noundef %1, i32 noundef %21) #17
  br label %23

23:                                               ; preds = %15, %13
  %24 = phi i32 [ %22, %15 ], [ %14, %13 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sock_recv_timestamp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.scm_ts_pktinfo, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.scm_timestamping_internal, align 8
  %10 = alloca %struct.__kernel_sock_timeval, align 8
  %11 = alloca %struct.__kernel_old_timeval, align 8
  %12 = alloca %struct.__kernel_timespec, align 8
  %13 = alloca %struct.__kernel_old_timespec, align 8
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  %18 = load volatile i32, ptr %14, align 4
  %19 = and i32 %18, 67108864
  %20 = icmp eq i32 %19, 0
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 7
  br i1 %17, label %62, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #17
  store i64 %29, ptr %25, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i64 [ %26, %24 ], [ %29, %28 ]
  %32 = phi i32 [ 0, %24 ], [ 1, %28 ]
  %33 = load volatile i32, ptr %14, align 4
  %34 = and i32 %33, 4096
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  br i1 %20, label %45, label %37

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #17, !annotation !15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %31) #17
  %38 = load i64, ptr %8, align 8
  store i64 %38, ptr %10, align 8
  %39 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = sdiv i32 %40, 1000
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.__kernel_sock_timeval, ptr %10, i32 0, i32 1
  store i64 %42, ptr %43, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  %44 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 63, i32 noundef 16, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  br label %62

45:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store i64 0, ptr %11, align 8, !annotation !15
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %11, i64 noundef %31) #17
  %46 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 29, i32 noundef 8, ptr noundef nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  br label %62

47:                                               ; preds = %30
  br i1 %20, label %55, label %48

48:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #17, !annotation !15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %7, i64 noundef %31) #17
  %49 = load i64, ptr %7, align 8
  store i64 %49, ptr %12, align 8
  %50 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.__kernel_timespec, ptr %12, i32 0, i32 1
  store i64 %52, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  %54 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 64, i32 noundef 16, ptr noundef nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #17
  br label %62

55:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #17, !annotation !15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %31) #17
  %56 = load i64, ptr %6, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %13, align 8
  %58 = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.__kernel_old_timespec, ptr %13, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  %61 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 35, i32 noundef 8, ptr noundef nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  br label %62

62:                                               ; preds = %55, %48, %45, %37, %3
  %63 = phi i32 [ %32, %45 ], [ %32, %37 ], [ %32, %55 ], [ %32, %48 ], [ 0, %3 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false)
  %64 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %65 = load i16, ptr %64, align 8
  %66 = and i16 %65, 16
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %9, i64 noundef %70) #17
  br label %73

73:                                               ; preds = %72, %68
  %74 = zext i1 %71 to i32
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi i32 [ 1, %62 ], [ %74, %73 ]
  %77 = icmp eq ptr %23, null
  br i1 %77, label %143, label %78

78:                                               ; preds = %75
  %79 = load i16, ptr %64, align 8
  %80 = and i16 %79, 64
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %143, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = icmp eq i64 %84, 0
  %86 = icmp ne i32 %63, 0
  %87 = or i1 %86, %85
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %90 = load i16, ptr %89, align 8
  %91 = and i16 %90, 7
  %92 = icmp eq i16 %91, 4
  br i1 %92, label %143, label %93

93:                                               ; preds = %88, %82
  %94 = icmp sgt i16 %79, -1
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 59
  %97 = load i32, ptr %96, align 8
  %98 = call i64 @ptp_convert_timestamp(ptr noundef nonnull %23, i32 noundef %97) #17
  br label %101

99:                                               ; preds = %93
  %100 = load i64, ptr %23, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi i64 [ %98, %95 ], [ %100, %99 ]
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %143, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.timespec64, ptr %9, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %102) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %105, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  %106 = load i16, ptr %64, align 8
  %107 = and i16 %106, 8192
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %145, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %111 = load i16, ptr %110, align 8
  %112 = and i16 %111, 7
  %113 = icmp eq i16 %112, 4
  br i1 %113, label %145, label %114

114:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %115 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 19
  %116 = load i16, ptr %115, align 2
  %117 = icmp eq i16 %116, -1
  br i1 %117, label %142, label %118

118:                                              ; preds = %114
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %119 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 10
  %120 = load i32, ptr %119, align 8
  %121 = call ptr @dev_get_by_napi_id(i32 noundef %120) #17
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.net_device, ptr %121, i32 0, i32 17
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %4, align 4
  br label %126

126:                                              ; preds = %123, %118
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %127 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %128 = load i32, ptr %127, align 8
  %129 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %130 = load ptr, ptr %129, align 8
  %131 = load i16, ptr %115, align 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %130, i32 %132
  %134 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = ptrtoint ptr %133 to i32
  %137 = ptrtoint ptr %135 to i32
  %138 = add i32 %128, %137
  %139 = sub i32 %138, %136
  %140 = getelementptr inbounds %struct.scm_ts_pktinfo, ptr %4, i32 0, i32 1
  store i32 %139, ptr %140, align 4
  %141 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 58, i32 noundef 16, ptr noundef nonnull %4) #17
  br label %142

142:                                              ; preds = %126, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %145

143:                                              ; preds = %101, %88, %78, %75
  %144 = icmp eq i32 %76, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %143, %142, %109, %104
  %146 = load volatile i32, ptr %14, align 4
  %147 = and i32 %146, 67108864
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @put_cmsg_scm_timestamping64(ptr noundef %0, ptr noundef nonnull %9) #17
  br label %151

150:                                              ; preds = %145
  call void @put_cmsg_scm_timestamping(ptr noundef %0, ptr noundef nonnull %9) #17
  br label %151

151:                                              ; preds = %150, %149
  %152 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %153 = load i16, ptr %152, align 8
  %154 = and i16 %153, 7
  %155 = icmp eq i16 %154, 4
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %158 = load i32, ptr %157, align 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 44
  %162 = load i8, ptr %161, align 4
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %167 = load ptr, ptr %166, align 4
  %168 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 54, i32 noundef %158, ptr noundef %167) #17
  br label %169

169:                                              ; preds = %165, %160, %156, %151, %143
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ptp_convert_timestamp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_cmsg_scm_timestamping64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_cmsg_scm_timestamping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sock_recv_wifi_status(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1024
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = lshr i16 %11, 11
  %16 = and i16 %15, 1
  %17 = zext i16 %16 to i32
  store i32 %17, ptr %4, align 4
  %18 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 41, i32 noundef 4, ptr noundef nonnull %4) #17
  br label %19

19:                                               ; preds = %14, %9, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sock_recv_ts_and_drops(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = icmp eq i64 %6, 0
  %22 = and i32 %17, 16
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i64, ptr %9, align 8
  %27 = icmp eq i64 %26, 0
  %28 = and i16 %16, 64
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %20, %14, %3
  tail call void @__sock_recv_timestamp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  br label %42

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %34 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %34) #17
  %35 = load i32, ptr %33, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %33, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !18
  %37 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  store i64 %6, ptr %37, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !19
  %38 = load i32, ptr %33, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %40 = load i16, ptr %34, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  br label %42

42:                                               ; preds = %32, %31
  %43 = load volatile i32, ptr %10, align 4
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, 1024
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %52 = load volatile i32, ptr %10, align 4
  %53 = and i32 %52, 524288
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = lshr i16 %48, 11
  %57 = and i16 %56, 1
  %58 = zext i16 %57 to i32
  store i32 %58, ptr %4, align 4
  %59 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 41, i32 noundef 4, ptr noundef nonnull %4) #17
  br label %60

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %61

61:                                               ; preds = %60, %46, %42
  %62 = load volatile i32, ptr %10, align 4
  %63 = and i32 %62, 131072
  %64 = icmp ne i32 %63, 0
  %65 = icmp ne ptr %2, null
  %66 = and i1 %65, %64
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = getelementptr %struct.sk_buff, ptr %2, i32 0, i32 3, i32 44
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 40, i32 noundef 4, ptr noundef %68) #17
  br label %73

73:                                               ; preds = %71, %67, %61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proto_ops, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %4, align 8
  %10 = tail call i32 %8(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %2) #17
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_recvmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -2
  store i8 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %10, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  %11 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %12 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.proto_ops, ptr %13, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %11, align 8
  %17 = tail call i32 %15(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %5) #17
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brioctl_set(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @br_ioctl_mutex) #17
  store ptr %0, ptr @br_ioctl_hook, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @br_ioctl_mutex) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @br_ioctl_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @br_ioctl_hook, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %8, %5
  tail call void @mutex_lock(ptr noundef nonnull @br_ioctl_mutex) #17
  %11 = load ptr, ptr @br_ioctl_hook, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ -65, %10 ]
  tail call void @mutex_unlock(ptr noundef nonnull @br_ioctl_mutex) #17
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vlan_ioctl_set(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @vlan_ioctl_mutex) #17
  store ptr %0, ptr @vlan_ioctl_hook, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @vlan_ioctl_mutex) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_create_lite(i32 %0, i32 noundef %1, i32 %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr @sock_mnt, align 4
  %6 = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @new_inode_pseudo(ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %8, i32 -128
  %12 = tail call i32 @get_next_ino() #17
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 10
  store i32 %12, ptr %13, align 4
  store i16 -15873, ptr %8, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 2
  %15 = tail call ptr @llvm.thread.pointer() #17
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 83
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %14, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 3
  %21 = load ptr, ptr %16, align 8
  %22 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %20, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  store ptr @sockfs_inode_ops, ptr %24, align 8
  %25 = icmp eq ptr %11, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = trunc i32 %1 to i16
  %28 = getelementptr i8, ptr %8, i32 -124
  store i16 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %10, %4
  %30 = phi i32 [ 0, %26 ], [ -12, %10 ], [ -12, %4 ]
  %31 = phi ptr [ %11, %26 ], [ null, %10 ], [ null, %4 ]
  store ptr %31, ptr %3, align 4
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_wake_async(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.socket_wq, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  switch i32 %1, label %22 [
    i32 1, label %10
    i32 2, label %15
    i32 0, label %20
    i32 3, label %19
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.socket_wq, ptr %0, i32 0, i32 2
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.socket_wq, ptr %0, i32 0, i32 2
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %16) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %20

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %15, %10, %9
  %21 = phi i32 [ 23, %19 ], [ 29, %9 ], [ 29, %15 ], [ 29, %10 ]
  tail call void @kill_fasync(ptr noundef %6, i32 noundef %21, i32 noundef %2) #17
  br label %22

22:                                               ; preds = %20, %15, %10, %9, %5, %3
  %23 = phi i32 [ -1, %5 ], [ -1, %3 ], [ 0, %15 ], [ 0, %10 ], [ 0, %9 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sock_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) #0 {
  %7 = icmp ugt i32 %1, 45
  br i1 %7, label %105, label %8

8:                                                ; preds = %6
  %9 = icmp ugt i32 %2, 10
  br i1 %9, label %105, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %1, 2
  %12 = icmp eq i32 %2, 10
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i1, ptr @__sock_create.__already_done, align 1
  br i1 %15, label %20, label %16, !prof !9

16:                                               ; preds = %14
  store i1 true, ptr @__sock_create.__already_done, align 1
  %17 = tail call ptr @llvm.thread.pointer() #17
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 85
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %18) #19
  br label %20

20:                                               ; preds = %16, %14, %10
  %21 = phi i32 [ %1, %10 ], [ 17, %16 ], [ 17, %14 ]
  %22 = load ptr, ptr @sock_mnt, align 4
  %23 = getelementptr inbounds %struct.vfsmount, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @new_inode_pseudo(ptr noundef %24) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %25, i32 -128
  %29 = tail call i32 @get_next_ino() #17
  %30 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  store i32 %29, ptr %30, align 4
  store i16 -15873, ptr %25, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 2
  %32 = tail call ptr @llvm.thread.pointer() #17
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 83
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %31, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 3
  %38 = load ptr, ptr %33, align 8
  %39 = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %37, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 7
  store ptr @sockfs_inode_ops, ptr %41, align 8
  %42 = icmp eq ptr %28, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %27, %20
  %44 = tail call i32 @net_ratelimit() #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %105, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #19
  br label %105

48:                                               ; preds = %27
  %49 = trunc i32 %2 to i16
  %50 = getelementptr i8, ptr %25, i32 -124
  store i16 %49, ptr %50, align 4
  %51 = getelementptr [46 x ptr], ptr @net_families, i32 0, i32 %21
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, i32 noundef %21) #17
  br label %56

56:                                               ; preds = %54, %48
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %57 = load volatile ptr, ptr %51, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %104, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.net_proto_family, ptr %57, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = tail call zeroext i1 @try_module_get(ptr noundef %61) #17
  br i1 %62, label %63, label %104

63:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %64 = getelementptr inbounds %struct.net_proto_family, ptr %57, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %3, i32 noundef %5) #17
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %25, i32 -108
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.proto_ops, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call zeroext i1 @try_module_get(ptr noundef %72) #17
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load ptr, ptr %60, align 4
  tail call void @module_put(ptr noundef %75) #17
  store ptr %28, ptr %4, align 4
  br label %105

76:                                               ; preds = %68, %63
  %77 = phi i32 [ %66, %63 ], [ -97, %68 ]
  %78 = getelementptr i8, ptr %25, i32 -108
  store ptr null, ptr %78, align 4
  %79 = load ptr, ptr %60, align 4
  tail call void @module_put(ptr noundef %79) #17
  br label %80

80:                                               ; preds = %104, %76
  %81 = phi i32 [ %77, %76 ], [ -97, %104 ]
  %82 = getelementptr i8, ptr %25, i32 -108
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.proto_ops, ptr %83, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.proto_ops, ptr %83, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 %89(ptr noundef nonnull %28) #17
  %91 = getelementptr i8, ptr %25, i32 -112
  store ptr null, ptr %91, align 16
  store ptr null, ptr %82, align 4
  tail call void @module_put(ptr noundef %87) #17
  br label %92

92:                                               ; preds = %85, %80
  %93 = getelementptr i8, ptr %25, i32 -52
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %98

98:                                               ; preds = %96, %92
  %99 = getelementptr i8, ptr %25, i32 -116
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  tail call void @iput(ptr noundef nonnull %25) #17
  br label %105

103:                                              ; preds = %98
  store ptr null, ptr %99, align 4
  br label %105

104:                                              ; preds = %59, %56
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  br label %80

105:                                              ; preds = %103, %102, %74, %46, %43, %8, %6
  %106 = phi i32 [ 0, %74 ], [ -97, %6 ], [ -22, %8 ], [ -23, %46 ], [ -23, %43 ], [ %81, %102 ], [ %81, %103 ]
  ret i32 %106
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__sock_create(ptr noundef %9, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_create_kern(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call i32 @__sock_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !15
  %5 = and i32 %1, -526352
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %3
  %8 = and i32 %1, 15
  %9 = tail call ptr @llvm.thread.pointer() #17
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @__sock_create(ptr noundef %13, i32 noundef %0, i32 noundef %8, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 0) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %4, align 4
  %18 = and i32 %1, 526336
  %19 = tail call i32 @get_unused_fd_flags(i32 noundef %18) #17
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %45, !prof !13

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.proto_ops, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.proto_ops, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %17) #17
  %31 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  store ptr null, ptr %31, align 16
  store ptr null, ptr %22, align 4
  tail call void @module_put(ptr noundef %27) #17
  br label %32

32:                                               ; preds = %25, %21
  %33 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 7, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.socket_alloc, ptr %17, i32 0, i32 1
  tail call void @iput(ptr noundef %43) #17
  br label %51

44:                                               ; preds = %38
  store ptr null, ptr %39, align 4
  br label %51

45:                                               ; preds = %16
  %46 = tail call ptr @sock_alloc_file(ptr noundef %17, i32 noundef %18, ptr noundef null) #17
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @fd_install(i32 noundef %19, ptr noundef %46) #17
  br label %51

49:                                               ; preds = %45
  tail call void @put_unused_fd(i32 noundef %19) #17
  %50 = ptrtoint ptr %46 to i32
  br label %51

51:                                               ; preds = %49, %48, %44, %42, %7, %3
  %52 = phi i32 [ -22, %3 ], [ %14, %7 ], [ %50, %49 ], [ %19, %48 ], [ %19, %42 ], [ %19, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__sys_socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store ptr null, ptr %6, align 4, !annotation !15
  %7 = and i32 %1, -16
  %8 = and i32 %1, -526352
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %93

10:                                               ; preds = %4
  %11 = and i32 %1, 15
  %12 = tail call i32 @get_unused_fd_flags(i32 noundef %7) #17
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %93, label %14, !prof !13

14:                                               ; preds = %10
  %15 = tail call i32 @get_unused_fd_flags(i32 noundef %7) #17
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18, !prof !13

17:                                               ; preds = %14
  tail call void @put_unused_fd(i32 noundef %12) #17
  br label %93

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #17
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !10
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %12, i32 -1090519041) #17, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %18
  %27 = getelementptr i32, ptr %3, i32 1
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !10
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i32 %15, i32 -1090519041) #17, !srcloc !25
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 92
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nsproxy, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @__sock_create(ptr noundef %37, i32 noundef %0, i32 noundef %11, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 0) #17
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %91, label %40, !prof !13

40:                                               ; preds = %33
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.nsproxy, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @__sock_create(ptr noundef %43, i32 noundef %0, i32 noundef %11, i32 noundef %2, ptr noundef nonnull %6, i32 noundef 0) #17
  %45 = icmp slt i32 %44, 0
  %46 = load ptr, ptr %5, align 4
  br i1 %45, label %47, label %48, !prof !13

47:                                               ; preds = %40
  tail call void @sock_release(ptr noundef %46)
  br label %91

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.socket, ptr %46, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.proto_ops, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %6, align 4
  %54 = tail call i32 %52(ptr noundef %46, ptr noundef %53) #17
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57, !prof !13

56:                                               ; preds = %48
  tail call void @sock_release(ptr noundef %53)
  tail call void @sock_release(ptr noundef %46)
  br label %91

57:                                               ; preds = %48
  %58 = tail call ptr @sock_alloc_file(ptr noundef %46, i32 noundef %7, ptr noundef null)
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = ptrtoint ptr %58 to i32
  %62 = getelementptr inbounds %struct.socket, ptr %53, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.proto_ops, ptr %63, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.proto_ops, ptr %63, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %53) #17
  %71 = getelementptr inbounds %struct.socket, ptr %53, i32 0, i32 4
  store ptr null, ptr %71, align 16
  store ptr null, ptr %62, align 4
  tail call void @module_put(ptr noundef %67) #17
  br label %72

72:                                               ; preds = %65, %60
  %73 = getelementptr inbounds %struct.socket, ptr %53, i32 0, i32 7, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds %struct.socket, ptr %53, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.socket_alloc, ptr %53, i32 0, i32 1
  tail call void @iput(ptr noundef %83) #17
  br label %91

84:                                               ; preds = %78
  store ptr null, ptr %79, align 4
  br label %91

85:                                               ; preds = %57
  %86 = tail call ptr @sock_alloc_file(ptr noundef %53, i32 noundef %7, ptr noundef null)
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = ptrtoint ptr %86 to i32
  tail call void @fput(ptr noundef %58) #17
  br label %91

90:                                               ; preds = %85
  tail call void @fd_install(i32 noundef %12, ptr noundef %58) #17
  tail call void @fd_install(i32 noundef %15, ptr noundef %86) #17
  br label %93

91:                                               ; preds = %88, %84, %82, %56, %47, %33, %26, %18
  %92 = phi i32 [ %24, %18 ], [ %31, %26 ], [ %38, %33 ], [ %44, %47 ], [ %54, %56 ], [ %89, %88 ], [ %61, %82 ], [ %61, %84 ]
  tail call void @put_unused_fd(i32 noundef %15) #17
  tail call void @put_unused_fd(i32 noundef %12) #17
  br label %93

93:                                               ; preds = %91, %90, %17, %10, %4
  %94 = phi i32 [ %15, %17 ], [ %92, %91 ], [ 0, %90 ], [ -22, %4 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %3 to ptr
  %6 = tail call i32 @__sys_socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_bind(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !15
  %5 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !26
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @socket_file_ops
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21, !prof !13

17:                                               ; preds = %13, %9
  %18 = and i32 %5, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %17
  tail call void @fput(ptr noundef nonnull %7) #17
  br label %54

21:                                               ; preds = %13
  %22 = and i32 %5, 1
  %23 = icmp ugt i32 %2, 128
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %24
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #16, !srcloc !8
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38, !prof !9

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #17
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #18, !srcloc !10
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %36 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !9

38:                                               ; preds = %30, %26
  %39 = phi i32 [ %36, %30 ], [ %2, %26 ]
  %40 = sub i32 %2, %39
  %41 = getelementptr i8, ptr %4, i32 %40
  call void @llvm.memset.p0.i32(ptr align 1 %41, i8 0, i32 %39, i1 false) #17
  br label %48

42:                                               ; preds = %30, %24
  %43 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.proto_ops, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef %2) #17
  br label %48

48:                                               ; preds = %42, %38, %21
  %49 = phi i32 [ %47, %42 ], [ -14, %38 ], [ -22, %21 ]
  %50 = icmp eq i32 %22, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  call void @fput(ptr noundef %53) #17
  br label %54

54:                                               ; preds = %51, %48, %20, %17, %3
  %55 = phi i32 [ %49, %48 ], [ %49, %51 ], [ -88, %20 ], [ -88, %17 ], [ -9, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #17
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_bind(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call i32 @__sys_bind(i32 noundef %0, ptr noundef %4, i32 noundef %2) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_listen(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !29
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @socket_file_ops
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !13

15:                                               ; preds = %11, %7
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  tail call void @fput(ptr noundef nonnull %5) #17
  br label %32

19:                                               ; preds = %11
  %20 = and i32 %3, 1
  %21 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 1), align 16
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %1)
  %23 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.proto_ops, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef nonnull %13, i32 noundef %22) #17
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void @fput(ptr noundef %31) #17
  br label %32

32:                                               ; preds = %29, %19, %18, %15, %2
  %33 = phi i32 [ %27, %19 ], [ %27, %29 ], [ -88, %18 ], [ -88, %15 ], [ -9, %2 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_listen(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @socket_file_ops
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !13

15:                                               ; preds = %11, %7
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  tail call void @fput(ptr noundef nonnull %5) #17
  br label %32

19:                                               ; preds = %11
  %20 = and i32 %3, 1
  %21 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 1), align 16
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %1) #17
  %23 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.proto_ops, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef nonnull %13, i32 noundef %22) #17
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void @fput(ptr noundef %31) #17
  br label %32

32:                                               ; preds = %29, %19, %18, %15, %2
  %33 = phi i32 [ %27, %19 ], [ %27, %29 ], [ -88, %18 ], [ -88, %15 ], [ -9, %2 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @do_accept(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %6, i8 0, i32 128, i1 false), !annotation !15
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @socket_file_ops
  br i1 %9, label %10, label %77

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %77, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @sock_mnt, align 4
  %16 = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @new_inode_pseudo(ptr noundef %17) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %18, i32 -128
  %22 = tail call i32 @get_next_ino() #17
  %23 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 10
  store i32 %22, ptr %23, align 4
  store i16 -15873, ptr %18, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 2
  %25 = tail call ptr @llvm.thread.pointer() #17
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 83
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %24, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 3
  %31 = load ptr, ptr %26, align 8
  %32 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %30, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 7
  store ptr @sockfs_inode_ops, ptr %34, align 8
  %35 = icmp eq ptr %21, null
  br i1 %35, label %77, label %36

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = getelementptr i8, ptr %18, i32 -124
  store i16 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %18, i32 -108
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void @__module_get(ptr noundef %44) #17
  %45 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 4
  %46 = load ptr, ptr %45, align 16
  %47 = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 49
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.proto, ptr %48, i32 0, i32 50
  %50 = tail call ptr @sock_alloc_file(ptr noundef nonnull %21, i32 noundef %4, ptr noundef %49)
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %77, label %52

52:                                               ; preds = %36
  %53 = load ptr, ptr %40, align 4
  %54 = getelementptr inbounds %struct.proto_ops, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.file, ptr %57, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %1
  %61 = tail call i32 %55(ptr noundef nonnull %12, ptr noundef nonnull %21, i32 noundef %60, i1 noundef zeroext false) #17
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %52
  %64 = icmp eq ptr %2, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %42, align 4
  %67 = getelementptr inbounds %struct.proto_ops, ptr %66, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef nonnull %21, ptr noundef nonnull %6, i32 noundef 2) #17
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = call fastcc i32 @move_addr_to_user(ptr noundef nonnull %6, i32 noundef %69, ptr noundef nonnull %2, ptr noundef %3)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %65, %52
  %75 = phi i32 [ %61, %52 ], [ %72, %71 ], [ -103, %65 ]
  call void @fput(ptr noundef %50) #17
  %76 = inttoptr i32 %75 to ptr
  br label %77

77:                                               ; preds = %74, %71, %63, %36, %20, %14, %10, %5
  %78 = phi ptr [ %76, %74 ], [ %50, %36 ], [ %50, %71 ], [ %50, %63 ], [ inttoptr (i32 -88 to ptr), %10 ], [ inttoptr (i32 -23 to ptr), %20 ], [ inttoptr (i32 -88 to ptr), %5 ], [ inttoptr (i32 -23 to ptr), %14 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #17
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @move_addr_to_user(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp ugt i32 %1, 128
  br i1 %5, label %6, label %7, !prof !13

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 277, 0\0A.popsection", ""() #17, !srcloc !35
  unreachable

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #17
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !10
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1090519041) #17, !srcloc !36
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %7
  %17 = extractvalue { i32, i32 } %13, 1
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %1)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %18, i32 -1090519040) #16, !srcloc !37
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !10
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %30 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %0, i32 noundef %18) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %20
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !10
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %1, i32 -1090519041) #17, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  br label %37

37:                                               ; preds = %32, %26, %22, %16, %7
  %38 = phi i32 [ %36, %32 ], [ %14, %7 ], [ -22, %16 ], [ -14, %26 ], [ -14, %22 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_accept4_file(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = and i32 %4, -526337
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = tail call i32 @__get_unused_fd_flags(i32 noundef %4, i32 noundef %5) #17
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12, !prof !13

12:                                               ; preds = %9
  %13 = tail call ptr @do_accept(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  tail call void @put_unused_fd(i32 noundef %10) #17
  %16 = ptrtoint ptr %13 to i32
  br label %18

17:                                               ; preds = %12
  tail call void @fd_install(i32 noundef %10, ptr noundef %13) #17
  br label %18

18:                                               ; preds = %17, %15, %9, %6
  %19 = phi i32 [ %16, %15 ], [ %10, %17 ], [ -22, %6 ], [ %10, %9 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_unused_fd_flags(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_accept4(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !39
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #17
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 50, i32 7
  %14 = load volatile i32, ptr %13, align 8
  %15 = and i32 %3, -526337
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = tail call i32 @__get_unused_fd_flags(i32 noundef %3, i32 noundef %14) #17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20, !prof !13

20:                                               ; preds = %17
  %21 = tail call ptr @do_accept(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #17
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void @put_unused_fd(i32 noundef %18) #17
  %24 = ptrtoint ptr %21 to i32
  br label %26

25:                                               ; preds = %20
  tail call void @fd_install(i32 noundef %18, ptr noundef %21) #17
  br label %26

26:                                               ; preds = %25, %23, %17, %9
  %27 = phi i32 [ %24, %23 ], [ %18, %25 ], [ -22, %9 ], [ %18, %17 ]
  %28 = and i32 %5, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @fput(ptr noundef nonnull %7) #17
  br label %31

31:                                               ; preds = %30, %26, %4
  %32 = phi i32 [ -9, %4 ], [ %27, %26 ], [ %27, %30 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_accept4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = inttoptr i32 %2 to ptr
  %7 = tail call i32 @__sys_accept4(i32 noundef %0, ptr noundef %5, ptr noundef %6, i32 noundef %3) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_accept(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call i32 @__sys_accept4(i32 noundef %0, ptr noundef %4, ptr noundef %5, i32 noundef 0) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_connect_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @socket_file_ops
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proto_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %3
  %22 = tail call i32 %16(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2, i32 noundef %21) #17
  br label %23

23:                                               ; preds = %12, %8, %4
  %24 = phi i32 [ %22, %12 ], [ -88, %8 ], [ -88, %4 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_connect(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  %5 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !42
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %53, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !15
  %10 = icmp ugt i32 %2, 128
  br i1 %10, label %47, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %11
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #16, !srcloc !8
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !9

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #17
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !10
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !9

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ %2, %13 ]
  %27 = sub i32 %2, %26
  %28 = getelementptr i8, ptr %4, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #17
  br label %47

29:                                               ; preds = %17, %11
  %30 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, @socket_file_ops
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.socket, ptr %35, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.proto_ops, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.socket, ptr %35, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = call i32 %41(ptr noundef nonnull %35, ptr noundef nonnull %4, i32 noundef %2, i32 noundef %45) #17
  br label %47

47:                                               ; preds = %37, %33, %29, %25, %9
  %48 = phi i32 [ %46, %37 ], [ -88, %33 ], [ -88, %29 ], [ -14, %25 ], [ -22, %9 ]
  %49 = and i32 %5, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @fput(ptr noundef nonnull %7) #17
  br label %52

52:                                               ; preds = %51, %47
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #17
  br label %53

53:                                               ; preds = %52, %3
  %54 = phi i32 [ %48, %52 ], [ -9, %3 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_connect(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call i32 @__sys_connect(i32 noundef %0, ptr noundef %4, i32 noundef %2) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_getsockname(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !15
  %5 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !45
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @socket_file_ops
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21, !prof !13

17:                                               ; preds = %13, %9
  %18 = and i32 %5, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  tail call void @fput(ptr noundef nonnull %7) #17
  br label %37

21:                                               ; preds = %13
  %22 = and i32 %5, 1
  %23 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.proto_ops, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 0) #17
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = call fastcc i32 @move_addr_to_user(ptr noundef nonnull %4, i32 noundef %27, ptr noundef %1, ptr noundef %2)
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i32 [ %27, %21 ], [ %30, %29 ]
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  call void @fput(ptr noundef %36) #17
  br label %37

37:                                               ; preds = %34, %31, %20, %17, %3
  %38 = phi i32 [ %32, %31 ], [ %32, %34 ], [ -88, %20 ], [ -88, %17 ], [ -9, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #17
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getsockname(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call i32 @__sys_getsockname(i32 noundef %0, ptr noundef %4, ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_getpeername(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !15
  %5 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !48
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @socket_file_ops
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21, !prof !13

17:                                               ; preds = %13, %9
  %18 = and i32 %5, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  tail call void @fput(ptr noundef nonnull %7) #17
  br label %37

21:                                               ; preds = %13
  %22 = and i32 %5, 1
  %23 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.proto_ops, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 1) #17
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call fastcc i32 @move_addr_to_user(ptr noundef nonnull %4, i32 noundef %27, ptr noundef %1, ptr noundef %2)
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i32 [ %30, %29 ], [ %27, %21 ]
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  call void @fput(ptr noundef %36) #17
  br label %37

37:                                               ; preds = %34, %31, %20, %17, %3
  %38 = phi i32 [ %32, %31 ], [ %32, %34 ], [ -88, %20 ], [ -88, %17 ], [ -9, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #17
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getpeername(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call i32 @__sys_getpeername(i32 noundef %0, ptr noundef %4, ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_sendto(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.__kernel_sockaddr_storage, align 4
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.iovec, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store i64 0, ptr %9, align 8, !annotation !15
  %10 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2
  %11 = call i32 @import_single_range(i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %9, ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %81, !prof !9

13:                                               ; preds = %6
  %14 = call i32 @__fdget(i32 noundef %0) #17, !noalias !51
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %81, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @socket_file_ops
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30, !prof !13

26:                                               ; preds = %22, %18
  %27 = and i32 %14, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %26
  call void @fput(ptr noundef nonnull %16) #17
  br label %81

30:                                               ; preds = %22
  %31 = and i32 %14, 1
  store ptr null, ptr %8, align 8
  %32 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 3
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 5
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = icmp eq ptr %4, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %30
  %37 = icmp ugt i32 %5, 128
  br i1 %37, label %75, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %5, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %38
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 %5, i32 -1090519040) #16, !srcloc !8
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52, !prof !9

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #17
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #18, !srcloc !10
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %50 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %5) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !9

52:                                               ; preds = %44, %40
  %53 = phi i32 [ %50, %44 ], [ %5, %40 ]
  %54 = sub i32 %5, %53
  %55 = getelementptr i8, ptr %7, i32 %54
  call void @llvm.memset.p0.i32(ptr align 1 %55, i8 0, i32 %53, i1 false) #17
  br label %75

56:                                               ; preds = %44, %38
  store ptr %7, ptr %8, align 8
  store i32 %5, ptr %34, align 4
  br label %57

57:                                               ; preds = %56, %30
  %58 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.file, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 5
  %63 = and i32 %62, 64
  %64 = or i32 %63, %3
  %65 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 6
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2, i32 4
  %67 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.proto_ops, ptr %68, i32 0, i32 16
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %66, align 8
  %72 = call i32 %70(ptr noundef nonnull %24, ptr noundef nonnull %8, i32 noundef %71) #17
  %73 = icmp eq i32 %72, -529
  br i1 %73, label %74, label %75, !prof !13

74:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

75:                                               ; preds = %57, %52, %36
  %76 = phi i32 [ %72, %57 ], [ -14, %52 ], [ -22, %36 ]
  %77 = icmp eq i32 %31, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  call void @fput(ptr noundef %80) #17
  br label %81

81:                                               ; preds = %78, %75, %29, %26, %13, %6
  %82 = phi i32 [ %11, %6 ], [ %76, %75 ], [ %76, %78 ], [ -88, %29 ], [ -88, %26 ], [ -9, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #17
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendto(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %4 to ptr
  %9 = tail call i32 @__sys_sendto(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef %8, i32 noundef %5) #17
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_send(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call i32 @__sys_sendto(i32 noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_recvfrom(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.iovec, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 0, ptr %7, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %9, i8 0, i32 128, i1 false), !annotation !15
  %10 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2
  %11 = call i32 @import_single_range(i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65, !prof !9

13:                                               ; preds = %6
  %14 = call i32 @__fdget(i32 noundef %0) #17, !noalias !54
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @socket_file_ops
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30, !prof !13

26:                                               ; preds = %22, %18
  %27 = and i32 %14, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %26
  call void @fput(ptr noundef nonnull %16) #17
  br label %65

30:                                               ; preds = %22
  %31 = and i32 %14, 1
  %32 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 3
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 5
  store i32 0, ptr %33, align 8
  %34 = icmp ne ptr %4, null
  %35 = select i1 %34, ptr %9, ptr null
  store ptr %35, ptr %8, align 8
  %36 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 7
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 6
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 5
  %44 = and i32 %43, 64
  %45 = or i32 %44, %3
  %46 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2, i32 4
  %47 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.proto_ops, ptr %48, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %46, align 8
  %52 = call i32 %50(ptr noundef nonnull %24, ptr noundef nonnull %8, i32 noundef %51, i32 noundef %45) #17
  %53 = icmp sgt i32 %52, -1
  %54 = and i1 %34, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %30
  %56 = load i32, ptr %36, align 4
  %57 = call fastcc i32 @move_addr_to_user(ptr noundef nonnull %9, i32 noundef %56, ptr noundef nonnull %4, ptr noundef %5)
  %58 = icmp slt i32 %57, 0
  %59 = select i1 %58, i32 %57, i32 %52
  br label %60

60:                                               ; preds = %55, %30
  %61 = phi i32 [ %52, %30 ], [ %59, %55 ]
  %62 = icmp eq i32 %31, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %39, align 4
  call void @fput(ptr noundef %64) #17
  br label %65

65:                                               ; preds = %63, %60, %29, %26, %13, %6
  %66 = phi i32 [ %11, %6 ], [ %61, %60 ], [ %61, %63 ], [ -88, %29 ], [ -88, %26 ], [ -9, %13 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_recvfrom(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %4 to ptr
  %9 = inttoptr i32 %5 to ptr
  %10 = tail call i32 @__sys_recvfrom(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef %8, ptr noundef %9) #17
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_recv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call i32 @__sys_recvfrom(i32 noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %4, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !57
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @socket_file_ops
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24, !prof !13

20:                                               ; preds = %16, %12
  %21 = and i32 %8, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %20
  tail call void @fput(ptr noundef nonnull %10) #17
  br label %49

24:                                               ; preds = %16
  %25 = and i32 %8, 1
  %26 = icmp eq i32 %1, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = ptrtoint ptr %3 to i32
  %29 = insertvalue [2 x i32] poison, i32 %28, 0
  %30 = insertvalue [2 x i32] %29, i32 0, 1
  %31 = tail call i32 @sock_setsockopt(ptr noundef nonnull %18, i32 noundef 1, i32 noundef %2, [2 x i32] %30, i32 noundef %4) #17
  br label %43

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.proto_ops, ptr %34, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38, !prof !13

38:                                               ; preds = %32
  %39 = ptrtoint ptr %3 to i32
  %40 = insertvalue [2 x i32] poison, i32 %39, 0
  %41 = insertvalue [2 x i32] %40, i32 0, 1
  %42 = tail call i32 %36(ptr noundef nonnull %18, i32 noundef %1, i32 noundef %2, [2 x i32] %41, i32 noundef %4) #17
  br label %43

43:                                               ; preds = %38, %32, %27
  %44 = phi i32 [ %31, %27 ], [ %42, %38 ], [ -95, %32 ]
  tail call void @kfree(ptr noundef null) #17
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  tail call void @fput(ptr noundef %48) #17
  br label %49

49:                                               ; preds = %46, %43, %23, %20, %7, %5
  %50 = phi i32 [ -22, %5 ], [ -88, %23 ], [ -88, %20 ], [ -9, %7 ], [ %44, %43 ], [ %44, %46 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %3 to ptr
  %7 = tail call i32 @__sys_setsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %6, i32 noundef %4) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_getsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !60
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @socket_file_ops
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !13

18:                                               ; preds = %14, %10
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  tail call void @fput(ptr noundef nonnull %8) #17
  br label %41

22:                                               ; preds = %14
  %23 = and i32 %6, 1
  %24 = icmp eq i32 %1, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @sock_getsockopt(ptr noundef nonnull %16, i32 noundef 1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.proto_ops, ptr %29, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !13

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %35

35:                                               ; preds = %33, %27, %25
  %36 = phi i32 [ %26, %25 ], [ %34, %33 ], [ -95, %27 ]
  %37 = icmp eq i32 %23, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @fput(ptr noundef %40) #17
  br label %41

41:                                               ; preds = %38, %35, %21, %18, %5
  %42 = phi i32 [ %36, %35 ], [ %36, %38 ], [ -88, %21 ], [ -88, %18 ], [ -9, %5 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %3 to ptr
  %7 = inttoptr i32 %4 to ptr
  %8 = tail call i32 @__sys_getsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %6, ptr noundef %7) #17
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_shutdown_sock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proto_ops, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_shutdown(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !63
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @socket_file_ops
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !13

15:                                               ; preds = %11, %7
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  tail call void @fput(ptr noundef nonnull %5) #17
  br label %30

19:                                               ; preds = %11
  %20 = and i32 %3, 1
  %21 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.proto_ops, ptr %22, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef nonnull %13, i32 noundef %1) #17
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void @fput(ptr noundef %29) #17
  br label %30

30:                                               ; preds = %27, %19, %18, %15, %2
  %31 = phi i32 [ %25, %19 ], [ %25, %27 ], [ -88, %18 ], [ -88, %15 ], [ -9, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shutdown(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !66
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @socket_file_ops
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !13

15:                                               ; preds = %11, %7
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  tail call void @fput(ptr noundef nonnull %5) #17
  br label %30

19:                                               ; preds = %11
  %20 = and i32 %3, 1
  %21 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.proto_ops, ptr %22, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef nonnull %13, i32 noundef %1) #17
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void @fput(ptr noundef %29) #17
  br label %30

30:                                               ; preds = %27, %19, %18, %15, %2
  %31 = phi i32 [ %25, %19 ], [ %25, %27 ], [ -88, %18 ], [ -88, %15 ], [ -9, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__copy_msghdr_from_user(ptr nocapture noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.user_msghdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !15
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 28, i32 -1090519040) #16, !srcloc !8
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !9

10:                                               ; preds = %5
  %11 = tail call ptr @llvm.thread.pointer() #17
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !10
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 28) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !9

18:                                               ; preds = %10, %5
  %19 = phi i32 [ %16, %10 ], [ 28, %5 ]
  %20 = sub i32 28, %19
  %21 = getelementptr i8, ptr %6, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #17
  br label %79

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 3
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 5
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 6
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %6, align 4
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, i32 0, i32 %36
  store i32 %40, ptr %37, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %22
  %43 = icmp ugt i32 %40, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i32 128, ptr %37, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store ptr %38, ptr %2, align 4
  br label %48

48:                                               ; preds = %47, %45
  br i1 %39, label %70, label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %37, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %49
  br i1 %46, label %53, label %71

53:                                               ; preds = %52
  %54 = load ptr, ptr %0, align 8
  %55 = icmp ugt i32 %50, 128
  br i1 %55, label %79, label %56

56:                                               ; preds = %53
  %57 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %38, i32 %50, i32 -1090519040) #16, !srcloc !8
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66, !prof !9

60:                                               ; preds = %56
  %61 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !10
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %64 = call i32 @arm_copy_from_user(ptr noundef %54, ptr noundef nonnull %38, i32 noundef %50) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66, !prof !9

66:                                               ; preds = %60, %56
  %67 = phi i32 [ %64, %60 ], [ %50, %56 ]
  %68 = sub i32 %50, %67
  %69 = getelementptr i8, ptr %54, i32 %68
  call void @llvm.memset.p0.i32(ptr align 1 %69, i8 0, i32 %67, i1 false) #17
  br label %79

70:                                               ; preds = %49, %48
  store ptr null, ptr %0, align 8
  store i32 0, ptr %37, align 4
  br label %71

71:                                               ; preds = %70, %60, %52
  %72 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 1024
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 7
  store ptr null, ptr %76, align 8
  %77 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  store ptr %78, ptr %3, align 4
  store i32 %73, ptr %4, align 4
  br label %79

79:                                               ; preds = %75, %71, %66, %53, %22, %18
  %80 = phi i32 [ 0, %75 ], [ -22, %22 ], [ -90, %71 ], [ -14, %18 ], [ -14, %66 ], [ -22, %53 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #17
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sendmsg_copy_msghdr(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.user_msghdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #17, !annotation !15
  %6 = getelementptr inbounds %struct.user_msghdr, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.user_msghdr, ptr %5, i32 0, i32 3
  %8 = call i32 @__copy_msghdr_from_user(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %6, ptr noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 4
  %12 = load i32, ptr %7, align 4
  %13 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %14 = tail call i32 @import_iovec(i32 noundef 1, ptr noundef %11, i32 noundef %12, i32 noundef 8, ptr noundef %3, ptr noundef %13) #17
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 0) #17
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ %15, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #17
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 0)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_sendmsg_sock(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @____sys_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @____sys_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [32 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !15
  %7 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %107, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %4
  %14 = or i32 %13, %2
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %8, 32
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 16
  %21 = tail call ptr @sock_kmalloc(ptr noundef %20, i32 noundef %8, i32 noundef 3264) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %107, label %23

23:                                               ; preds = %18, %16
  %24 = phi ptr [ %21, %18 ], [ %6, %16 ]
  %25 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 %8, i32 -1090519040) #16, !srcloc !8
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38, !prof !9

30:                                               ; preds = %23
  %31 = tail call ptr @llvm.thread.pointer() #17
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #18, !srcloc !10
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %36 = call i32 @arm_copy_from_user(ptr noundef nonnull %24, ptr noundef %26, i32 noundef %8) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !9

38:                                               ; preds = %30, %23
  %39 = phi i32 [ %36, %30 ], [ %8, %23 ]
  %40 = sub i32 %8, %39
  %41 = getelementptr i8, ptr %24, i32 %40
  call void @llvm.memset.p0.i32(ptr align 1 %41, i8 0, i32 %39, i1 false) #17
  br label %100

42:                                               ; preds = %30
  store ptr %24, ptr %25, align 8
  %43 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, -2
  store i8 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %10
  %47 = phi ptr [ %24, %42 ], [ %6, %10 ]
  store i32 %14, ptr %11, align 4
  %48 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = or i32 %14, 64
  store i32 %55, ptr %11, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = icmp ne ptr %3, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %56
  %59 = load ptr, ptr %1, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.used_address, ptr %3, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = call i32 @bcmp(ptr nonnull %3, ptr nonnull %59, i32 %63)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.proto_ops, ptr %72, i32 0, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = call i32 %74(ptr noundef %0, ptr noundef %1, i32 noundef %76) #17
  %78 = icmp eq i32 %77, -529
  br i1 %78, label %79, label %100, !prof !13

79:                                               ; preds = %70
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

80:                                               ; preds = %67, %61, %58, %56
  %81 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %82 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.proto_ops, ptr %83, i32 0, i32 16
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %81, align 8
  %87 = call i32 %85(ptr noundef %0, ptr noundef %1, i32 noundef %86) #17
  %88 = icmp eq i32 %87, -529
  br i1 %88, label %89, label %90, !prof !13

89:                                               ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

90:                                               ; preds = %80
  %91 = icmp sgt i32 %87, -1
  %92 = select i1 %57, i1 %91, i1 false
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.used_address, ptr %3, i32 0, i32 1
  store i32 %95, ptr %96, align 4
  %97 = load ptr, ptr %1, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %3, ptr nonnull align 1 %97, i32 %95, i1 false)
  br label %100

100:                                              ; preds = %99, %93, %90, %70, %38
  %101 = phi ptr [ %47, %99 ], [ %47, %93 ], [ %47, %90 ], [ %47, %70 ], [ %24, %38 ]
  %102 = phi i32 [ %87, %99 ], [ %87, %93 ], [ %87, %90 ], [ %77, %70 ], [ -14, %38 ]
  %103 = icmp eq ptr %101, %6
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %106 = load ptr, ptr %105, align 16
  call void @sock_kfree_s(ptr noundef %106, ptr noundef nonnull %101, i32 noundef %8) #17
  br label %107

107:                                              ; preds = %104, %100, %18, %5
  %108 = phi i32 [ -105, %5 ], [ %102, %104 ], [ %102, %100 ], [ -105, %18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_sendmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.msghdr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !15
  %6 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !69
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @socket_file_ops
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !13

18:                                               ; preds = %14, %10
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  tail call void @fput(ptr noundef nonnull %8) #17
  br label %29

22:                                               ; preds = %14
  %23 = and i32 %6, 1
  %24 = call fastcc i32 @___sys_sendmsg(ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %2, ptr noundef null, i32 noundef 0)
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  call void @fput(ptr noundef %28) #17
  br label %29

29:                                               ; preds = %26, %22, %21, %18, %4
  %30 = phi i32 [ %24, %22 ], [ %24, %26 ], [ -88, %21 ], [ -88, %18 ], [ -9, %4 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @___sys_sendmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.user_msghdr, align 4
  %8 = alloca %struct.__kernel_sockaddr_storage, align 4
  %9 = alloca [8 x %struct.iovec], align 4
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store ptr %9, ptr %10, align 4
  store ptr %8, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false) #17, !annotation !15
  %11 = getelementptr inbounds %struct.user_msghdr, ptr %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.user_msghdr, ptr %7, i32 0, i32 3
  %13 = call i32 @__copy_msghdr_from_user(ptr noundef %2, ptr noundef %1, ptr noundef null, ptr noundef %11, ptr noundef %12) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load ptr, ptr %11, align 4
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  %19 = call i32 @import_iovec(i32 noundef 1, ptr noundef %16, i32 noundef %17, i32 noundef 8, ptr noundef nonnull %10, ptr noundef %18) #17
  %20 = call i32 @llvm.smin.i32(i32 %19, i32 0) #17
  br label %21

21:                                               ; preds = %15, %6
  %22 = phi i32 [ %20, %15 ], [ %13, %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #17
  %23 = call i32 @llvm.smin.i32(i32 %22, i32 0) #17
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call fastcc i32 @____sys_sendmsg(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %27 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %27) #17
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %26, %25 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #17
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendmsg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.msghdr, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #17, !annotation !15
  %6 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !72
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @socket_file_ops
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !13

18:                                               ; preds = %14, %10
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  tail call void @fput(ptr noundef nonnull %8) #17
  br label %29

22:                                               ; preds = %14
  %23 = and i32 %6, 1
  %24 = call fastcc i32 @___sys_sendmsg(ptr noundef nonnull %16, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %2, ptr noundef null, i32 noundef 0) #17
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  call void @fput(ptr noundef %28) #17
  br label %29

29:                                               ; preds = %26, %22, %21, %18, %3
  %30 = phi i32 [ %24, %22 ], [ %24, %26 ], [ -88, %21 ], [ -88, %18 ], [ -9, %3 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_sendmmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.used_address, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(132) %7, i8 0, i32 128, i1 false), !annotation !15
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 1024)
  %9 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !75
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %68, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @socket_file_ops
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 15
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25, !prof !13

21:                                               ; preds = %17, %13
  %22 = and i32 %9, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %21
  tail call void @fput(ptr noundef nonnull %11) #17
  br label %68

25:                                               ; preds = %17
  %26 = and i32 %9, 1
  %27 = getelementptr inbounds %struct.used_address, ptr %7, i32 0, i32 1
  store i32 -1, ptr %27, align 4
  %28 = add nsw i32 %8, -1
  %29 = icmp eq i32 %8, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %25
  %31 = or i32 %3, 262144
  %32 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 2, i32 4
  br label %33

33:                                               ; preds = %55, %30
  %34 = phi i32 [ %31, %30 ], [ %38, %55 ]
  %35 = phi i32 [ 0, %30 ], [ %52, %55 ]
  %36 = phi ptr [ %1, %30 ], [ %49, %55 ]
  %37 = icmp eq i32 %35, %28
  %38 = select i1 %37, i32 %3, i32 %34
  %39 = call fastcc i32 @___sys_sendmsg(ptr noundef nonnull %19, ptr noundef %36, ptr noundef nonnull %6, i32 noundef %38, ptr noundef nonnull %7, i32 noundef 128)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mmsghdr, ptr %36, i32 0, i32 1
  %43 = tail call ptr @llvm.thread.pointer() #17
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #18, !srcloc !10
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %48 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %42, i32 %39, i32 -1090519041) #17, !srcloc !78
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %49 = getelementptr %struct.mmsghdr, ptr %36, i32 1
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = add nuw nsw i32 %35, 1
  %53 = load i32, ptr %32, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call i32 @__cond_resched() #17
  %57 = icmp eq i32 %52, %8
  br i1 %57, label %58, label %33

58:                                               ; preds = %55, %51, %41, %33, %25
  %59 = phi i32 [ 0, %25 ], [ 0, %51 ], [ %48, %41 ], [ %39, %33 ], [ 0, %55 ]
  %60 = phi i32 [ 0, %25 ], [ %52, %51 ], [ %35, %41 ], [ %35, %33 ], [ %8, %55 ]
  %61 = icmp eq i32 %26, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  call void @fput(ptr noundef %64) #17
  br label %65

65:                                               ; preds = %62, %58
  %66 = icmp eq i32 %60, 0
  %67 = select i1 %66, i32 %59, i32 %60
  br label %68

68:                                               ; preds = %65, %24, %21, %5
  %69 = phi i32 [ %67, %65 ], [ -88, %24 ], [ -88, %21 ], [ -9, %5 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendmmsg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call i32 @__sys_sendmmsg(i32 noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @recvmsg_copy_msghdr(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.user_msghdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false) #17, !annotation !15
  %7 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 3
  %9 = call i32 @__copy_msghdr_from_user(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = icmp eq ptr %3, null
  %13 = zext i1 %12 to i32
  %14 = load ptr, ptr %7, align 4
  %15 = load i32, ptr %8, align 4
  %16 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %17 = tail call i32 @import_iovec(i32 noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef 8, ptr noundef %4, ptr noundef %16) #17
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 0) #17
  br label %19

19:                                               ; preds = %11, %5
  %20 = phi i32 [ %18, %11 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #17
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 0)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_recvmsg_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @____sys_recvmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @____sys_recvmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.__kernel_sockaddr_storage, align 4
  %8 = getelementptr inbounds %struct.user_msghdr, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !15
  store ptr %7, ptr %1, align 8
  %9 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %4, 1073741824
  %13 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 5
  %20 = and i32 %19, 64
  %21 = or i32 %20, %4
  %22 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.proto_ops, ptr %23, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = call i32 %25(ptr noundef %0, ptr noundef %1, i32 noundef %27, i32 noundef %21) #17
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %6
  %31 = icmp eq ptr %3, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %14, align 4
  %34 = call fastcc i32 @move_addr_to_user(ptr noundef nonnull %7, i32 noundef %33, ptr noundef nonnull %3, ptr noundef %8)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32, %30
  %37 = getelementptr inbounds %struct.user_msghdr, ptr %2, i32 0, i32 6
  %38 = load i32, ptr %13, align 4
  %39 = tail call ptr @llvm.thread.pointer() #17
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #18, !srcloc !10
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %44 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %37, i32 %38, i32 -1090519041) #17, !srcloc !79
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.user_msghdr, ptr %2, i32 0, i32 5
  %48 = load ptr, ptr %9, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = sub i32 %49, %11
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #18, !srcloc !10
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %54 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %47, i32 %50, i32 -1090519041) #17, !srcloc !80
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %28, i32 %54
  br label %57

57:                                               ; preds = %46, %36, %32, %6
  %58 = phi i32 [ %28, %6 ], [ %34, %32 ], [ %44, %36 ], [ %56, %46 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #17
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.msghdr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !15
  %6 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !81
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @socket_file_ops
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !13

18:                                               ; preds = %14, %10
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  tail call void @fput(ptr noundef nonnull %8) #17
  br label %29

22:                                               ; preds = %14
  %23 = and i32 %6, 1
  %24 = call fastcc i32 @___sys_recvmsg(ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %2, i32 noundef 0)
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  call void @fput(ptr noundef %28) #17
  br label %29

29:                                               ; preds = %26, %22, %21, %18, %4
  %30 = phi i32 [ %24, %22 ], [ %24, %26 ], [ -88, %21 ], [ -88, %18 ], [ -9, %4 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @___sys_recvmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.user_msghdr, align 4
  %7 = alloca [8 x %struct.iovec], align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store ptr %7, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store ptr null, ptr %9, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false) #17, !annotation !15
  %10 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.user_msghdr, ptr %6, i32 0, i32 3
  %12 = call i32 @__copy_msghdr_from_user(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %9, ptr noundef %10, ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %10, align 4
  %16 = load i32, ptr %11, align 4
  %17 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  %18 = call i32 @import_iovec(i32 noundef 0, ptr noundef %15, i32 noundef %16, i32 noundef 8, ptr noundef nonnull %8, ptr noundef %17) #17
  %19 = call i32 @llvm.smin.i32(i32 %18, i32 0) #17
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi i32 [ %19, %14 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #17
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 0) #17
  %23 = icmp slt i32 %21, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 4
  %26 = call fastcc i32 @____sys_recvmsg(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %25, i32 noundef %3, i32 noundef %4)
  %27 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %27) #17
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %26, %24 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_recvmsg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.msghdr, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #17, !annotation !15
  %6 = tail call i32 @__fdget(i32 noundef %0) #17, !noalias !84
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @socket_file_ops
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !13

18:                                               ; preds = %14, %10
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  tail call void @fput(ptr noundef nonnull %8) #17
  br label %29

22:                                               ; preds = %14
  %23 = and i32 %6, 1
  %24 = call fastcc i32 @___sys_recvmsg(ptr noundef nonnull %16, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %2, i32 noundef 0) #17
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  call void @fput(ptr noundef %28) #17
  br label %29

29:                                               ; preds = %26, %22, %21, %18, %3
  %30 = phi i32 [ %24, %22 ], [ %24, %26 ], [ -88, %21 ], [ -88, %18 ], [ -9, %3 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_recvmmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !15
  %8 = icmp eq ptr %4, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @get_timespec64(ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %41

12:                                               ; preds = %6
  %13 = icmp eq ptr %5, null
  br i1 %13, label %19, label %16

14:                                               ; preds = %9
  %15 = icmp eq ptr %5, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %12
  %17 = call i32 @get_old_timespec32(ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %41

19:                                               ; preds = %12
  %20 = call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %41

21:                                               ; preds = %16
  %22 = call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7)
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %41, label %31

24:                                               ; preds = %14
  %25 = call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7)
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = call i32 @put_timespec64(ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %25, i32 -14
  br label %41

31:                                               ; preds = %21
  br i1 %8, label %36, label %32

32:                                               ; preds = %31
  %33 = call i32 @put_timespec64(ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 %22, i32 -14
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ %35, %32 ], [ %22, %31 ]
  %38 = call i32 @put_old_timespec32(ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 -14
  br label %41

41:                                               ; preds = %36, %27, %24, %21, %19, %16, %9
  %42 = phi i32 [ %20, %19 ], [ -14, %9 ], [ -14, %16 ], [ %22, %21 ], [ %40, %36 ], [ %25, %24 ], [ %30, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !15
  %10 = icmp eq ptr %4, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load i64, ptr %4, align 8
  %13 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = call i32 @poll_select_set_timeout(ptr noundef nonnull %7, i64 noundef %12, i32 noundef %14) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %120

17:                                               ; preds = %11, %5
  %18 = call i32 @__fdget(i32 noundef %0) #17, !noalias !87
  %19 = and i32 %18, -4
  %20 = inttoptr i32 %19 to ptr
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %120, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @socket_file_ops
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 15
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34, !prof !13

30:                                               ; preds = %26, %22
  %31 = and i32 %18, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %120, label %33

33:                                               ; preds = %30
  call void @fput(ptr noundef nonnull %20) #17
  br label %120

34:                                               ; preds = %26
  %35 = and i32 %18, 1
  %36 = and i32 %3, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49, !prof !9

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %40 = load ptr, ptr %39, align 16
  %41 = getelementptr inbounds %struct.sock, ptr %40, i32 0, i32 51
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44, !prof !9

44:                                               ; preds = %38
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !90
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #17, !srcloc !91
  %45 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %41) #17, !srcloc !92
  %46 = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !93
  %47 = sub i32 0, %46
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %44, %38, %34
  %50 = phi i32 [ 0, %38 ], [ 0, %44 ], [ -9, %34 ]
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %114, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds [2 x i64], ptr %7, i32 0, i32 1
  %54 = getelementptr inbounds [2 x i64], ptr %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 6
  br label %57

57:                                               ; preds = %101, %52
  %58 = phi i32 [ %3, %52 ], [ %78, %101 ]
  %59 = phi i32 [ 0, %52 ], [ %75, %101 ]
  %60 = phi ptr [ %1, %52 ], [ %72, %101 ]
  %61 = and i32 %58, -65537
  %62 = call fastcc i32 @___sys_recvmsg(ptr noundef nonnull %28, ptr noundef %60, ptr noundef nonnull %6, i32 noundef %61, i32 noundef %59)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.mmsghdr, ptr %60, i32 0, i32 1
  %66 = tail call ptr @llvm.thread.pointer() #17
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %67) #18, !srcloc !10
  %69 = and i32 %68, -13
  %70 = or i32 %69, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %71 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %65, i32 %62, i32 -1090519041) #17, !srcloc !94
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %72 = getelementptr %struct.mmsghdr, ptr %60, i32 1
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %64
  %75 = add nuw i32 %59, 1
  %76 = lshr i32 %58, 10
  %77 = and i32 %76, 64
  %78 = or i32 %77, %58
  br i1 %10, label %97, label %79

79:                                               ; preds = %74
  call void @ktime_get_ts64(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %80 = load i64, ptr %7, align 8
  %81 = load i64, ptr %53, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load i64, ptr %54, align 8
  %84 = trunc i64 %81 to i32
  %85 = trunc i64 %83 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #17, !alias.scope !95, !annotation !15
  %86 = sub i64 %80, %82
  %87 = sub i32 %84, %85
  %88 = sext i32 %87 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %9, i64 noundef %86, i64 noundef %88) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  %89 = load i64, ptr %4, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i32 0, ptr %55, align 8
  store i64 0, ptr %4, align 8
  br label %114

92:                                               ; preds = %79
  %93 = load i32, ptr %55, align 8
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i64 %89, 0
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %114, label %97

97:                                               ; preds = %92, %74
  %98 = load i32, ptr %56, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = call i32 @__cond_resched() #17
  %103 = icmp eq i32 %75, %2
  br i1 %103, label %114, label %57

104:                                              ; preds = %64, %57
  %105 = phi i32 [ %71, %64 ], [ %62, %57 ]
  %106 = icmp eq i32 %59, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = icmp eq i32 %105, -11
  br i1 %108, label %114, label %109

109:                                              ; preds = %107
  %110 = sub i32 0, %105
  %111 = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %112 = load ptr, ptr %111, align 16
  %113 = getelementptr inbounds %struct.sock, ptr %112, i32 0, i32 51
  store i32 %110, ptr %113, align 4
  br label %114

114:                                              ; preds = %109, %107, %104, %101, %97, %92, %91, %49, %44
  %115 = phi i32 [ %59, %109 ], [ %59, %107 ], [ %47, %44 ], [ %105, %104 ], [ %75, %91 ], [ %50, %49 ], [ %2, %101 ], [ %75, %92 ], [ %75, %97 ]
  %116 = icmp eq i32 %35, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  call void @fput(ptr noundef %119) #17
  br label %120

120:                                              ; preds = %117, %114, %33, %30, %17, %11
  %121 = phi i32 [ -22, %11 ], [ -88, %33 ], [ -88, %30 ], [ -9, %17 ], [ %115, %114 ], [ %115, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_recvmmsg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #17, !annotation !15
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = call i32 @get_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %22

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef null) #17
  br label %22

15:                                               ; preds = %10
  %16 = call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6) #17
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = call i32 @put_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 %16, i32 -14
  br label %22

22:                                               ; preds = %18, %15, %13, %10
  %23 = phi i32 [ %14, %13 ], [ -14, %10 ], [ %16, %15 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_recvmmsg_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #17, !annotation !15
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = call i32 @get_old_timespec32(ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %22

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef null) #17
  br label %22

15:                                               ; preds = %10
  %16 = call fastcc i32 @do_recvmmsg(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6) #17
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = call i32 @put_old_timespec32(ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 %16, i32 -14
  br label %22

22:                                               ; preds = %18, %15, %13, %10
  %23 = phi i32 [ %14, %13 ], [ -14, %10 ], [ %16, %15 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_register(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp sgt i32 %2, 45
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef 46) #19
  br label %22

6:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @net_family_lock) #17
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr [46 x ptr], ptr @net_families, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !98
  %12 = load i32, ptr %0, align 4
  %13 = getelementptr [46 x ptr], ptr @net_families, i32 0, i32 %12
  store volatile ptr %0, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ 0, %11 ], [ -17, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %16 = load i16, ptr @net_family_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @net_family_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %18 = load i32, ptr %0, align 4
  %19 = getelementptr [46 x ptr], ptr @pf_family_names, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %20) #19
  br label %22

22:                                               ; preds = %14, %4
  %23 = phi i32 [ -105, %4 ], [ %15, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_unregister(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 45
  br i1 %2, label %3, label %4, !prof !13

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3074, 0\0A.popsection", ""() #17, !srcloc !99
  unreachable

4:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @net_family_lock) #17
  %5 = getelementptr [46 x ptr], ptr @net_families, i32 0, i32 %0
  store volatile ptr null, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %6 = load i16, ptr @net_family_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @net_family_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  tail call void @synchronize_rcu() #17
  %8 = getelementptr [46 x ptr], ptr @pf_family_names, i32 0, i32 %0
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %9) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sock_is_registered(i32 noundef %0) local_unnamed_addr #8 {
  %2 = icmp slt i32 %0, 46
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = getelementptr [46 x ptr], ptr @net_families, i32 0, i32 %0
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i1 [ false, %1 ], [ %6, %3 ]
  ret i1 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sock_init() #9 section ".init.text" {
  %1 = tail call i32 @net_sysctl_init() #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  tail call void @skb_init() #17
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.62, i32 noundef 576, i32 noundef 0, i32 noundef 1187840, ptr noundef nonnull @init_once) #17
  store ptr %4, ptr @sock_inode_cachep, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !13

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #17, !srcloc !100
  unreachable

7:                                                ; preds = %3
  %8 = tail call i32 @register_filesystem(ptr noundef nonnull @sock_fs_type) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call ptr @kern_mount(ptr noundef nonnull @sock_fs_type) #17
  store ptr %11, ptr @sock_mnt, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  %15 = tail call i32 @unregister_filesystem(ptr noundef nonnull @sock_fs_type) #17
  br label %17

16:                                               ; preds = %10
  tail call void @ptp_classifier_init() #19
  br label %17

17:                                               ; preds = %16, %13, %7, %0
  %18 = phi i32 [ %1, %0 ], [ %8, %7 ], [ %14, %13 ], [ 0, %16 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @socket_seq_show(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @sock_inuse_get(ptr noundef %3) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_inuse_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_ifreq(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2) #0 {
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1090519040) #16, !srcloc !8
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !9

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #17
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !10
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %13 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %2, i32 noundef 32) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !9

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %13, %7 ], [ 32, %3 ]
  %17 = sub i32 32, %16
  %18 = getelementptr i8, ptr %0, i32 %17
  tail call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #17
  br label %24

19:                                               ; preds = %7
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ifreq, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %21, %19, %15
  %25 = phi i32 [ 0, %21 ], [ 0, %19 ], [ -14, %15 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_user_ifreq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 32, i32 -1090519040) #16, !srcloc !37
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #18, !srcloc !10
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %12 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %0, i32 noundef 32) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -14
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ -14, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_listen(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proto_ops, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_accept(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %7 = load i16, ptr %6, align 2
  %8 = load ptr, ptr @sock_mnt, align 4
  %9 = getelementptr inbounds %struct.vfsmount, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @new_inode_pseudo(ptr noundef %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %11, i32 -128
  %15 = tail call i32 @get_next_ino() #17
  %16 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 10
  store i32 %15, ptr %16, align 4
  store i16 -15873, ptr %11, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 2
  %18 = tail call ptr @llvm.thread.pointer() #17
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 83
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %17, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 3
  %24 = load ptr, ptr %19, align 8
  %25 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %23, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 7
  store ptr @sockfs_inode_ops, ptr %27, align 8
  %28 = icmp eq ptr %14, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %13, %3
  store ptr null, ptr %1, align 4
  br label %73

30:                                               ; preds = %13
  %31 = getelementptr i8, ptr %11, i32 -124
  store i16 %7, ptr %31, align 4
  store ptr %14, ptr %1, align 4
  %32 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.proto_ops, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %2, i1 noundef zeroext true) #17
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %30
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %39) #17
  %49 = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 4
  store ptr null, ptr %49, align 16
  store ptr null, ptr %40, align 4
  tail call void @module_put(ptr noundef %45) #17
  br label %50

50:                                               ; preds = %43, %38
  %51 = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 7, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.socket_alloc, ptr %39, i32 0, i32 1
  tail call void @iput(ptr noundef %61) #17
  br label %63

62:                                               ; preds = %56
  store ptr null, ptr %57, align 4
  br label %63

63:                                               ; preds = %62, %60
  store ptr null, ptr %1, align 4
  br label %73

64:                                               ; preds = %30
  %65 = load ptr, ptr %32, align 4
  %66 = load ptr, ptr %1, align 4
  %67 = getelementptr inbounds %struct.socket, ptr %66, i32 0, i32 5
  store ptr %65, ptr %67, align 4
  %68 = load ptr, ptr %1, align 4
  %69 = getelementptr inbounds %struct.socket, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.proto_ops, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void @__module_get(ptr noundef %72) #17
  br label %73

73:                                               ; preds = %64, %63, %29
  %74 = phi i32 [ %36, %63 ], [ %36, %64 ], [ -12, %29 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proto_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_getsockname(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proto_ops, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_getpeername(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proto_ops, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i32 noundef 1) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proto_ops, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %1 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load volatile i32, ptr %12, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %26
  %31 = add i32 %27, -1
  br label %34

32:                                               ; preds = %26
  %33 = ptrtoint ptr %1 to i32
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %34, %20
  %41 = phi i1 [ false, %20 ], [ %39, %34 ]
  %42 = load i1, ptr @kernel_sendpage.__already_done, align 1
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %48, label %44, !prof !9

44:                                               ; preds = %40
  store i1 true, ptr @kernel_sendpage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3491, i32 noundef 9, ptr noundef nonnull @.str.10) #17
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.proto_ops, ptr %45, i32 0, i32 19
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi ptr [ %47, %44 ], [ %9, %40 ]
  %50 = tail call i32 %49(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %53

51:                                               ; preds = %5
  %52 = tail call i32 @sock_no_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %50, %48 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_sendpage_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %17

15:                                               ; preds = %5
  %16 = tail call i32 @sock_no_sendpage_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_sock_shutdown(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proto_ops, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #17
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @kernel_sock_ip_overhead(ptr noundef %0) #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 8
  switch i16 %5, label %39 [
    i16 2, label %6
    i16 10, label %15
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 20
  br label %39

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %17 = load volatile i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, -4161
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ipv6_pinfo, ptr %24, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ipv6_txoptions, ptr %28, i32 0, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.ipv6_txoptions, ptr %28, i32 0, i32 3
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = add nuw nsw i32 %33, 40
  %38 = add nuw nsw i32 %37, %36
  br label %39

39:                                               ; preds = %30, %26, %22, %15, %10, %6, %3, %1
  %40 = phi i32 [ 0, %1 ], [ %14, %10 ], [ 20, %6 ], [ %38, %30 ], [ 40, %26 ], [ 0, %3 ], [ 40, %22 ], [ 40, %15 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_read_iter(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.msghdr, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  %7 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %7, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 4
  store i8 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 7
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  store i32 64, ptr %9, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ 64, %20 ], [ 0, %15 ]
  %23 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2, i32 4
  %32 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.proto_ops, ptr %33, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %31, align 8
  %37 = call i32 %35(ptr noundef %6, ptr noundef nonnull %3, i32 noundef %36, i32 noundef %22) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %7, i32 24, i1 false)
  br label %38

38:                                               ; preds = %30, %26, %21
  %39 = phi i32 [ %37, %30 ], [ -29, %21 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_write_iter(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.msghdr, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  %7 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %7, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 4
  store i8 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 7
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14
  store i32 64, ptr %9, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ 192, %24 ], [ 128, %19 ]
  %27 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 5
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 %26, ptr %9, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2, i32 4
  %33 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.proto_ops, ptr %34, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %32, align 8
  %38 = call i32 %36(ptr noundef %6, ptr noundef nonnull %3, i32 noundef %37) #17
  %39 = icmp eq i32 %38, -529
  br i1 %39, label %40, label %41, !prof !13

40:                                               ; preds = %31
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

41:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %7, i32 24, i1 false)
  br label %42

42:                                               ; preds = %41, %2
  %43 = phi i32 [ %38, %41 ], [ -29, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32768
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 32768, %2 ]
  %12 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.proto_ops, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 13
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @llvm.thread.pointer() #17
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49, !prof !9

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = icmp eq i32 %11, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 14
  %36 = load volatile i32, ptr %35, align 8
  %37 = icmp ugt i32 %36, 16
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 56
  %40 = load volatile i8, ptr %39, align 8
  %41 = icmp ne i8 %40, 0
  %42 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 57
  %43 = load volatile i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %44, i16 8, i16 %43
  tail call void @napi_busy_loop(i32 noundef %36, ptr noundef null, ptr noundef %19, i1 noundef zeroext %41, i16 noundef zeroext %45) #17
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr inbounds %struct.proto_ops, ptr %46, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %38, %34, %32, %28, %23, %17
  %50 = phi ptr [ %15, %28 ], [ %15, %32 ], [ %15, %34 ], [ %48, %38 ], [ %15, %17 ], [ %15, %23 ]
  %51 = phi i32 [ 0, %28 ], [ 32768, %32 ], [ 32768, %34 ], [ 32768, %38 ], [ 0, %17 ], [ 0, %23 ]
  %52 = tail call i32 %50(ptr noundef %0, ptr noundef %4, ptr noundef %1) #17
  %53 = or i32 %52, %51
  br label %54

54:                                               ; preds = %49, %10
  %55 = phi i32 [ %53, %49 ], [ 0, %10 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i8, align 1
  %9 = inttoptr i32 %2 to ptr
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = and i32 %1, -16
  %13 = icmp eq i32 %12, 35312
  br i1 %13, label %14, label %29, !prof !13

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store ptr null, ptr %7, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  store i8 0, ptr %8, align 1, !annotation !15
  %15 = call i32 @get_user_ifreq(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %9)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @dev_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %18, ptr noundef nonnull %8) #17
  %20 = icmp ne i32 %19, 0
  %21 = load i8, ptr %8, align 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 @put_user_ifreq(ptr noundef nonnull %6, ptr noundef %9)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %146

28:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %146

29:                                               ; preds = %3
  switch i32 %1, label %103 [
    i32 35073, label %30
    i32 35074, label %30
    i32 35075, label %44
    i32 35076, label %44
    i32 35136, label %54
    i32 35137, label %54
    i32 35232, label %54
    i32 35233, label %54
    i32 35202, label %66
    i32 35203, label %66
    i32 35148, label %78
    i32 35078, label %83
    i32 35079, label %83
    i32 -2146399994, label %92
    i32 -2146399993, label %92
    i32 35090, label %101
  ]

30:                                               ; preds = %29, %29
  %31 = tail call ptr @llvm.thread.pointer() #17
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #18, !srcloc !10
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %36 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %9, i32 -1090519041) #17, !srcloc !101
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %146

39:                                               ; preds = %30
  %40 = extractvalue { i32, i32 } %36, 1
  %41 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @f_setown(ptr noundef %42, i32 noundef %40, i32 noundef 1) #17
  br label %146

44:                                               ; preds = %29, %29
  %45 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @f_getown(ptr noundef %46) #17
  %48 = tail call ptr @llvm.thread.pointer() #17
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #18, !srcloc !10
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %53 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %47, i32 -1090519041) #17, !srcloc !102
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  br label %146

54:                                               ; preds = %29, %29, %29, %29
  %55 = load ptr, ptr @br_ioctl_hook, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #17
  br label %59

59:                                               ; preds = %57, %54
  tail call void @mutex_lock(ptr noundef nonnull @br_ioctl_mutex) #17
  %60 = load ptr, ptr @br_ioctl_hook, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call i32 %60(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef %1, ptr noundef null, ptr noundef %9) #17
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ -65, %59 ]
  tail call void @mutex_unlock(ptr noundef nonnull @br_ioctl_mutex) #17
  br label %146

66:                                               ; preds = %29, %29
  %67 = load ptr, ptr @vlan_ioctl_hook, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.13) #17
  br label %71

71:                                               ; preds = %69, %66
  tail call void @mutex_lock(ptr noundef nonnull @vlan_ioctl_mutex) #17
  %72 = load ptr, ptr @vlan_ioctl_hook, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call i32 %72(ptr noundef nonnull @init_net, ptr noundef %9) #17
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %75, %74 ], [ -65, %71 ]
  tail call void @mutex_unlock(ptr noundef nonnull @vlan_ioctl_mutex) #17
  br label %146

78:                                               ; preds = %29
  %79 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %80 = tail call zeroext i1 @ns_capable(ptr noundef %79, i32 noundef 12) #17
  br i1 %80, label %81, label %146

81:                                               ; preds = %78
  %82 = tail call i32 @open_related_ns(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14), ptr noundef nonnull @get_net_ns) #17
  br label %146

83:                                               ; preds = %29, %29
  %84 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.proto_ops, ptr %85, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %146, label %89

89:                                               ; preds = %83
  %90 = icmp eq i32 %1, 35078
  %91 = tail call i32 %87(ptr noundef %11, ptr noundef %9, i1 noundef zeroext %90, i1 noundef zeroext true) #17
  br label %146

92:                                               ; preds = %29, %29
  %93 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.proto_ops, ptr %94, i32 0, i32 10
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %146, label %98

98:                                               ; preds = %92
  %99 = icmp eq i32 %1, -2146399994
  %100 = tail call i32 %96(ptr noundef %11, ptr noundef %9, i1 noundef zeroext %99, i1 noundef zeroext false) #17
  br label %146

101:                                              ; preds = %29
  %102 = tail call i32 @dev_ifconf(ptr noundef nonnull @init_net, ptr noundef %9) #17
  br label %146

103:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #17, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  store i8 0, ptr %5, align 1, !annotation !15
  %104 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.proto_ops, ptr %105, i32 0, i32 9
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 %107(ptr noundef %11, i32 noundef %1, i32 noundef %2) #17
  %109 = icmp eq i32 %108, -515
  br i1 %109, label %110, label %144

110:                                              ; preds = %103
  %111 = and i32 %1, 65280
  %112 = icmp eq i32 %111, 35072
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 32, i32 -1090519040) #16
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125, !prof !9

117:                                              ; preds = %113
  %118 = tail call ptr @llvm.thread.pointer() #17
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %120 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %119) #18, !srcloc !10
  %121 = and i32 %120, -13
  %122 = or i32 %121, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #17, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %123 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %9, i32 noundef 32) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125, !prof !9

125:                                              ; preds = %117, %113
  %126 = phi i32 [ %123, %117 ], [ 32, %113 ]
  %127 = sub i32 32, %126
  %128 = getelementptr i8, ptr %4, i32 %127
  call void @llvm.memset.p0.i32(ptr align 1 %128, i8 0, i32 %126, i1 false) #17
  br label %144

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.ifreq, ptr %4, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 @dev_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef nonnull %4, ptr noundef %131, ptr noundef nonnull %5) #17
  %133 = icmp ne i32 %132, 0
  %134 = load i8, ptr %5, align 1
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %129
  %138 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %119) #18, !srcloc !10
  %139 = and i32 %138, -13
  %140 = or i32 %139, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %141 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 32) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #17, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !12
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 0, i32 -14
  br label %144

144:                                              ; preds = %137, %129, %125, %110, %103
  %145 = phi i32 [ %108, %103 ], [ -25, %110 ], [ %132, %129 ], [ -14, %125 ], [ %143, %137 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %146

146:                                              ; preds = %144, %101, %98, %92, %89, %83, %81, %78, %76, %64, %44, %39, %30, %28, %27
  %147 = phi i32 [ -14, %27 ], [ %19, %28 ], [ %145, %144 ], [ %102, %101 ], [ %100, %98 ], [ %91, %89 ], [ %82, %81 ], [ -1, %78 ], [ %77, %76 ], [ %65, %64 ], [ %53, %44 ], [ -14, %30 ], [ %43, %39 ], [ -515, %83 ], [ -515, %92 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proto_ops, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %4, ptr noundef %1) #17
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_close(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -128
  %4 = getelementptr i8, ptr %0, i32 -108
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @down_write(ptr noundef %12) #17
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.proto_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %3) #17
  %17 = getelementptr i8, ptr %0, i32 -112
  store ptr null, ptr %17, align 16
  tail call void @up_write(ptr noundef %12) #17
  br label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %3) #17
  store ptr null, ptr inttoptr (i32 -112 to ptr), align 16
  br label %22

22:                                               ; preds = %18, %11
  store ptr null, ptr %4, align 4
  tail call void @module_put(ptr noundef %9) #17
  br label %23

23:                                               ; preds = %22, %2
  %24 = getelementptr i8, ptr %0, i32 -52
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__sock_release) #19
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr i8, ptr %0, i32 -116
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @iput(ptr noundef %0) #17
  br label %35

34:                                               ; preds = %29
  store ptr null, ptr %30, align 4
  br label %35

35:                                               ; preds = %34, %33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  tail call void @lock_sock_nested(ptr noundef nonnull %7, i32 noundef 0) #17
  %10 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 7, i32 1
  %11 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %10) #17
  %12 = load ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -65537
  %17 = select i1 %13, i32 0, i32 65536
  %18 = or i32 %16, %17
  store i32 %18, ptr %14, align 4
  tail call void @release_sock(ptr noundef nonnull %7) #17
  br label %19

19:                                               ; preds = %9, %3
  %20 = phi i32 [ 0, %9 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_sendpage(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 5
  %12 = and i32 %11, 64
  %13 = or i32 %12, %5
  %14 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.proto_ops, ptr %15, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !9

24:                                               ; preds = %19
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %19
  %27 = ptrtoint ptr %1 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load volatile i32, ptr %20, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !9

38:                                               ; preds = %34
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %34
  %41 = ptrtoint ptr %1 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 3
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 0
  br label %48

48:                                               ; preds = %42, %28
  %49 = phi i1 [ false, %28 ], [ %47, %42 ]
  %50 = load i1, ptr @kernel_sendpage.__already_done, align 1
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %56, label %52, !prof !9

52:                                               ; preds = %48
  store i1 true, ptr @kernel_sendpage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3491, i32 noundef 9, ptr noundef nonnull @.str.10) #17
  %53 = load ptr, ptr %14, align 4
  %54 = getelementptr inbounds %struct.proto_ops, ptr %53, i32 0, i32 19
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi ptr [ %55, %52 ], [ %17, %48 ]
  %58 = tail call i32 %57(ptr noundef %8, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %13) #17
  br label %61

59:                                               ; preds = %6
  %60 = tail call i32 @sock_no_sendpage(ptr noundef %8, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %13) #17
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_splice_sendpage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_splice_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !13

13:                                               ; preds = %5
  %14 = tail call i32 @generic_file_splice_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %17

15:                                               ; preds = %5
  %16 = tail call i32 %11(ptr noundef %7, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proto_ops, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void %8(ptr noundef %0, ptr noundef %4) #17
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_ioctl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f_setown(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f_getown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_related_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @get_net_ns(ptr nocapture noundef readnone %0) #10 {
  ret ptr inttoptr (i32 -22 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_ifconf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sockfs_setattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @simple_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 -112
  %14 = load ptr, ptr %13, align 16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 55
  %18 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %10, %6, %3
  %21 = phi i32 [ %4, %3 ], [ 0, %6 ], [ 0, %16 ], [ -2, %10 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sockfs_listxattr(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) #12 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %2, 21
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, i32 21, i1 false)
  br label %8

8:                                                ; preds = %7, %5, %3
  %9 = phi i32 [ -34, %5 ], [ 21, %7 ], [ 21, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_napi_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @poll_select_set_timeout(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_sysctl_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ptp_classifier_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.socket_alloc, ptr %0, i32 0, i32 1
  tail call void @inode_init_once(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sockfs_init_fs_context(ptr noundef %0) #0 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 1397703499) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  store ptr @sockfs_ops, ptr %2, align 4
  %5 = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 2
  store ptr @sockfs_dentry_operations, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 1
  store ptr @sockfs_xattr_handlers, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sock_alloc_inode(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @sock_inode_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %6, ptr noundef nonnull @.str.64, ptr noundef nonnull @sock_alloc_inode.__key) #17
  %7 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 7, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 7, i32 2
  store i32 0, ptr %8, align 16
  store i32 1, ptr %3, align 64
  %9 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.socket_alloc, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_free_inode(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = load ptr, ptr @sock_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sockfs_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.65, i32 noundef %7) #17
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sockfs_xattr_get(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr noundef writeonly %4, i32 noundef %5) #12 {
  %7 = icmp eq ptr %4, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ugt i32 %12, %5
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %4, ptr align 1 %16, i32 %12, i1 false)
  br label %17

17:                                               ; preds = %14, %6
  %18 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %19 = getelementptr inbounds %struct.anon.2, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  br label %22

22:                                               ; preds = %17, %8
  %23 = phi i32 [ %21, %17 ], [ -34, %8 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sockfs_security_xattr_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, i32 noundef %6, i32 noundef %7) #13 {
  ret i32 -11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly }
attributes #19 = { cold nounwind }

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
!8 = !{i64 2152199580, i64 2152199605}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 4695692}
!11 = !{i64 4695889}
!12 = !{i64 2152181168}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2157887227, i64 2157887704, i64 2157887264, i64 2157887320, i64 2157887354, i64 2157887378, i64 2157887419, i64 2157887440, i64 2157887468, i64 2157887502}
!15 = !{!"auto-init"}
!16 = !{i64 2149468132}
!17 = !{i64 2149468349}
!18 = !{i64 2149664459}
!19 = !{i64 2149664760}
!20 = !{i64 2149374880}
!21 = !{i64 2149370704}
!22 = !{i64 2149370779, i64 2149370806, i64 2149370853, i64 2149370875, i64 2149370903, i64 2149370923}
!23 = !{i64 2149397883}
!24 = !{i64 2157965774, i64 2157966054, i64 2157966388, i64 2157966722}
!25 = !{i64 2157973934, i64 2157974214, i64 2157974548, i64 2157974882}
!26 = !{!27}
!27 = distinct !{!27, !28, !"fdget: argument 0"}
!28 = distinct !{!28, !"fdget"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"fdget: argument 0"}
!31 = distinct !{!31, !"fdget"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"fdget: argument 0"}
!34 = distinct !{!34, !"fdget"}
!35 = !{i64 2157853732, i64 2157854209, i64 2157853769, i64 2157853825, i64 2157853859, i64 2157853883, i64 2157853924, i64 2157853945, i64 2157853973, i64 2157854007}
!36 = !{i64 2157862794, i64 2157863074, i64 2157863408, i64 2157863742}
!37 = !{i64 2152200158, i64 2152200183}
!38 = !{i64 2157871726, i64 2157872006, i64 2157872340, i64 2157872674}
!39 = !{!40}
!40 = distinct !{!40, !41, !"fdget: argument 0"}
!41 = distinct !{!41, !"fdget"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"fdget: argument 0"}
!44 = distinct !{!44, !"fdget"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"fdget: argument 0"}
!47 = distinct !{!47, !"fdget"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"fdget: argument 0"}
!50 = distinct !{!50, !"fdget"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"fdget: argument 0"}
!53 = distinct !{!53, !"fdget"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"fdget: argument 0"}
!56 = distinct !{!56, !"fdget"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"fdget: argument 0"}
!59 = distinct !{!59, !"fdget"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"fdget: argument 0"}
!62 = distinct !{!62, !"fdget"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"fdget: argument 0"}
!65 = distinct !{!65, !"fdget"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"fdget: argument 0"}
!68 = distinct !{!68, !"fdget"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"fdget: argument 0"}
!71 = distinct !{!71, !"fdget"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"fdget: argument 0"}
!74 = distinct !{!74, !"fdget"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"fdget: argument 0"}
!77 = distinct !{!77, !"fdget"}
!78 = !{i64 2158189565, i64 2158189845, i64 2158190179, i64 2158190513}
!79 = !{i64 2158211458, i64 2158211738, i64 2158212072, i64 2158212406}
!80 = !{i64 2158228244, i64 2158228524, i64 2158228858, i64 2158229192}
!81 = !{!82}
!82 = distinct !{!82, !83, !"fdget: argument 0"}
!83 = distinct !{!83, !"fdget"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"fdget: argument 0"}
!86 = distinct !{!86, !"fdget"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"fdget: argument 0"}
!89 = distinct !{!89, !"fdget"}
!90 = !{i64 2156787662}
!91 = !{i64 989659, i64 2148479630, i64 2148479656, i64 2148479703, i64 2148479725, i64 2148479753, i64 2148479773}
!92 = !{i64 998309, i64 998326, i64 998350, i64 998376, i64 998394}
!93 = !{i64 2156787979}
!94 = !{i64 2158254848, i64 2158255128, i64 2158255462, i64 2158255796}
!95 = !{!96}
!96 = distinct !{!96, !97, !"timespec64_sub: argument 0"}
!97 = distinct !{!97, !"timespec64_sub"}
!98 = !{i64 2158300593}
!99 = !{i64 2158305404, i64 2158305882, i64 2158305441, i64 2158305497, i64 2158305531, i64 2158305555, i64 2158305596, i64 2158305617, i64 2158305645, i64 2158305679}
!100 = !{i64 2157876707, i64 2157877184, i64 2157876744, i64 2157876800, i64 2157876834, i64 2157876858, i64 2157876899, i64 2157876920, i64 2157876948, i64 2157876982}
!101 = !{i64 2157915768, i64 2157916048, i64 2157916382, i64 2157916716}
!102 = !{i64 2157924780, i64 2157925060, i64 2157925394, i64 2157925728}
