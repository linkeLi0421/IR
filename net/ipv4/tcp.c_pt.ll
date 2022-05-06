; ModuleID = '/llk/IR/net/ipv4/tcp.c_pt.bc'
source_filename = "../net/ipv4/tcp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_orphan_count:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_orphan_count\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_orphan_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_tcp_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_tcp_mem\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_tcp_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_memory_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_memory_allocated\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_memory_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sockets_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sockets_allocated\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sockets_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_memory_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_memory_pressure\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_memory_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_enter_memory_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_enter_memory_pressure\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_enter_memory_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_leave_memory_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_leave_memory_pressure\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_leave_memory_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_init_sock\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_poll\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_splice_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_splice_read\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_splice_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_tcp_sendpages:\09\09\09\09\09"
module asm "\09.asciz \09\22do_tcp_sendpages\22\09\09\09\09\09"
module asm "__kstrtabns_do_tcp_sendpages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sendpage_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sendpage_locked\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sendpage_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sendmsg_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sendmsg_locked\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sendmsg_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_defer_free_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_defer_free_flush\22\09\09\09\09\09"
module asm "__kstrtabns___sk_defer_free_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_read_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_read_sock\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_read_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_peek_len:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_peek_len\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_peek_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_set_rcvlowat:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_set_rcvlowat\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_set_rcvlowat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_close\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_tx_delay_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_tx_delay_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_tx_delay_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_cork:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_cork\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_cork:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_nodelay:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_nodelay\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_nodelay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_quickack:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_quickack\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_quickack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_syncnt:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_syncnt\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_syncnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_user_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_user_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_user_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_keepidle:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_keepidle\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_keepidle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_keepintvl:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_keepintvl\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_keepintvl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sock_set_keepcnt:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sock_set_keepcnt\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sock_set_keepcnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_get_info\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_bpf_bypass_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_bpf_bypass_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_bpf_bypass_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_done:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_done\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_abort\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.132 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%union.anon.132 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.135, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.135 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.189, %struct.anon.190, %struct.anon.191, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.187, %struct.anon.188, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.176, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.177, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.178, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.0, %union.anon.1, %union.anon.2, i16, i8, i8, i32, %union.anon.4, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.172, [0 x i32], %union.anon.173, i16, i16, %union.anon.174, %struct.refcount_struct, [0 x i32], %union.anon.175 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.116 }
%union.anon.116 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.172 = type { i32 }
%union.anon.173 = type { %struct.hlist_node }
%union.anon.174 = type { i32 }
%union.anon.175 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.176 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.177 = type { ptr }
%union.anon.178 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.121 }
%union.anon.121 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.187 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.188 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.189 = type { i32, i32, i64 }
%struct.anon.190 = type { i32, i32, i64 }
%struct.anon.191 = type { i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.171, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.171 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.read_descriptor_t = type { i32, i32, %union.anon.179, i32 }
%union.anon.179 = type { ptr }
%struct.tcp_splice_state = type { ptr, i32, i32 }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page = type { i32, %union.anon.6, %union.anon.167, %struct.atomic_t }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.167 = type { %struct.atomic_t }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.170, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.5, %union.anon.168 }
%union.anon.5 = type { ptr }
%union.anon.168 = type { i64 }
%union.anon.170 = type { ptr }
%struct.ubuf_info = type { ptr, %union.anon.192, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.192 = type { %struct.anon.194 }
%struct.anon.194 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.151, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.151 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tcp_fastopen_request = type { %struct.tcp_fastopen_cookie, ptr, i32, i32, ptr }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.27, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.__kernel_timespec = type { i64, i64 }
%struct.__kernel_old_timespec = type { i32, i32 }
%struct.__kernel_sock_timeval = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.scm_timestamping_internal = type { [3 x %struct.timespec64] }
%struct.anon = type { i32, i32 }
%struct.anon.3 = type { i16, i16 }
%struct.tcp_repair_opt = type { i32, i32 }
%struct.tcp_repair_window = type { i32, i32, i32, i32, i32 }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.tcp_info = type { i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.iovec = type { ptr, i32 }
%union.tcp_cc_info = type { %struct.tcp_bbr_info }
%struct.tcp_bbr_info = type { i32, i32, i32, i32, i32 }
%struct.tcp_zerocopy_receive = type { i64, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32 }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.rps_sock_flow_table = type { i32, [60 x i8], [0 x i32] }
%struct.anon.14 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.inet_bind_hashbucket = type { %struct.spinlock, %struct.hlist_head }

@tcp_orphan_count = dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_tcp_orphan_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_orphan_count = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_orphan_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_orphan_count to i32), ptr @__kstrtab_tcp_orphan_count, ptr @__kstrtabns_tcp_orphan_count }, section "___ksymtab_gpl+tcp_orphan_count", align 4
@sysctl_tcp_mem = dso_local global [3 x i32] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_sysctl_tcp_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_tcp_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_tcp_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_tcp_mem to i32), ptr @__kstrtab_sysctl_tcp_mem, ptr @__kstrtabns_sysctl_tcp_mem }, section "___ksymtab+sysctl_tcp_mem", align 4
@tcp_memory_allocated = dso_local global %struct.atomic_t zeroinitializer, align 64
@__kstrtab_tcp_memory_allocated = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_memory_allocated = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_memory_allocated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_memory_allocated to i32), ptr @__kstrtab_tcp_memory_allocated, ptr @__kstrtabns_tcp_memory_allocated }, section "___ksymtab+tcp_memory_allocated", align 4
@tcp_sockets_allocated = dso_local global %struct.percpu_counter zeroinitializer, align 64
@__kstrtab_tcp_sockets_allocated = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sockets_allocated = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sockets_allocated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sockets_allocated to i32), ptr @__kstrtab_tcp_sockets_allocated, ptr @__kstrtabns_tcp_sockets_allocated }, section "___ksymtab+tcp_sockets_allocated", align 4
@tcp_memory_pressure = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_tcp_memory_pressure = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_memory_pressure = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_memory_pressure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_memory_pressure to i32), ptr @__kstrtab_tcp_memory_pressure, ptr @__kstrtabns_tcp_memory_pressure }, section "___ksymtab_gpl+tcp_memory_pressure", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_tcp_enter_memory_pressure = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_enter_memory_pressure = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_enter_memory_pressure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_enter_memory_pressure to i32), ptr @__kstrtab_tcp_enter_memory_pressure, ptr @__kstrtabns_tcp_enter_memory_pressure }, section "___ksymtab_gpl+tcp_enter_memory_pressure", align 4
@__kstrtab_tcp_leave_memory_pressure = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_leave_memory_pressure = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_leave_memory_pressure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_leave_memory_pressure to i32), ptr @__kstrtab_tcp_leave_memory_pressure, ptr @__kstrtabns_tcp_leave_memory_pressure }, section "___ksymtab_gpl+tcp_leave_memory_pressure", align 4
@__kstrtab_tcp_init_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_init_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_init_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_init_sock to i32), ptr @__kstrtab_tcp_init_sock, ptr @__kstrtabns_tcp_init_sock }, section "___ksymtab+tcp_init_sock", align 4
@__kstrtab_tcp_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_poll to i32), ptr @__kstrtab_tcp_poll, ptr @__kstrtabns_tcp_poll }, section "___ksymtab+tcp_poll", align 4
@__kstrtab_tcp_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_ioctl to i32), ptr @__kstrtab_tcp_ioctl, ptr @__kstrtabns_tcp_ioctl }, section "___ksymtab+tcp_ioctl", align 4
@__kstrtab_tcp_splice_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_splice_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_splice_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_splice_read to i32), ptr @__kstrtab_tcp_splice_read, ptr @__kstrtabns_tcp_splice_read }, section "___ksymtab+tcp_splice_read", align 4
@__kstrtab_do_tcp_sendpages = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_tcp_sendpages = external dso_local constant [0 x i8], align 1
@__ksymtab_do_tcp_sendpages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_tcp_sendpages to i32), ptr @__kstrtab_do_tcp_sendpages, ptr @__kstrtabns_do_tcp_sendpages }, section "___ksymtab_gpl+do_tcp_sendpages", align 4
@__kstrtab_tcp_sendpage_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sendpage_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sendpage_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sendpage_locked to i32), ptr @__kstrtab_tcp_sendpage_locked, ptr @__kstrtabns_tcp_sendpage_locked }, section "___ksymtab_gpl+tcp_sendpage_locked", align 4
@__kstrtab_tcp_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sendpage to i32), ptr @__kstrtab_tcp_sendpage, ptr @__kstrtabns_tcp_sendpage }, section "___ksymtab+tcp_sendpage", align 4
@sysctl_max_skb_frags = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_tcp_sendmsg_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sendmsg_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sendmsg_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sendmsg_locked to i32), ptr @__kstrtab_tcp_sendmsg_locked, ptr @__kstrtabns_tcp_sendmsg_locked }, section "___ksymtab_gpl+tcp_sendmsg_locked", align 4
@__kstrtab_tcp_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sendmsg to i32), ptr @__kstrtab_tcp_sendmsg, ptr @__kstrtabns_tcp_sendmsg }, section "___ksymtab+tcp_sendmsg", align 4
@.str = private unnamed_addr constant [15 x i8] c"net/ipv4/tcp.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"cleanup rbuf bug: copied %X seq %X rcvnxt %X\0A\00", align 1
@__kstrtab___sk_defer_free_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_defer_free_flush = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_defer_free_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_defer_free_flush to i32), ptr @__kstrtab___sk_defer_free_flush, ptr @__kstrtabns___sk_defer_free_flush }, section "___ksymtab+__sk_defer_free_flush", align 4
@tcp_read_sock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_tcp_read_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_read_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_read_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_read_sock to i32), ptr @__kstrtab_tcp_read_sock, ptr @__kstrtabns_tcp_read_sock }, section "___ksymtab+tcp_read_sock", align 4
@__kstrtab_tcp_peek_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_peek_len = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_peek_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_peek_len to i32), ptr @__kstrtab_tcp_peek_len, ptr @__kstrtabns_tcp_peek_len }, section "___ksymtab+tcp_peek_len", align 4
@__kstrtab_tcp_set_rcvlowat = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_set_rcvlowat = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_set_rcvlowat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_set_rcvlowat to i32), ptr @__kstrtab_tcp_set_rcvlowat, ptr @__kstrtabns_tcp_set_rcvlowat }, section "___ksymtab+tcp_set_rcvlowat", align 4
@tcp_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 4
@__kstrtab_tcp_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_mmap to i32), ptr @__kstrtab_tcp_mmap, ptr @__kstrtabns_tcp_mmap }, section "___ksymtab+tcp_mmap", align 4
@__kstrtab_tcp_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_recvmsg to i32), ptr @__kstrtab_tcp_recvmsg, ptr @__kstrtabns_tcp_recvmsg }, section "___ksymtab+tcp_recvmsg", align 4
@__kstrtab_tcp_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_set_state to i32), ptr @__kstrtab_tcp_set_state, ptr @__kstrtabns_tcp_set_state }, section "___ksymtab_gpl+tcp_set_state", align 4
@__kstrtab_tcp_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_shutdown to i32), ptr @__kstrtab_tcp_shutdown, ptr @__kstrtabns_tcp_shutdown }, section "___ksymtab+tcp_shutdown", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\016TCP: too many orphaned sockets\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\016TCP: out of memory -- consider tuning tcp_mem\0A\00", align 1
@__kstrtab_tcp_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_close = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_close to i32), ptr @__kstrtab_tcp_close, ptr @__kstrtabns_tcp_close }, section "___ksymtab+tcp_close", align 4
@__kstrtab_tcp_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_disconnect to i32), ptr @__kstrtab_tcp_disconnect, ptr @__kstrtabns_tcp_disconnect }, section "___ksymtab+tcp_disconnect", align 4
@tcp_tx_delay_enabled = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_tcp_tx_delay_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_tx_delay_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_tx_delay_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_tx_delay_enabled to i32), ptr @__kstrtab_tcp_tx_delay_enabled, ptr @__kstrtabns_tcp_tx_delay_enabled }, section "___ksymtab+tcp_tx_delay_enabled", align 4
@__kstrtab_tcp_sock_set_cork = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_cork = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_cork = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_cork to i32), ptr @__kstrtab_tcp_sock_set_cork, ptr @__kstrtabns_tcp_sock_set_cork }, section "___ksymtab+tcp_sock_set_cork", align 4
@__kstrtab_tcp_sock_set_nodelay = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_nodelay = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_nodelay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_nodelay to i32), ptr @__kstrtab_tcp_sock_set_nodelay, ptr @__kstrtabns_tcp_sock_set_nodelay }, section "___ksymtab+tcp_sock_set_nodelay", align 4
@__kstrtab_tcp_sock_set_quickack = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_quickack = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_quickack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_quickack to i32), ptr @__kstrtab_tcp_sock_set_quickack, ptr @__kstrtabns_tcp_sock_set_quickack }, section "___ksymtab+tcp_sock_set_quickack", align 4
@__kstrtab_tcp_sock_set_syncnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_syncnt = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_syncnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_syncnt to i32), ptr @__kstrtab_tcp_sock_set_syncnt, ptr @__kstrtabns_tcp_sock_set_syncnt }, section "___ksymtab+tcp_sock_set_syncnt", align 4
@__kstrtab_tcp_sock_set_user_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_user_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_user_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_user_timeout to i32), ptr @__kstrtab_tcp_sock_set_user_timeout, ptr @__kstrtabns_tcp_sock_set_user_timeout }, section "___ksymtab+tcp_sock_set_user_timeout", align 4
@__kstrtab_tcp_sock_set_keepidle = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_keepidle = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_keepidle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_keepidle to i32), ptr @__kstrtab_tcp_sock_set_keepidle, ptr @__kstrtabns_tcp_sock_set_keepidle }, section "___ksymtab+tcp_sock_set_keepidle", align 4
@__kstrtab_tcp_sock_set_keepintvl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_keepintvl = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_keepintvl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_keepintvl to i32), ptr @__kstrtab_tcp_sock_set_keepintvl, ptr @__kstrtabns_tcp_sock_set_keepintvl }, section "___ksymtab+tcp_sock_set_keepintvl", align 4
@__kstrtab_tcp_sock_set_keepcnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sock_set_keepcnt = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sock_set_keepcnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sock_set_keepcnt to i32), ptr @__kstrtab_tcp_sock_set_keepcnt, ptr @__kstrtabns_tcp_sock_set_keepcnt }, section "___ksymtab+tcp_sock_set_keepcnt", align 4
@__kstrtab_tcp_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_setsockopt to i32), ptr @__kstrtab_tcp_setsockopt, ptr @__kstrtabns_tcp_setsockopt }, section "___ksymtab+tcp_setsockopt", align 4
@__kstrtab_tcp_get_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_get_info = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_get_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_get_info to i32), ptr @__kstrtab_tcp_get_info, ptr @__kstrtabns_tcp_get_info }, section "___ksymtab_gpl+tcp_get_info", align 4
@__kstrtab_tcp_bpf_bypass_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_bpf_bypass_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_bpf_bypass_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_bpf_bypass_getsockopt to i32), ptr @__kstrtab_tcp_bpf_bypass_getsockopt, ptr @__kstrtabns_tcp_bpf_bypass_getsockopt }, section "___ksymtab+tcp_bpf_bypass_getsockopt", align 4
@__kstrtab_tcp_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_getsockopt to i32), ptr @__kstrtab_tcp_getsockopt, ptr @__kstrtabns_tcp_getsockopt }, section "___ksymtab+tcp_getsockopt", align 4
@__kstrtab_tcp_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_done = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_done to i32), ptr @__kstrtab_tcp_done, ptr @__kstrtabns_tcp_done }, section "___ksymtab_gpl+tcp_done", align 4
@__kstrtab_tcp_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_abort to i32), ptr @__kstrtab_tcp_abort, ptr @__kstrtabns_tcp_abort }, section "___ksymtab_gpl+tcp_abort", align 4
@__setup_str_set_thash_entries = internal constant [15 x i8] c"thash_entries=\00", section ".init.rodata", align 1
@__setup_set_thash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_thash_entries, ptr @set_thash_entries, i32 0 }, section ".init.setup", align 4
@tcp_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@tcp_orphan_timer = internal global %struct.timer_list zeroinitializer, align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 64
@.str.5 = private unnamed_addr constant [25 x i8] c"tcp_listen_portaddr_hash\00", align 1
@thash_entries = internal global i32 0, section ".init.data", align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"tcp_bind_bucket\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"TCP established\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"TCP: failed to alloc ehash_locks\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"TCP bind\00", align 1
@sysctl_tcp_max_orphans = external dso_local local_unnamed_addr global i32, align 4
@init_net = external dso_local global %struct.net, align 64
@.str.10 = private unnamed_addr constant [56 x i8] c"\016TCP: Hash tables configured (established %u bind %u)\0A\00", align 1
@tcp_reno = external dso_local global %struct.tcp_congestion_ops, align 64
@rfs_needed = external dso_local global %struct.static_key_false, align 4
@rps_sock_flow_table = external dso_local global ptr, align 4
@rps_cpu_mask = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@tcp_recv_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\013TCP: %s: found a SYN, please report !\0A\00", align 1
@__func__.tcp_recv_skb = private unnamed_addr constant [13 x i8] c"tcp_recv_skb\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"TCP recvmsg seq # bug: copied %X, seq %X, rcvnxt %X, fl %X\0A\00", align 1
@tcp_recvmsg_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.tcp_recvmsg_locked = private unnamed_addr constant [19 x i8] c"tcp_recvmsg_locked\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"TCP recvmsg seq # bug 2: copied %X, seq %X, rcvnxt %X, fl %X\0A\00", align 1
@new_state = internal unnamed_addr constant [16 x i8] c"\07\84\07\84\04\05\07\07\89\09\07\0B\07\00\00\00", align 1
@tcp_orphan_cache = internal global i32 0, align 4
@tcp_enable_tx_delay.__tcp_tx_delay_enabled = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"\016TCP: TCP_TX_DELAY enabled\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab___sk_defer_free_flush, ptr @__ksymtab_do_tcp_sendpages, ptr @__ksymtab_sysctl_tcp_mem, ptr @__ksymtab_tcp_abort, ptr @__ksymtab_tcp_bpf_bypass_getsockopt, ptr @__ksymtab_tcp_close, ptr @__ksymtab_tcp_disconnect, ptr @__ksymtab_tcp_done, ptr @__ksymtab_tcp_enter_memory_pressure, ptr @__ksymtab_tcp_get_info, ptr @__ksymtab_tcp_getsockopt, ptr @__ksymtab_tcp_init_sock, ptr @__ksymtab_tcp_ioctl, ptr @__ksymtab_tcp_leave_memory_pressure, ptr @__ksymtab_tcp_memory_allocated, ptr @__ksymtab_tcp_memory_pressure, ptr @__ksymtab_tcp_mmap, ptr @__ksymtab_tcp_orphan_count, ptr @__ksymtab_tcp_peek_len, ptr @__ksymtab_tcp_poll, ptr @__ksymtab_tcp_read_sock, ptr @__ksymtab_tcp_recvmsg, ptr @__ksymtab_tcp_sendmsg, ptr @__ksymtab_tcp_sendmsg_locked, ptr @__ksymtab_tcp_sendpage, ptr @__ksymtab_tcp_sendpage_locked, ptr @__ksymtab_tcp_set_rcvlowat, ptr @__ksymtab_tcp_set_state, ptr @__ksymtab_tcp_setsockopt, ptr @__ksymtab_tcp_shutdown, ptr @__ksymtab_tcp_sock_set_cork, ptr @__ksymtab_tcp_sock_set_keepcnt, ptr @__ksymtab_tcp_sock_set_keepidle, ptr @__ksymtab_tcp_sock_set_keepintvl, ptr @__ksymtab_tcp_sock_set_nodelay, ptr @__ksymtab_tcp_sock_set_quickack, ptr @__ksymtab_tcp_sock_set_syncnt, ptr @__ksymtab_tcp_sock_set_user_timeout, ptr @__ksymtab_tcp_sockets_allocated, ptr @__ksymtab_tcp_splice_read, ptr @__ksymtab_tcp_tx_delay_enabled, ptr @__setup_set_thash_entries], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_enter_memory_pressure(ptr nocapture noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 -1, i32 %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tcp_memory_pressure) #22, !srcloc !10
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @tcp_memory_pressure, i32 0, i32 %7) #22, !srcloc !11
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %17 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %18 = getelementptr [126 x i32], ptr %17, i32 0, i32 56
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #16, !srcloc !14
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #22, !srcloc !15
  br label %27

27:                                               ; preds = %15, %12, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_leave_memory_pressure(ptr nocapture noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tcp_memory_pressure) #22, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @tcp_memory_pressure) #22, !srcloc !17
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = sub i32 %10, %6
  %12 = tail call i32 @jiffies_to_msecs(i32 noundef %11) #22
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %14 = getelementptr [126 x i32], ptr %13, i32 0, i32 57
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #16, !srcloc !14
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %12
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #22, !srcloc !15
  br label %23

23:                                               ; preds = %8, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_init_sock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  store ptr null, ptr %3, align 8
  tail call void @tcp_init_xmit_timers(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 23
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 23, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  store i32 100, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 7
  store i32 20, ptr %9, align 8
  %10 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 8
  store i32 20, ptr %10, align 4
  %11 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #22
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 2
  %16 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 1
  store i32 %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  store i32 -1, ptr %17, align 4
  %18 = load i64, ptr %13, align 4
  store i64 %18, ptr %16, align 4
  store i64 %18, ptr %15, align 4
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 10, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 74
  store i32 -1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 2147483647, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  store i32 -1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  store i32 536, ptr %23, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 57), align 4
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  store i32 %24, ptr %25, align 8
  tail call void @tcp_assign_congestion_control(ptr noundef %0) #22
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 4
  store i8 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 77
  store ptr @sk_stream_write_space, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 512
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 16
  store ptr @tcp_sync_mss, ptr %32, align 8
  %33 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96, i32 1), align 8
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  store volatile i32 %33, ptr %34, align 8
  %35 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 1), align 4
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  store volatile i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.proto, ptr %38, i32 0, i32 31
  %40 = load ptr, ptr %39, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %40, i64 noundef 1, i32 noundef 16) #22
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_xmit_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_assign_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stream_write_space(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !19
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !20
  %15 = icmp eq i8 %14, 10
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %5, i32 0, i32 1, i32 5
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 0, i32 65
  br label %187

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 3
  %25 = icmp eq i8 %14, 7
  %26 = select i1 %24, i1 true, i1 %25
  %27 = select i1 %26, i32 16, i32 0
  %28 = and i8 %23, 1
  %29 = icmp eq i8 %28, 0
  %30 = or i32 %27, 8257
  %31 = select i1 %29, i32 %27, i32 %30
  switch i8 %14, label %36 [
    i8 3, label %32
    i8 2, label %169
  ]

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 116
  %34 = load volatile ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %176, label %36

36:                                               ; preds = %32, %21
  %37 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 6
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 1, i32 %38
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 55
  %42 = load volatile i16, ptr %41, align 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %57, label %44, !prof !21

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 103
  %46 = load volatile i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 8
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %52 = load volatile i32, ptr %51, align 4
  %53 = lshr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = xor i32 %54, 1
  %56 = add i32 %55, %40
  br label %57

57:                                               ; preds = %50, %44, %36
  %58 = phi i32 [ %40, %44 ], [ %40, %36 ], [ %56, %50 ]
  %59 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 7
  %60 = load volatile i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 8
  %62 = load volatile i32, ptr %61, align 4
  %63 = sub i32 %60, %62
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %90, label %65

65:                                               ; preds = %57
  %66 = icmp slt i32 %63, %58
  br i1 %66, label %67, label %98

67:                                               ; preds = %65
  %68 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 15
  %72 = load volatile i32, ptr %71, align 4
  %73 = ashr i32 %72, 3
  %74 = sub i32 %72, %73
  %75 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 9
  %76 = load volatile i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, %74
  br i1 %77, label %98, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 9
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 79
  %82 = load i32, ptr %81, align 8
  %83 = sub i32 %80, %60
  %84 = add i32 %83, %82
  %85 = tail call i32 @llvm.smax.i32(i32 %84, i32 0) #22
  %86 = getelementptr inbounds %struct.inet_connection_sock, ptr %5, i32 0, i32 24, i32 8
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp ugt i32 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %78, %57
  %91 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.proto, ptr %92, i32 0, i32 27
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = tail call zeroext i1 %94(ptr noundef %5) #22
  br i1 %97, label %98, label %100

98:                                               ; preds = %96, %78, %70, %67, %65
  %99 = or i32 %31, 65
  br label %100

100:                                              ; preds = %98, %96, %90
  %101 = phi i32 [ %99, %98 ], [ %31, %96 ], [ %31, %90 ]
  %102 = load i8, ptr %22, align 2
  %103 = and i8 %102, 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %161

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %107 = load volatile i32, ptr %106, align 8
  %108 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 22
  %109 = load volatile i32, ptr %108, align 4
  %110 = sub i32 %107, %109
  %111 = load volatile i32, ptr %108, align 4
  %112 = ashr i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %128, label %114

114:                                              ; preds = %105
  %115 = load volatile i32, ptr %108, align 4
  %116 = load volatile i32, ptr %106, align 8
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.proto, ptr %120, i32 0, i32 26
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = tail call zeroext i1 %122(ptr noundef %5, i32 noundef 1) #22
  br i1 %125, label %126, label %128

126:                                              ; preds = %124, %118
  %127 = or i32 %101, 260
  br label %163

128:                                              ; preds = %124, %114, %105
  %129 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %130, 65536
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.socket_wq, ptr %135, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %136) #22
  br label %137

137:                                              ; preds = %133, %128
  %138 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 71
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.socket, ptr %139, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %140) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  %141 = load volatile i32, ptr %106, align 8
  %142 = load volatile i32, ptr %108, align 4
  %143 = sub i32 %141, %142
  %144 = load volatile i32, ptr %108, align 4
  %145 = ashr i32 %144, 1
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %163, label %147

147:                                              ; preds = %137
  %148 = load volatile i32, ptr %108, align 4
  %149 = load volatile i32, ptr %106, align 8
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.proto, ptr %153, i32 0, i32 26
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %151
  %158 = tail call zeroext i1 %155(ptr noundef %5, i32 noundef 1) #22
  br i1 %158, label %159, label %163

159:                                              ; preds = %157, %151
  %160 = or i32 %101, 260
  br label %163

161:                                              ; preds = %100
  %162 = or i32 %101, 260
  br label %163

163:                                              ; preds = %161, %159, %157, %147, %137, %126
  %164 = phi i32 [ %162, %161 ], [ %127, %126 ], [ %160, %159 ], [ %101, %157 ], [ %101, %137 ], [ %101, %147 ]
  %165 = lshr i16 %42, 7
  %166 = and i16 %165, 2
  %167 = zext i16 %166 to i32
  %168 = or i32 %164, %167
  br label %176

169:                                              ; preds = %21
  %170 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 12
  %171 = load i16, ptr %170, align 8
  %172 = and i16 %171, 1024
  %173 = icmp eq i16 %172, 0
  %174 = or i32 %31, 260
  %175 = select i1 %173, i32 %31, i32 %174
  br label %176

176:                                              ; preds = %169, %163, %32
  %177 = phi i32 [ %168, %163 ], [ %175, %169 ], [ %31, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  %178 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7
  %183 = load volatile ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, %182
  br i1 %184, label %187, label %185

185:                                              ; preds = %181, %176
  %186 = or i32 %177, 8
  br label %187

187:                                              ; preds = %185, %181, %16
  %188 = phi i32 [ %20, %16 ], [ %186, %185 ], [ %177, %181 ]
  ret i32 %188
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %105 [
    i32 21531, label %4
    i32 35077, label %53
    i32 21521, label %64
    i32 35147, label %80
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 10
  br i1 %7, label %105, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @__lock_sock_fast(ptr noundef %0) #22
  %10 = load volatile i8, ptr %5, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, 12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %26, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31, %24, %20, %15
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = sub i32 %38, %40
  %44 = load volatile i32, ptr %16, align 4
  %45 = shl i32 %44, 30
  %46 = ashr i32 %45, 31
  %47 = add i32 %43, %46
  br label %48

48:                                               ; preds = %42, %36, %31, %8
  %49 = phi i32 [ 0, %36 ], [ 0, %8 ], [ %47, %42 ], [ %29, %31 ]
  br i1 %9, label %50, label %51

50:                                               ; preds = %48
  tail call void @release_sock(ptr noundef %0) #22
  br label %96

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %52) #22
  br label %96

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %55 = load volatile i16, ptr %54, align 4
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %96, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %59 = load volatile i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %61 = load volatile i32, ptr %60, align 4
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  br label %96

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %66 = load volatile i8, ptr %65, align 2
  %67 = icmp eq i8 %66, 10
  br i1 %67, label %105, label %68

68:                                               ; preds = %64
  %69 = load volatile i8, ptr %65, align 2
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, 12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %76 = load volatile i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %76, %78
  br label %96

80:                                               ; preds = %3
  %81 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %82 = load volatile i8, ptr %81, align 2
  %83 = icmp eq i8 %82, 10
  br i1 %83, label %105, label %84

84:                                               ; preds = %80
  %85 = load volatile i8, ptr %81, align 2
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, 12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %92 = load volatile i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %94 = load volatile i32, ptr %93, align 4
  %95 = sub i32 %92, %94
  br label %96

96:                                               ; preds = %90, %84, %74, %68, %57, %53, %51, %50
  %97 = phi i32 [ %95, %90 ], [ %79, %74 ], [ 0, %53 ], [ %63, %57 ], [ 0, %68 ], [ 0, %84 ], [ %49, %50 ], [ %49, %51 ]
  %98 = inttoptr i32 %2 to ptr
  %99 = tail call ptr @llvm.thread.pointer() #22
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %101 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #16, !srcloc !24
  %102 = and i32 %101, -13
  %103 = or i32 %102, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %104 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %98, i32 %97, i32 -1090519041) #22, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %105

105:                                              ; preds = %96, %80, %64, %4, %3
  %106 = phi i32 [ %104, %96 ], [ -22, %4 ], [ -22, %64 ], [ -22, %80 ], [ -515, %3 ]
  ret i32 %106
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_mark_push(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = load i8, ptr %3, align 4
  %5 = or i8 %4, 8
  store i8 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  store i32 %7, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_skb_entail(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i32 %5, ptr %6, align 4
  store i32 %5, ptr %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i8 16, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %9 = load i8, ptr %8, align 2
  %10 = or i8 %9, 2
  store i8 %10, ptr %8, align 2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 10
  store volatile i32 65537, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %14, ptr %1, align 8
  %17 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 1
  store volatile ptr %16, ptr %17, align 4
  store volatile ptr %1, ptr %15, align 4
  store volatile ptr %1, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store volatile i32 %20, ptr %18, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  tail call void @tcp_chrono_start(ptr noundef %0, i32 noundef 1) #22
  br label %24

24:                                               ; preds = %23, %2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store volatile i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %25, align 8
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %38, %36
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %35, %24
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 1024
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = and i16 %42, -1025
  store i16 %46, ptr %41, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 70), align 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %49, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %63 = load i32, ptr %62, align 8
  %64 = sub i32 %61, %63
  %65 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  tail call void @tcp_cwnd_restart(ptr noundef %0, i32 noundef %64) #22
  br label %69

69:                                               ; preds = %68, %60, %56, %52, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_push(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %6
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %80, label %12

12:                                               ; preds = %5
  %13 = and i32 %1, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 1
  %21 = add i32 %20, %17
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15, %12
  %27 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 8
  store i8 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %26, %15
  %34 = phi i32 [ %31, %26 ], [ %23, %15 ]
  %35 = and i32 %1, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 60
  store i32 %34, ptr %38, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = icmp uge i32 %41, %4
  %43 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 90), align 1
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %78, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %48 = load volatile ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %78, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %52 = load volatile i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 18
  %54 = load i32, ptr %53, align 8
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %63 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %64 = getelementptr [126 x i32], ptr %63, i32 0, i32 93
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #16, !srcloc !14
  %69 = add i32 %68, %65
  %70 = inttoptr i32 %69 to ptr
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #22, !srcloc !15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %57) #22
  %73 = load i32, ptr %53, align 8
  br label %74

74:                                               ; preds = %61, %56
  %75 = phi i32 [ %73, %61 ], [ %54, %56 ]
  %76 = load volatile i32, ptr %51, align 4
  %77 = icmp ugt i32 %76, %75
  br i1 %77, label %80, label %78

78:                                               ; preds = %74, %50, %46, %39
  %79 = select i1 %14, i32 %3, i32 2
  tail call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %2, i32 noundef %79) #22
  br label %80

80:                                               ; preds = %78, %74, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_push_pending_frames(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_splice_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.read_descriptor_t, align 4
  %7 = alloca %struct.tcp_splice_state, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  store ptr %2, ptr %7, align 4
  %11 = getelementptr inbounds %struct.tcp_splice_state, ptr %7, i32 0, i32 1
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tcp_splice_state, ptr %7, i32 0, i32 2
  store i32 %4, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %13 = load volatile i32, ptr @rfs_needed, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %22, !prof !28

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %17 = load volatile i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 21
  %21 = load i32, ptr %20, align 8
  tail call fastcc void @sock_rps_record_flow_hash(i32 noundef %21) #22
  br label %22

22:                                               ; preds = %19, %15, %5
  %23 = load i64, ptr %1, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %146, !prof !21

25:                                               ; preds = %22
  tail call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #22
  %26 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 62
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i32 [ %34, %32 ], [ 0, %25 ]
  store i32 %36, ptr %8, align 4
  %37 = getelementptr inbounds %struct.read_descriptor_t, ptr %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.read_descriptor_t, ptr %6, i32 0, i32 2
  %39 = getelementptr inbounds %struct.read_descriptor_t, ptr %6, i32 0, i32 3
  %40 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 51
  %41 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %42 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 66
  %43 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %44 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 8
  %45 = icmp eq i32 %3, 0
  br i1 %45, label %127, label %46

46:                                               ; preds = %124, %35
  %47 = phi i32 [ %125, %124 ], [ %3, %35 ]
  %48 = phi i32 [ %126, %124 ], [ 0, %35 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4
  store i32 %47, ptr %37, align 4
  store ptr %7, ptr %38, align 4
  store i32 0, ptr %39, align 4
  %49 = call i32 @tcp_read_sock(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull @tcp_splice_data_recv) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %127, label %51

51:                                               ; preds = %46
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %51
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %55, label %127

55:                                               ; preds = %53
  %56 = load volatile i32, ptr %43, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %127

59:                                               ; preds = %55
  %60 = load i32, ptr %40, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #22, !srcloc !10
  %63 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %40) #22, !srcloc !17
  %64 = extractvalue { i32, i32 } %63, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !30
  %65 = sub i32 0, %64
  br label %127

66:                                               ; preds = %59
  %67 = load i8, ptr %42, align 2
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %66
  %71 = load volatile i8, ptr %41, align 2
  %72 = icmp eq i8 %71, 7
  br i1 %72, label %127, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %127, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %44, align 4
  %78 = icmp eq ptr %77, %44
  br i1 %78, label %79, label %127

79:                                               ; preds = %76
  %80 = call i32 @sk_wait_data(ptr noundef %10, ptr noundef nonnull %8, ptr noundef null) #22
  %81 = tail call ptr @llvm.thread.pointer() #22
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92, !prof !21

85:                                               ; preds = %79
  %86 = load volatile i32, ptr %81, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, ptr %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %127, label %124

92:                                               ; preds = %85, %79
  %93 = load i32, ptr %8, align 4
  %94 = icmp eq i32 %93, 2147483647
  %95 = select i1 %94, i32 -512, i32 -4
  br label %127

96:                                               ; preds = %51
  %97 = load i32, ptr %11, align 4
  %98 = sub i32 %97, %49
  store i32 %98, ptr %11, align 4
  %99 = add i32 %49, %48
  %100 = load i32, ptr %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %96
  call void @release_sock(ptr noundef %10) #22
  call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #22
  %103 = load i32, ptr %40, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load volatile i8, ptr %41, align 2
  %107 = icmp eq i8 %106, 7
  br i1 %107, label %127, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %42, align 2
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = tail call ptr @llvm.thread.pointer() #22
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 256
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127, !prof !21

117:                                              ; preds = %112
  %118 = load volatile i32, ptr %113, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  %121 = load i32, ptr %11, align 4
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %127

124:                                              ; preds = %117, %89
  %125 = phi i32 [ %121, %117 ], [ %90, %89 ]
  %126 = phi i32 [ %99, %117 ], [ 0, %89 ]
  br label %46

127:                                              ; preds = %117, %112, %108, %105, %102, %96, %92, %89, %76, %73, %70, %66, %62, %55, %53, %46, %35
  %128 = phi i32 [ 0, %62 ], [ 0, %92 ], [ 0, %35 ], [ 0, %73 ], [ 0, %70 ], [ 0, %76 ], [ 0, %66 ], [ 0, %55 ], [ %48, %53 ], [ 0, %89 ], [ %99, %112 ], [ %99, %96 ], [ %99, %117 ], [ %99, %108 ], [ %99, %105 ], [ %99, %102 ], [ %48, %46 ]
  %129 = phi i32 [ %65, %62 ], [ %95, %92 ], [ 0, %35 ], [ -11, %73 ], [ -107, %70 ], [ 0, %76 ], [ 0, %66 ], [ 0, %55 ], [ 0, %53 ], [ 0, %89 ], [ %49, %112 ], [ %49, %96 ], [ %49, %117 ], [ %49, %108 ], [ %49, %105 ], [ %49, %102 ], [ %49, %46 ]
  call void @release_sock(ptr noundef %10) #22
  %130 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 10
  %131 = load volatile ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %127
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #22, !srcloc !10
  %134 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %130) #22, !srcloc !17
  %135 = extractvalue { i32, i32 } %134, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = inttoptr i32 %135 to ptr
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi ptr [ %141, %139 ], [ %138, %137 ]
  %141 = load ptr, ptr %140, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %141) #22, !srcloc !33
  store ptr null, ptr %140, align 8
  call void @__kfree_skb(ptr noundef nonnull %140) #22
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %139

143:                                              ; preds = %139, %133, %127
  %144 = icmp eq i32 %128, 0
  %145 = select i1 %144, i32 %129, i32 %128
  br label %146

146:                                              ; preds = %143, %22
  %147 = phi i32 [ -29, %22 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  ret i32 %147
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_wait_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !21

7:                                                ; preds = %4
  tail call fastcc void @sk_mem_reclaim_partial(ptr noundef %0)
  br label %8

8:                                                ; preds = %7, %4
  %9 = add i32 %1, 320
  %10 = tail call ptr @__alloc_skb(i32 noundef %9, i32 noundef %2, i32 noundef 1, i32 noundef -1) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12, !prof !28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = add i32 %19, 448
  %21 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 18
  store i32 %20, ptr %21, align 8
  br i1 %3, label %22, label %23

22:                                               ; preds = %12
  tail call void @sk_forced_mem_schedule(ptr noundef %0, i32 noundef %20) #22
  br label %36

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.proto, ptr %25, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %31, %20
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = tail call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %20, i32 noundef 0) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36, !prof !28

36:                                               ; preds = %33, %29, %23, %22
  %37 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 320
  store ptr %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 320
  store ptr %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 13
  %44 = load i16, ptr %43, align 8
  %45 = or i16 %44, 96
  store i16 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 4
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 4, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  br label %54

48:                                               ; preds = %33
  tail call void @__kfree_skb(ptr noundef nonnull %10) #22
  br label %54

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.proto, ptr %51, i32 0, i32 28
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %0) #22
  tail call fastcc void @sk_stream_moderate_sndbuf(ptr noundef %0)
  br label %54

54:                                               ; preds = %49, %48, %36
  %55 = phi ptr [ %10, %36 ], [ null, %48 ], [ null, %49 ]
  ret ptr %55
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sk_mem_reclaim_partial(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13, !prof !21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = sub i32 %11, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #22
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i32 [ %20, %13 ], [ 0, %7 ]
  %23 = sub i32 %9, %22
  %24 = icmp sgt i32 %23, 4096
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = add nsw i32 %23, -1
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %26) #22
  br label %27

27:                                               ; preds = %25, %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_forced_mem_schedule(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sk_wmem_schedule(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proto, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %1, i32 noundef 0) #22
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %8, %2
  %16 = phi i1 [ true, %2 ], [ true, %8 ], [ %14, %12 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sk_stream_moderate_sndbuf(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = ashr i32 %10, 1
  %12 = tail call i32 @llvm.smin.i32(i32 %8, i32 %11)
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16, !prof !21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %18 = load volatile i32, ptr %17, align 4
  %19 = add i32 %10, %18
  %20 = sub i32 %14, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #22
  br label %22

22:                                               ; preds = %16, %6
  %23 = phi i32 [ %21, %16 ], [ 0, %6 ]
  %24 = tail call i32 @llvm.umax.i32(i32 %12, i32 %23)
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 4480)
  store volatile i32 %25, ptr %7, align 8
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_send_mss(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @tcp_current_mss(ptr noundef %0) #22
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -321
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, 536
  %14 = zext i1 %13 to i32
  %15 = lshr i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = icmp slt i32 %15, %10
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %21 = load i16, ptr %20, align 8
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 68, %22
  %24 = tail call i32 @llvm.smax.i32(i32 %15, i32 %23) #22
  br label %25

25:                                               ; preds = %19, %7
  %26 = phi i32 [ %24, %19 ], [ %10, %7 ]
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = mul i32 %4, %29
  %31 = icmp ult i32 %26, %30
  %32 = add i32 %30, %4
  %33 = icmp uge i32 %26, %32
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %44, !prof !28

35:                                               ; preds = %25
  %36 = udiv i32 %26, %4
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  %38 = load i16, ptr %37, align 2
  %39 = and i32 %36, 65535
  %40 = zext i16 %38 to i32
  %41 = tail call i32 @llvm.umin.i32(i32 %39, i32 %40) #22
  %42 = trunc i32 %41 to i16
  store i16 %42, ptr %27, align 2
  %43 = mul i32 %41, %4
  br label %44

44:                                               ; preds = %35, %25
  %45 = phi i32 [ %43, %35 ], [ %30, %25 ]
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %4) #22
  br label %47

47:                                               ; preds = %44, %3
  %48 = phi i32 [ %46, %44 ], [ %4, %3 ]
  store i32 %48, ptr %1, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_current_mss(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_remove_empty_skb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %2
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %91, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %91

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %16, align 4
  store i32 0, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store volatile i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.anon.43, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr null, ptr %21, align 4
  store ptr null, ptr %4, align 8
  %23 = getelementptr inbounds %struct.anon.43, ptr %20, i32 0, i32 1
  store volatile ptr %22, ptr %23, align 4
  store volatile ptr %20, ptr %22, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  tail call void @tcp_chrono_stop(ptr noundef %0, i32 noundef 1) #22
  br label %30

30:                                               ; preds = %29, %14
  %31 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %32
  store volatile i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = load i8, ptr %37, align 8
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.proto, ptr %42, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %40, label %46, label %65

46:                                               ; preds = %30
  br i1 %45, label %90, label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %31, align 8
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55, !prof !21

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %57 = load volatile i32, ptr %56, align 4
  %58 = add i32 %35, %57
  %59 = sub i32 %53, %58
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0) #22
  br label %61

61:                                               ; preds = %55, %47
  %62 = phi i32 [ %60, %55 ], [ 0, %47 ]
  %63 = sub i32 %51, %62
  %64 = icmp sgt i32 %63, 2097151
  br i1 %64, label %89, label %90, !prof !28

65:                                               ; preds = %30
  br i1 %45, label %90, label %66

66:                                               ; preds = %65
  %67 = ptrtoint ptr %37 to i32
  %68 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = ptrtoint ptr %69 to i32
  %71 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %67, 448
  %74 = sub i32 %73, %70
  %75 = add i32 %74, %72
  store i32 %75, ptr %71, align 4
  %76 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79, !prof !21

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %81 = load volatile i32, ptr %80, align 4
  %82 = add i32 %35, %81
  %83 = sub i32 %77, %82
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0) #22
  br label %85

85:                                               ; preds = %79, %66
  %86 = phi i32 [ %84, %79 ], [ 0, %66 ]
  %87 = sub i32 %75, %86
  %88 = icmp sgt i32 %87, 2097151
  br i1 %88, label %89, label %90, !prof !28

89:                                               ; preds = %85, %61
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef 1048576) #22
  br label %90

90:                                               ; preds = %89, %85, %65, %61, %46
  tail call void @__kfree_skb(ptr noundef nonnull %4) #22
  br label %91

91:                                               ; preds = %90, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_chrono_stop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_tcp_sendpages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %7 = and i32 %4, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 31
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %11, %9 ], [ 0, %5 ]
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, -259
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load volatile i8, ptr %14, align 2
  %22 = icmp eq i8 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %25 = load volatile ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20
  %28 = call i32 @sk_stream_wait_connect(ptr noundef %0, ptr noundef nonnull %6) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %456

30:                                               ; preds = %27, %23, %12
  %31 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.socket_wq, ptr %37, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %38) #22
  br label %39

39:                                               ; preds = %35, %30
  %40 = call i32 @tcp_current_mss(ptr noundef %0) #22
  %41 = and i32 %4, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -321
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %48 = load i32, ptr %47, align 8
  %49 = icmp ugt i32 %48, 536
  %50 = zext i1 %49 to i32
  %51 = lshr i32 %48, %50
  %52 = icmp ne i32 %51, 0
  %53 = icmp slt i32 %51, %46
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %57 = load i16, ptr %56, align 8
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 68, %58
  %60 = call i32 @llvm.smax.i32(i32 %51, i32 %59) #22
  br label %61

61:                                               ; preds = %55, %43
  %62 = phi i32 [ %60, %55 ], [ %46, %43 ]
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 2
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = mul i32 %40, %65
  %67 = icmp ult i32 %62, %66
  %68 = add i32 %66, %40
  %69 = icmp uge i32 %62, %68
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %80, !prof !28

71:                                               ; preds = %61
  %72 = udiv i32 %62, %40
  %73 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  %74 = load i16, ptr %73, align 2
  %75 = and i32 %72, 65535
  %76 = zext i16 %74 to i32
  %77 = call i32 @llvm.umin.i32(i32 %75, i32 %76) #22
  %78 = trunc i32 %77 to i16
  store i16 %78, ptr %63, align 2
  %79 = mul i32 %77, %40
  br label %80

80:                                               ; preds = %71, %61
  %81 = phi i32 [ %79, %71 ], [ %66, %61 ]
  %82 = call i32 @llvm.umax.i32(i32 %81, i32 %40) #22
  br label %83

83:                                               ; preds = %80, %39
  %84 = phi i32 [ %82, %80 ], [ %40, %39 ]
  %85 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %456

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %90 = load i8, ptr %89, align 2
  %91 = and i8 %90, 2
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %456

93:                                               ; preds = %88
  %94 = icmp eq i32 %3, 0
  br i1 %94, label %474, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %97 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %98 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %99 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %100 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %101 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %102 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %103 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %104 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %105 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  %106 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %107 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %108 = ptrtoint ptr %1 to i32
  %109 = and i32 %4, 524288
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %112 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %113 = and i32 %4, -32769
  %114 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  %115 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 2
  %117 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  br label %118

118:                                              ; preds = %390, %95
  %119 = phi i32 [ 0, %95 ], [ %395, %390 ]
  %120 = phi i32 [ %40, %95 ], [ %394, %390 ]
  %121 = phi i32 [ %3, %95 ], [ %393, %390 ]
  %122 = phi i32 [ %2, %95 ], [ %392, %390 ]
  %123 = phi i32 [ %84, %95 ], [ %391, %390 ]
  %124 = load volatile ptr, ptr %97, align 4
  %125 = icmp eq ptr %124, %96
  %126 = icmp eq ptr %124, null
  %127 = or i1 %125, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 5
  %130 = load i32, ptr %129, align 8
  %131 = sub i32 %123, %130
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3, i32 15
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, 2
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %162, label %138

138:                                              ; preds = %199, %133, %128, %118
  %139 = load volatile i32, ptr %98, align 4
  %140 = load volatile i32, ptr %99, align 8
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %348

142:                                              ; preds = %138
  %143 = load ptr, ptr %100, align 8
  %144 = getelementptr inbounds %struct.proto, ptr %143, i32 0, i32 26
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = call zeroext i1 %145(ptr noundef %0, i32 noundef 0) #22
  br i1 %148, label %149, label %348

149:                                              ; preds = %147, %142
  %150 = load i32, ptr %101, align 8
  %151 = load volatile ptr, ptr %102, align 8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, ptr %103, align 4
  %155 = load i32, ptr %104, align 4
  %156 = icmp eq i32 %154, %155
  br label %157

157:                                              ; preds = %153, %149
  %158 = phi i1 [ false, %149 ], [ %156, %153 ]
  %159 = call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef 0, i32 noundef %150, i1 noundef zeroext %158) #22
  %160 = icmp eq ptr %159, null
  br i1 %160, label %348, label %161

161:                                              ; preds = %157
  call void @tcp_skb_entail(ptr noundef %0, ptr noundef nonnull %159) #22
  br label %162

162:                                              ; preds = %161, %133
  %163 = phi ptr [ %159, %161 ], [ %124, %133 ]
  %164 = phi i32 [ %123, %161 ], [ %131, %133 ]
  %165 = call i32 @llvm.umin.i32(i32 %164, i32 %121) #22
  %166 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 15
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.skb_shared_info, ptr %167, i32 0, i32 2
  %169 = load i8, ptr %168, align 2
  %170 = zext i8 %169 to i32
  %171 = load i8, ptr %167, align 8
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.skb_shared_info, ptr %167, i32 0, i32 11
  %176 = load ptr, ptr %175, align 4
  %177 = icmp ne ptr %176, null
  br label %178

178:                                              ; preds = %174, %162
  %179 = phi i1 [ %177, %174 ], [ false, %162 ]
  %180 = icmp eq i8 %169, 0
  %181 = or i1 %180, %179
  br i1 %181, label %194, label %182

182:                                              ; preds = %178
  %183 = add nsw i32 %170, -1
  %184 = getelementptr %struct.skb_shared_info, ptr %167, i32 0, i32 12, i32 %183
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, %1
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = getelementptr %struct.skb_shared_info, ptr %167, i32 0, i32 12, i32 %183, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr %struct.skb_shared_info, ptr %167, i32 0, i32 12, i32 %183, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, %189
  %193 = icmp eq i32 %192, %122
  br label %194

194:                                              ; preds = %187, %182, %178
  %195 = phi i1 [ false, %178 ], [ false, %182 ], [ %193, %187 ]
  %196 = load i32, ptr @sysctl_max_skb_frags, align 4
  %197 = icmp sgt i32 %196, %170
  %198 = select i1 %195, i1 true, i1 %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 3, i32 12
  %201 = load i8, ptr %200, align 4
  %202 = or i8 %201, 8
  store i8 %202, ptr %200, align 4
  %203 = load i32, ptr %103, align 4
  store i32 %203, ptr %105, align 4
  br label %138

204:                                              ; preds = %194
  %205 = and i8 %171, 4
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %230, label %207, !prof !21

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 18
  %209 = load i32, ptr %208, align 8
  %210 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 16
  %211 = load ptr, ptr %210, align 8
  %212 = ptrtoint ptr %167 to i32
  %213 = ptrtoint ptr %211 to i32
  %214 = sub i32 -448, %212
  %215 = add i32 %214, %209
  %216 = add i32 %215, %213
  %217 = call fastcc zeroext i1 @sk_wmem_schedule(ptr noundef %0, i32 noundef %216) #22
  br i1 %217, label %218, label %348

218:                                              ; preds = %207
  %219 = load ptr, ptr %100, align 8
  %220 = getelementptr inbounds %struct.proto, ptr %219, i32 0, i32 30
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load i32, ptr %106, align 4
  %225 = sub i32 %224, %216
  store i32 %225, ptr %106, align 4
  br label %226

226:                                              ; preds = %223, %218
  %227 = load ptr, ptr %166, align 4
  %228 = load i8, ptr %227, align 8
  %229 = and i8 %228, -5
  store i8 %229, ptr %227, align 8
  br label %230

230:                                              ; preds = %226, %204
  %231 = load ptr, ptr %100, align 8
  %232 = getelementptr inbounds %struct.proto, ptr %231, i32 0, i32 30
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %241, label %235

235:                                              ; preds = %230
  %236 = load i32, ptr %106, align 4
  %237 = icmp slt i32 %236, %165
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %165, i32 noundef 0) #22
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %348, label %241

241:                                              ; preds = %238, %235, %230
  br i1 %195, label %242, label %248

242:                                              ; preds = %241
  %243 = load ptr, ptr %166, align 4
  %244 = add nsw i32 %170, -1
  %245 = getelementptr %struct.skb_shared_info, ptr %243, i32 0, i32 12, i32 %244, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = add i32 %246, %165
  store i32 %247, ptr %245, align 4
  br label %284

248:                                              ; preds = %241
  %249 = load volatile i32, ptr %107, align 4
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252, !prof !21

252:                                              ; preds = %248
  %253 = add i32 %249, -1
  br label %254

254:                                              ; preds = %252, %248
  %255 = phi i32 [ %253, %252 ], [ %108, %248 ]
  %256 = inttoptr i32 %255 to ptr
  %257 = getelementptr inbounds %struct.page, ptr %256, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %257) #22, !srcloc !10
  %258 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %257, ptr %257, i32 1, ptr elementtype(i32) %257) #22, !srcloc !34
  %259 = load ptr, ptr %166, align 4
  %260 = getelementptr %struct.skb_shared_info, ptr %259, i32 0, i32 12, i32 %170
  store ptr %1, ptr %260, align 4
  %261 = getelementptr %struct.skb_shared_info, ptr %259, i32 0, i32 12, i32 %170, i32 2
  store i32 %122, ptr %261, align 4
  %262 = getelementptr %struct.skb_shared_info, ptr %259, i32 0, i32 12, i32 %170, i32 1
  store i32 %165, ptr %262, align 4
  %263 = load volatile i32, ptr %107, align 4
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266, !prof !21

266:                                              ; preds = %254
  %267 = add i32 %263, -1
  br label %268

268:                                              ; preds = %266, %254
  %269 = phi i32 [ %267, %266 ], [ %108, %254 ]
  %270 = inttoptr i32 %269 to ptr
  %271 = getelementptr inbounds %struct.page, ptr %270, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = ptrtoint ptr %272 to i32
  %274 = and i32 %273, 2
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 11
  %278 = load i8, ptr %277, align 2
  %279 = or i8 %278, 64
  store i8 %279, ptr %277, align 2
  br label %280

280:                                              ; preds = %276, %268
  %281 = add i8 %169, 1
  %282 = load ptr, ptr %166, align 4
  %283 = getelementptr inbounds %struct.skb_shared_info, ptr %282, i32 0, i32 2
  store i8 %281, ptr %283, align 2
  br label %284

284:                                              ; preds = %280, %242
  br i1 %110, label %285, label %289

285:                                              ; preds = %284
  %286 = load ptr, ptr %166, align 4
  %287 = load i8, ptr %286, align 8
  %288 = or i8 %287, 2
  store i8 %288, ptr %286, align 8
  br label %289

289:                                              ; preds = %285, %284
  %290 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 5
  %291 = load i32, ptr %290, align 8
  %292 = add i32 %291, %165
  store i32 %292, ptr %290, align 8
  %293 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 6
  %294 = load i32, ptr %293, align 4
  %295 = add i32 %294, %165
  store i32 %295, ptr %293, align 4
  %296 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 18
  %297 = load i32, ptr %296, align 8
  %298 = add i32 %297, %165
  store i32 %298, ptr %296, align 8
  %299 = load i32, ptr %98, align 4
  %300 = add i32 %299, %165
  store volatile i32 %300, ptr %98, align 4
  %301 = load ptr, ptr %100, align 8
  %302 = getelementptr inbounds %struct.proto, ptr %301, i32 0, i32 30
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %308, label %305

305:                                              ; preds = %289
  %306 = load i32, ptr %106, align 4
  %307 = sub i32 %306, %165
  store i32 %307, ptr %106, align 4
  br label %308

308:                                              ; preds = %305, %289
  %309 = load i32, ptr %103, align 4
  %310 = add i32 %309, %165
  store volatile i32 %310, ptr %103, align 4
  %311 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 3, i32 4
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %312, %165
  store i32 %313, ptr %311, align 4
  %314 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 3, i32 8
  store i16 0, ptr %314, align 8
  %315 = icmp eq i32 %119, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %308
  %317 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 3, i32 12
  %318 = load i8, ptr %317, align 4
  %319 = and i8 %318, -9
  store i8 %319, ptr %317, align 4
  br label %320

320:                                              ; preds = %316, %308
  %321 = add i32 %165, %119
  %322 = add i32 %165, %122
  %323 = sub i32 %121, %165
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %397, label %325

325:                                              ; preds = %320
  %326 = load i32, ptr %290, align 8
  %327 = icmp uge i32 %326, %123
  %328 = and i1 %42, %327
  br i1 %328, label %329, label %390

329:                                              ; preds = %325
  %330 = load i32, ptr %105, align 4
  %331 = load i32, ptr %111, align 8
  %332 = lshr i32 %331, 1
  %333 = add i32 %332, %330
  %334 = load i32, ptr %103, align 4
  %335 = sub i32 %333, %334
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %329
  %338 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 3, i32 12
  %339 = load i8, ptr %338, align 4
  %340 = or i8 %339, 8
  store i8 %340, ptr %338, align 4
  %341 = load i32, ptr %103, align 4
  store i32 %341, ptr %105, align 4
  call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %120, i32 noundef 4) #22
  br label %390

342:                                              ; preds = %329
  %343 = load ptr, ptr %96, align 4
  %344 = icmp eq ptr %343, %96
  %345 = select i1 %344, ptr null, ptr %343
  %346 = icmp eq ptr %163, %345
  br i1 %346, label %347, label %390

347:                                              ; preds = %342
  call void @tcp_push_one(ptr noundef %0, i32 noundef %120) #22
  br label %390

348:                                              ; preds = %238, %207, %157, %147, %138
  %349 = load ptr, ptr %112, align 8
  %350 = getelementptr inbounds %struct.socket, ptr %349, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %350) #22
  call void @tcp_push(ptr noundef %0, i32 noundef %113, i32 noundef %120, i32 noundef 4, i32 noundef %123)
  %351 = call i32 @sk_stream_wait_memory(ptr noundef %0, ptr noundef nonnull %6) #22
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %454

353:                                              ; preds = %348
  %354 = call i32 @tcp_current_mss(ptr noundef %0) #22
  br i1 %42, label %355, label %390

355:                                              ; preds = %353
  %356 = load i32, ptr %114, align 4
  %357 = add i32 %356, -321
  %358 = load i32, ptr %111, align 8
  %359 = icmp ugt i32 %358, 536
  %360 = zext i1 %359 to i32
  %361 = lshr i32 %358, %360
  %362 = icmp ne i32 %361, 0
  %363 = icmp slt i32 %361, %357
  %364 = and i1 %362, %363
  br i1 %364, label %365, label %370

365:                                              ; preds = %355
  %366 = load i16, ptr %115, align 8
  %367 = zext i16 %366 to i32
  %368 = sub nsw i32 68, %367
  %369 = call i32 @llvm.smax.i32(i32 %361, i32 %368) #22
  br label %370

370:                                              ; preds = %365, %355
  %371 = phi i32 [ %369, %365 ], [ %357, %355 ]
  %372 = load i16, ptr %116, align 2
  %373 = zext i16 %372 to i32
  %374 = mul i32 %354, %373
  %375 = icmp ult i32 %371, %374
  %376 = add i32 %374, %354
  %377 = icmp uge i32 %371, %376
  %378 = or i1 %375, %377
  br i1 %378, label %379, label %387, !prof !28

379:                                              ; preds = %370
  %380 = udiv i32 %371, %354
  %381 = load i16, ptr %117, align 2
  %382 = and i32 %380, 65535
  %383 = zext i16 %381 to i32
  %384 = call i32 @llvm.umin.i32(i32 %382, i32 %383) #22
  %385 = trunc i32 %384 to i16
  store i16 %385, ptr %116, align 2
  %386 = mul i32 %384, %354
  br label %387

387:                                              ; preds = %379, %370
  %388 = phi i32 [ %386, %379 ], [ %374, %370 ]
  %389 = call i32 @llvm.umax.i32(i32 %388, i32 %354) #22
  br label %390

390:                                              ; preds = %387, %353, %347, %342, %337, %325
  %391 = phi i32 [ %123, %337 ], [ %123, %347 ], [ %123, %342 ], [ %123, %325 ], [ %389, %387 ], [ %354, %353 ]
  %392 = phi i32 [ %322, %337 ], [ %322, %347 ], [ %322, %342 ], [ %322, %325 ], [ %122, %387 ], [ %122, %353 ]
  %393 = phi i32 [ %323, %337 ], [ %323, %347 ], [ %323, %342 ], [ %323, %325 ], [ %121, %387 ], [ %121, %353 ]
  %394 = phi i32 [ %120, %337 ], [ %120, %347 ], [ %120, %342 ], [ %120, %325 ], [ %354, %387 ], [ %354, %353 ]
  %395 = phi i32 [ %321, %337 ], [ %321, %347 ], [ %321, %342 ], [ %321, %325 ], [ %119, %387 ], [ %119, %353 ]
  %396 = icmp eq i32 %393, 0
  br i1 %396, label %397, label %118

397:                                              ; preds = %390, %320
  %398 = phi i32 [ %391, %390 ], [ %123, %320 ]
  %399 = phi i32 [ %394, %390 ], [ %120, %320 ]
  %400 = phi i32 [ %395, %390 ], [ %321, %320 ]
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %474, label %402

402:                                              ; preds = %454, %397
  %403 = phi i32 [ %398, %397 ], [ %123, %454 ]
  %404 = phi i32 [ %399, %397 ], [ %120, %454 ]
  %405 = phi i32 [ %400, %397 ], [ %119, %454 ]
  %406 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %407 = load i16, ptr %406, align 8
  %408 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %409 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %410 = load volatile ptr, ptr %409, align 4
  %411 = icmp eq ptr %410, %408
  %412 = select i1 %411, ptr null, ptr %410
  %413 = zext i16 %407 to i32
  %414 = icmp ne i16 %407, 0
  %415 = icmp ne ptr %412, null
  %416 = select i1 %414, i1 %415, i1 false
  br i1 %416, label %417, label %445

417:                                              ; preds = %402
  %418 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 15
  %419 = load ptr, ptr %418, align 4
  %420 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 3
  %421 = getelementptr inbounds %struct.skb_shared_info, ptr %419, i32 0, i32 3
  call void @__sock_tx_timestamp(i16 noundef zeroext %407, ptr noundef %421) #22
  %422 = load volatile i32, ptr %31, align 4
  %423 = and i32 %422, 524288
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %428, label %425, !prof !21

425:                                              ; preds = %417
  %426 = load i8, ptr %421, align 1
  %427 = or i8 %426, 16
  store i8 %427, ptr %421, align 1
  br label %428

428:                                              ; preds = %425, %417
  %429 = and i32 %413, 512
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %435, label %431

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 3, i32 15
  %433 = load i8, ptr %432, align 1
  %434 = or i8 %433, 1
  store i8 %434, ptr %432, align 1
  br label %435

435:                                              ; preds = %431, %428
  %436 = and i32 %413, 771
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %445, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %420, align 8
  %440 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 5
  %441 = load i32, ptr %440, align 8
  %442 = add i32 %439, -1
  %443 = add i32 %442, %441
  %444 = getelementptr inbounds %struct.skb_shared_info, ptr %419, i32 0, i32 9
  store i32 %443, ptr %444, align 4
  br label %445

445:                                              ; preds = %438, %435, %402
  %446 = and i32 %4, 131072
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %474

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %450 = load i16, ptr %449, align 4
  %451 = lshr i16 %450, 8
  %452 = and i16 %451, 15
  %453 = zext i16 %452 to i32
  call void @tcp_push(ptr noundef %0, i32 noundef %4, i32 noundef %404, i32 noundef %453, i32 noundef %403)
  br label %474

454:                                              ; preds = %348
  call void @tcp_remove_empty_skb(ptr noundef %0)
  %455 = icmp eq i32 %119, 0
  br i1 %455, label %456, label %402

456:                                              ; preds = %454, %88, %83, %27
  %457 = phi i32 [ -32, %83 ], [ -32, %88 ], [ %351, %454 ], [ %28, %27 ]
  %458 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %459 = load volatile ptr, ptr %458, align 8
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %472

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %463 = load i32, ptr %462, align 4
  %464 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %463, %465
  %467 = icmp eq i32 %457, -11
  %468 = select i1 %466, i1 %467, i1 false
  br i1 %468, label %469, label %472, !prof !28

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 77
  %471 = load ptr, ptr %470, align 4
  call void %471(ptr noundef %0) #22
  call void @tcp_chrono_stop(ptr noundef %0, i32 noundef 3) #22
  br label %472

472:                                              ; preds = %469, %461, %456
  %473 = call i32 @sk_stream_error(ptr noundef %0, i32 noundef %4, i32 noundef %457) #22
  br label %474

474:                                              ; preds = %472, %448, %445, %397, %93
  %475 = phi i32 [ %473, %472 ], [ %405, %445 ], [ %405, %448 ], [ 0, %397 ], [ 0, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i32 %475
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_push_one(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_memory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sendpage_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @sock_no_sendpage_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  br label %14

12:                                               ; preds = %5
  tail call void @tcp_rate_check_app_limited(ptr noundef %0) #22
  %13 = tail call i32 @do_tcp_sendpages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ %11, %10 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_check_app_limited(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @sock_no_sendpage_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  br label %14

12:                                               ; preds = %5
  tail call void @tcp_rate_check_app_limited(ptr noundef %0) #22
  %13 = tail call i32 @do_tcp_sendpages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ %11, %10 ]
  tail call void @release_sock(ptr noundef %0) #22
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_free_fastopen_req(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 115
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %3) #22
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sendmsg_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockcm_cookie, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !35
  %8 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 67108864
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i32 %2, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 262144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %20
  %24 = icmp eq ptr %22, null
  %25 = or i1 %23, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %26, %19
  %36 = phi ptr [ %34, %32 ], [ null, %26 ], [ null, %19 ]
  %37 = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i32 noundef %2, ptr noundef %36) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %692, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ubuf_info, ptr %37, i32 0, i32 1, i32 0, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = and i8 %46, -2
  store i8 %47, ptr %45, align 2
  br label %48

48:                                               ; preds = %44, %39, %14, %3
  %49 = phi i1 [ true, %39 ], [ false, %44 ], [ false, %14 ], [ false, %3 ]
  %50 = phi ptr [ %37, %39 ], [ %37, %44 ], [ null, %14 ], [ null, %3 ]
  %51 = and i32 %9, 536870912
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58, !prof !21

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %55 = load i16, ptr %54, align 8
  %56 = and i16 %55, 1024
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %71, label %58, !prof !21

58:                                               ; preds = %53, %48
  %59 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 16384
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = call fastcc i32 @tcp_sendmsg_fastopen(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %2, ptr noundef %50)
  %65 = icmp eq i32 %64, -115
  %66 = load i32, ptr %6, align 4
  %67 = icmp sgt i32 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %669, label %69

69:                                               ; preds = %63
  %70 = icmp eq i32 %64, 0
  br i1 %70, label %71, label %684

71:                                               ; preds = %69, %58, %53
  %72 = phi i32 [ %66, %69 ], [ 0, %58 ], [ 0, %53 ]
  %73 = and i32 %9, 64
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 31
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i32 [ %77, %75 ], [ 0, %71 ]
  store i32 %79, ptr %7, align 4
  tail call void @tcp_rate_check_app_limited(ptr noundef %0) #22
  %80 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %81 = load volatile i8, ptr %80, align 2
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, -259
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %78
  %87 = load volatile i8, ptr %80, align 2
  %88 = icmp eq i8 %87, 3
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %91 = load volatile ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %86
  %94 = call i32 @sk_stream_wait_connect(ptr noundef %0, ptr noundef nonnull %7) #22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %677

96:                                               ; preds = %93, %89, %78
  %97 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %98 = load i16, ptr %97, align 4
  %99 = and i16 %98, 16384
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %106, label %101, !prof !21

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  %103 = load i8, ptr %102, align 2
  switch i8 %103, label %106 [
    i8 1, label %104
    i8 0, label %684
  ]

104:                                              ; preds = %101
  %105 = call i32 @tcp_send_rcvq(ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  br label %669

106:                                              ; preds = %101, %96
  %107 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %108 = load i16, ptr %107, align 8
  store i64 0, ptr %5, align 8
  %109 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %109, align 8
  %110 = getelementptr inbounds i8, ptr %5, i32 12
  store i16 %108, ptr %110, align 4
  %111 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = call i32 @sock_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %684, !prof !21

117:                                              ; preds = %114, %106
  %118 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 65536
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.socket_wq, ptr %124, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %125) #22
  br label %126

126:                                              ; preds = %122, %117
  %127 = and i32 %9, 1
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  %130 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %131 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %132 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 2
  %133 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  %134 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %135 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %136 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %137 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %138 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %139 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %140 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %141 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %142 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %143 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %144 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %145 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %146 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %147 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 37
  %148 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  %149 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %150 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %151 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  %152 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %153 = and i32 %9, -32769
  br label %155

154:                                              ; preds = %242
  call void @__sk_flush_backlog(ptr noundef %0) #22
  br label %155

155:                                              ; preds = %154, %126
  %156 = phi i32 [ 0, %126 ], [ %207, %154 ]
  %157 = call i32 @tcp_current_mss(ptr noundef %0) #22
  br i1 %128, label %158, label %193

158:                                              ; preds = %155
  %159 = load i32, ptr %129, align 4
  %160 = add i32 %159, -321
  %161 = load i32, ptr %130, align 8
  %162 = icmp ugt i32 %161, 536
  %163 = zext i1 %162 to i32
  %164 = lshr i32 %161, %163
  %165 = icmp ne i32 %164, 0
  %166 = icmp slt i32 %164, %160
  %167 = and i1 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %158
  %169 = load i16, ptr %131, align 8
  %170 = zext i16 %169 to i32
  %171 = sub nsw i32 68, %170
  %172 = call i32 @llvm.smax.i32(i32 %164, i32 %171) #22
  br label %173

173:                                              ; preds = %168, %158
  %174 = phi i32 [ %172, %168 ], [ %160, %158 ]
  %175 = load i16, ptr %132, align 2
  %176 = zext i16 %175 to i32
  %177 = mul i32 %157, %176
  %178 = icmp ult i32 %174, %177
  %179 = add i32 %177, %157
  %180 = icmp uge i32 %174, %179
  %181 = or i1 %178, %180
  br i1 %181, label %182, label %190, !prof !28

182:                                              ; preds = %173
  %183 = udiv i32 %174, %157
  %184 = load i16, ptr %133, align 2
  %185 = and i32 %183, 65535
  %186 = zext i16 %184 to i32
  %187 = call i32 @llvm.umin.i32(i32 %185, i32 %186) #22
  %188 = trunc i32 %187 to i16
  store i16 %188, ptr %132, align 2
  %189 = mul i32 %187, %157
  br label %190

190:                                              ; preds = %182, %173
  %191 = phi i32 [ %189, %182 ], [ %177, %173 ]
  %192 = call i32 @llvm.umax.i32(i32 %191, i32 %157) #22
  br label %193

193:                                              ; preds = %190, %155
  %194 = phi i32 [ %192, %190 ], [ %157, %155 ]
  %195 = load i32, ptr %134, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %677

197:                                              ; preds = %193
  %198 = load i8, ptr %135, align 2
  %199 = and i8 %198, 2
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %677

201:                                              ; preds = %197
  %202 = load i32, ptr %136, align 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %617, label %204

204:                                              ; preds = %610, %201
  %205 = phi i32 [ %614, %610 ], [ 0, %201 ]
  %206 = phi i32 [ %613, %610 ], [ %157, %201 ]
  %207 = phi i32 [ %612, %610 ], [ %156, %201 ]
  %208 = phi i32 [ %611, %610 ], [ %194, %201 ]
  %209 = load volatile ptr, ptr %138, align 4
  %210 = icmp eq ptr %209, %137
  %211 = icmp eq ptr %209, null
  %212 = or i1 %210, %211
  br i1 %212, label %228, label %213

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.sk_buff, ptr %209, i32 0, i32 5
  %215 = load i32, ptr %214, align 8
  %216 = sub i32 %208, %215
  %217 = icmp slt i32 %216, 1
  br i1 %217, label %228, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.sk_buff, ptr %209, i32 0, i32 3, i32 15
  %220 = load i8, ptr %219, align 1
  %221 = and i8 %220, 2
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %267, label %228

223:                                              ; preds = %508, %508, %317
  %224 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 3, i32 12
  %225 = load i8, ptr %224, align 4
  %226 = or i8 %225, 8
  store i8 %226, ptr %224, align 4
  %227 = load i32, ptr %144, align 4
  store i32 %227, ptr %148, align 4
  br label %228

228:                                              ; preds = %223, %218, %213, %204
  %229 = phi i32 [ %205, %204 ], [ %205, %218 ], [ %205, %213 ], [ %269, %223 ]
  %230 = load volatile i32, ptr %139, align 4
  %231 = load volatile i32, ptr %140, align 8
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %564

233:                                              ; preds = %228
  %234 = load ptr, ptr %141, align 8
  %235 = getelementptr inbounds %struct.proto, ptr %234, i32 0, i32 26
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = call zeroext i1 %236(ptr noundef %0, i32 noundef 0) #22
  br i1 %239, label %240, label %564

240:                                              ; preds = %238, %233
  %241 = icmp sgt i32 %229, 15
  br i1 %241, label %242, label %245, !prof !28

242:                                              ; preds = %240
  %243 = load volatile ptr, ptr %142, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %154, !prof !21

245:                                              ; preds = %242, %240
  %246 = phi i32 [ %229, %240 ], [ 0, %242 ]
  %247 = load volatile ptr, ptr %143, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, ptr %144, align 4
  %251 = load i32, ptr %145, align 4
  %252 = icmp eq i32 %250, %251
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi i1 [ false, %245 ], [ %252, %249 ]
  %255 = load i32, ptr %146, align 8
  %256 = call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef 0, i32 noundef %255, i1 noundef zeroext %254)
  %257 = icmp eq ptr %256, null
  br i1 %257, label %564, label %258

258:                                              ; preds = %253
  %259 = add nsw i32 %246, 1
  call void @tcp_skb_entail(ptr noundef %0, ptr noundef nonnull %256)
  %260 = load i16, ptr %97, align 4
  %261 = and i16 %260, 16384
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 3, i32 13
  %265 = load i8, ptr %264, align 1
  %266 = or i8 %265, 16
  store i8 %266, ptr %264, align 1
  br label %267

267:                                              ; preds = %263, %258, %218
  %268 = phi ptr [ %256, %263 ], [ %256, %258 ], [ %209, %218 ]
  %269 = phi i32 [ %259, %263 ], [ %259, %258 ], [ %205, %218 ]
  %270 = phi i32 [ %208, %263 ], [ %208, %258 ], [ %216, %218 ]
  %271 = load i32, ptr %136, align 8
  %272 = call i32 @llvm.umin.i32(i32 %270, i32 %271)
  br i1 %49, label %482, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 15
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.skb_shared_info, ptr %275, i32 0, i32 2
  %277 = load i8, ptr %276, align 2
  %278 = zext i8 %277 to i32
  %279 = load i32, ptr %146, align 8
  %280 = and i32 %279, 132224
  %281 = icmp eq i32 %280, 1152
  br i1 %281, label %282, label %285

282:                                              ; preds = %273
  %283 = tail call ptr @llvm.thread.pointer() #22
  %284 = getelementptr inbounds %struct.task_struct, ptr %283, i32 0, i32 139
  br label %285

285:                                              ; preds = %282, %273
  %286 = phi ptr [ %284, %282 ], [ %147, %273 ]
  %287 = call zeroext i1 @sk_page_frag_refill(ptr noundef %0, ptr noundef %286) #22
  br i1 %287, label %288, label %564

288:                                              ; preds = %285
  %289 = load ptr, ptr %286, align 4
  %290 = getelementptr inbounds %struct.page_frag, ptr %286, i32 0, i32 1
  %291 = load i16, ptr %290, align 4
  %292 = zext i16 %291 to i32
  %293 = load ptr, ptr %274, align 4
  %294 = load i8, ptr %293, align 8
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %288
  %298 = getelementptr inbounds %struct.skb_shared_info, ptr %293, i32 0, i32 11
  %299 = load ptr, ptr %298, align 4
  %300 = icmp ne ptr %299, null
  br label %301

301:                                              ; preds = %297, %288
  %302 = phi i1 [ %300, %297 ], [ false, %288 ]
  %303 = icmp eq i8 %277, 0
  %304 = or i1 %303, %302
  br i1 %304, label %317, label %305

305:                                              ; preds = %301
  %306 = add nsw i32 %278, -1
  %307 = getelementptr %struct.skb_shared_info, ptr %293, i32 0, i32 12, i32 %306
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, %289
  br i1 %309, label %310, label %317

310:                                              ; preds = %305
  %311 = getelementptr %struct.skb_shared_info, ptr %293, i32 0, i32 12, i32 %306, i32 2
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr %struct.skb_shared_info, ptr %293, i32 0, i32 12, i32 %306, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, %312
  %316 = icmp eq i32 %315, %292
  br label %317

317:                                              ; preds = %310, %305, %301
  %318 = phi i1 [ false, %301 ], [ false, %305 ], [ %316, %310 ]
  %319 = load i32, ptr @sysctl_max_skb_frags, align 4
  %320 = icmp sgt i32 %319, %278
  %321 = select i1 %318, i1 true, i1 %320
  br i1 %321, label %322, label %223

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.page_frag, ptr %286, i32 0, i32 2
  %324 = load i16, ptr %323, align 2
  %325 = zext i16 %324 to i32
  %326 = sub nsw i32 %325, %292
  %327 = call i32 @llvm.smin.i32(i32 %272, i32 %326)
  %328 = and i8 %294, 4
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %353, label %330, !prof !21

330:                                              ; preds = %322
  %331 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 18
  %332 = load i32, ptr %331, align 8
  %333 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 16
  %334 = load ptr, ptr %333, align 8
  %335 = ptrtoint ptr %293 to i32
  %336 = ptrtoint ptr %334 to i32
  %337 = sub i32 -448, %335
  %338 = add i32 %337, %332
  %339 = add i32 %338, %336
  %340 = call fastcc zeroext i1 @sk_wmem_schedule(ptr noundef %0, i32 noundef %339) #22
  br i1 %340, label %341, label %564

341:                                              ; preds = %330
  %342 = load ptr, ptr %141, align 8
  %343 = getelementptr inbounds %struct.proto, ptr %342, i32 0, i32 30
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %349, label %346

346:                                              ; preds = %341
  %347 = load i32, ptr %149, align 4
  %348 = sub i32 %347, %339
  store i32 %348, ptr %149, align 4
  br label %349

349:                                              ; preds = %346, %341
  %350 = load ptr, ptr %274, align 4
  %351 = load i8, ptr %350, align 8
  %352 = and i8 %351, -5
  store i8 %352, ptr %350, align 8
  br label %353

353:                                              ; preds = %349, %322
  %354 = load ptr, ptr %141, align 8
  %355 = getelementptr inbounds %struct.proto, ptr %354, i32 0, i32 30
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %364, label %358

358:                                              ; preds = %353
  %359 = load i32, ptr %149, align 4
  %360 = icmp slt i32 %359, %327
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %327, i32 noundef 0) #22
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %564, label %364

364:                                              ; preds = %361, %358, %353
  %365 = load ptr, ptr %286, align 4
  %366 = load i16, ptr %290, align 4
  %367 = zext i16 %366 to i32
  %368 = call ptr @page_address(ptr noundef %365) #22
  %369 = getelementptr i8, ptr %368, i32 %367
  %370 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 5
  %371 = load i32, ptr %370, align 8
  %372 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 13
  %373 = load i16, ptr %372, align 8
  %374 = and i16 %373, 96
  %375 = icmp eq i16 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %364
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4
  %377 = call i32 @csum_and_copy_from_iter(ptr noundef %369, i32 noundef %327, ptr noundef nonnull %4, ptr noundef %150) #22
  %378 = icmp eq i32 %377, %327
  br i1 %378, label %379, label %391, !prof !21

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 13, i32 0, i32 4
  %381 = load i32, ptr %380, align 4
  %382 = load i32, ptr %4, align 4
  %383 = and i32 %371, 1
  %384 = icmp eq i32 %383, 0
  %385 = call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 24) #22
  %386 = select i1 %384, i32 %382, i32 %385
  %387 = add i32 %386, %381
  %388 = icmp ult i32 %387, %386
  %389 = zext i1 %388 to i32
  %390 = add i32 %387, %389
  store i32 %390, ptr %380, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %418

391:                                              ; preds = %376
  call void @iov_iter_revert(ptr noundef %150, i32 noundef %377) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %677

392:                                              ; preds = %364
  %393 = load i64, ptr %151, align 8
  %394 = and i64 %393, 2199023255552
  %395 = icmp eq i64 %394, 0
  %396 = icmp slt i32 %327, 0
  %397 = load i1, ptr @check_copy_size.__already_done, align 1
  %398 = xor i1 %397, true
  %399 = select i1 %396, i1 %398, i1 false
  br i1 %395, label %409, label %400

400:                                              ; preds = %392
  br i1 %399, label %401, label %402, !prof !28

401:                                              ; preds = %400
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #22
  br label %402

402:                                              ; preds = %401, %400
  br i1 %396, label %405, label %403, !prof !28

403:                                              ; preds = %402
  %404 = call i32 @_copy_from_iter_nocache(ptr noundef %369, i32 noundef %327, ptr noundef %150) #22
  br label %405

405:                                              ; preds = %403, %402
  %406 = phi i32 [ %404, %403 ], [ 0, %402 ]
  %407 = icmp eq i32 %406, %327
  br i1 %407, label %418, label %408, !prof !21

408:                                              ; preds = %405
  call void @iov_iter_revert(ptr noundef %150, i32 noundef %406) #22
  br label %677

409:                                              ; preds = %392
  br i1 %399, label %410, label %411, !prof !28

410:                                              ; preds = %409
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #22
  br label %411

411:                                              ; preds = %410, %409
  br i1 %396, label %414, label %412, !prof !28

412:                                              ; preds = %411
  %413 = call i32 @_copy_from_iter(ptr noundef %369, i32 noundef %327, ptr noundef %150) #22
  br label %414

414:                                              ; preds = %412, %411
  %415 = phi i32 [ %413, %412 ], [ 0, %411 ]
  %416 = icmp eq i32 %415, %327
  br i1 %416, label %418, label %417, !prof !21

417:                                              ; preds = %414
  call void @iov_iter_revert(ptr noundef %150, i32 noundef %415) #22
  br label %677

418:                                              ; preds = %414, %405, %379
  %419 = load i32, ptr %370, align 8
  %420 = add i32 %419, %327
  store i32 %420, ptr %370, align 8
  %421 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 6
  %422 = load i32, ptr %421, align 4
  %423 = add i32 %422, %327
  store i32 %423, ptr %421, align 4
  %424 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 18
  %425 = load i32, ptr %424, align 8
  %426 = add i32 %425, %327
  store i32 %426, ptr %424, align 8
  %427 = load i32, ptr %139, align 4
  %428 = add i32 %427, %327
  store volatile i32 %428, ptr %139, align 4
  %429 = load ptr, ptr %141, align 8
  %430 = getelementptr inbounds %struct.proto, ptr %429, i32 0, i32 30
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %436, label %433

433:                                              ; preds = %418
  %434 = load i32, ptr %149, align 4
  %435 = sub i32 %434, %327
  store i32 %435, ptr %149, align 4
  br label %436

436:                                              ; preds = %433, %418
  br i1 %318, label %437, label %443

437:                                              ; preds = %436
  %438 = load ptr, ptr %274, align 4
  %439 = add nsw i32 %278, -1
  %440 = getelementptr %struct.skb_shared_info, ptr %438, i32 0, i32 12, i32 %439, i32 1
  %441 = load i32, ptr %440, align 4
  %442 = add i32 %441, %327
  store i32 %442, ptr %440, align 4
  br label %478

443:                                              ; preds = %436
  %444 = load ptr, ptr %286, align 4
  %445 = load i16, ptr %290, align 4
  %446 = zext i16 %445 to i32
  %447 = load ptr, ptr %274, align 4
  %448 = getelementptr %struct.skb_shared_info, ptr %447, i32 0, i32 12, i32 %278
  store ptr %444, ptr %448, align 4
  %449 = getelementptr %struct.skb_shared_info, ptr %447, i32 0, i32 12, i32 %278, i32 2
  store i32 %446, ptr %449, align 4
  %450 = getelementptr %struct.skb_shared_info, ptr %447, i32 0, i32 12, i32 %278, i32 1
  store i32 %327, ptr %450, align 4
  %451 = getelementptr inbounds %struct.page, ptr %444, i32 0, i32 1
  %452 = load volatile i32, ptr %451, align 4
  %453 = and i32 %452, 1
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %457, label %455, !prof !21

455:                                              ; preds = %443
  %456 = add i32 %452, -1
  br label %459

457:                                              ; preds = %443
  %458 = ptrtoint ptr %444 to i32
  br label %459

459:                                              ; preds = %457, %455
  %460 = phi i32 [ %456, %455 ], [ %458, %457 ]
  %461 = inttoptr i32 %460 to ptr
  %462 = getelementptr inbounds %struct.page, ptr %461, i32 0, i32 1
  %463 = load ptr, ptr %462, align 4
  %464 = ptrtoint ptr %463 to i32
  %465 = and i32 %464, 2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %471, label %467

467:                                              ; preds = %459
  %468 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 11
  %469 = load i8, ptr %468, align 2
  %470 = or i8 %469, 64
  store i8 %470, ptr %468, align 2
  br label %471

471:                                              ; preds = %467, %459
  %472 = add i8 %277, 1
  %473 = load ptr, ptr %274, align 4
  %474 = getelementptr inbounds %struct.skb_shared_info, ptr %473, i32 0, i32 2
  store i8 %472, ptr %474, align 2
  %475 = load ptr, ptr %286, align 4
  %476 = getelementptr inbounds %struct.page, ptr %475, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %476) #22, !srcloc !10
  %477 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %476, ptr %476, i32 1, ptr elementtype(i32) %476) #22, !srcloc !34
  br label %478

478:                                              ; preds = %471, %437
  %479 = load i16, ptr %290, align 4
  %480 = trunc i32 %327 to i16
  %481 = add i16 %479, %480
  store i16 %481, ptr %290, align 4
  br label %512

482:                                              ; preds = %267
  %483 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 5
  %484 = load i32, ptr %483, align 8
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 15
  %488 = load ptr, ptr %487, align 4
  %489 = load i8, ptr %488, align 8
  %490 = or i8 %489, 4
  store i8 %490, ptr %488, align 8
  br label %491

491:                                              ; preds = %486, %482
  %492 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 15
  %493 = load ptr, ptr %492, align 4
  %494 = load i8, ptr %493, align 8
  %495 = and i8 %494, 4
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %497, label %508

497:                                              ; preds = %491
  %498 = load ptr, ptr %141, align 8
  %499 = getelementptr inbounds %struct.proto, ptr %498, i32 0, i32 30
  %500 = load ptr, ptr %499, align 4
  %501 = icmp eq ptr %500, null
  br i1 %501, label %508, label %502

502:                                              ; preds = %497
  %503 = load i32, ptr %149, align 4
  %504 = icmp slt i32 %503, %272
  br i1 %504, label %505, label %508

505:                                              ; preds = %502
  %506 = call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %272, i32 noundef 0) #22
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %564, label %508

508:                                              ; preds = %505, %502, %497, %491
  %509 = call i32 @skb_zerocopy_iter_stream(ptr noundef %0, ptr noundef nonnull %268, ptr noundef %1, i32 noundef %272, ptr noundef %50) #22
  switch i32 %509, label %510 [
    i32 -17, label %223
    i32 -90, label %223
  ]

510:                                              ; preds = %508
  %511 = icmp slt i32 %509, 0
  br i1 %511, label %677, label %512

512:                                              ; preds = %510, %478
  %513 = phi i32 [ %509, %510 ], [ %327, %478 ]
  %514 = icmp eq i32 %207, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 3, i32 12
  %517 = load i8, ptr %516, align 4
  %518 = and i8 %517, -9
  store i8 %518, ptr %516, align 4
  br label %519

519:                                              ; preds = %515, %512
  %520 = load i32, ptr %144, align 4
  %521 = add i32 %520, %513
  store volatile i32 %521, ptr %144, align 4
  %522 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 3, i32 4
  %523 = load i32, ptr %522, align 4
  %524 = add i32 %523, %513
  store i32 %524, ptr %522, align 4
  %525 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 3, i32 8
  store i16 0, ptr %525, align 8
  %526 = add i32 %513, %207
  %527 = load i32, ptr %136, align 8
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %536

529:                                              ; preds = %519
  %530 = and i32 %9, 128
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %617, label %532, !prof !21

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 3, i32 15
  %534 = load i8, ptr %533, align 1
  %535 = or i8 %534, 2
  store i8 %535, ptr %533, align 1
  br label %617

536:                                              ; preds = %519
  %537 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 5
  %538 = load i32, ptr %537, align 8
  %539 = icmp uge i32 %538, %208
  %540 = select i1 %539, i1 %128, i1 false
  br i1 %540, label %541, label %610

541:                                              ; preds = %536
  %542 = load i16, ptr %97, align 4
  %543 = and i16 %542, 16384
  %544 = icmp eq i16 %543, 0
  br i1 %544, label %545, label %610, !prof !21

545:                                              ; preds = %541
  %546 = load i32, ptr %148, align 4
  %547 = load i32, ptr %130, align 8
  %548 = lshr i32 %547, 1
  %549 = add i32 %548, %546
  %550 = load i32, ptr %144, align 4
  %551 = sub i32 %549, %550
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %545
  %554 = getelementptr inbounds %struct.sk_buff, ptr %268, i32 0, i32 3, i32 12
  %555 = load i8, ptr %554, align 4
  %556 = or i8 %555, 8
  store i8 %556, ptr %554, align 4
  %557 = load i32, ptr %144, align 4
  store i32 %557, ptr %148, align 4
  call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %206, i32 noundef 4) #22
  br label %610

558:                                              ; preds = %545
  %559 = load ptr, ptr %137, align 4
  %560 = icmp eq ptr %559, %137
  %561 = select i1 %560, ptr null, ptr %559
  %562 = icmp eq ptr %268, %561
  br i1 %562, label %563, label %610

563:                                              ; preds = %558
  call void @tcp_push_one(ptr noundef %0, i32 noundef %206) #22
  br label %610

564:                                              ; preds = %505, %361, %330, %285, %253, %238, %228
  %565 = phi i32 [ %269, %505 ], [ %246, %253 ], [ %229, %238 ], [ %229, %228 ], [ %269, %285 ], [ %269, %361 ], [ %269, %330 ]
  %566 = load ptr, ptr %152, align 8
  %567 = getelementptr inbounds %struct.socket, ptr %566, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %567) #22
  %568 = icmp eq i32 %207, 0
  br i1 %568, label %570, label %569

569:                                              ; preds = %564
  call void @tcp_push(ptr noundef %0, i32 noundef %153, i32 noundef %206, i32 noundef 4, i32 noundef %208)
  br label %570

570:                                              ; preds = %569, %564
  %571 = call i32 @sk_stream_wait_memory(ptr noundef %0, ptr noundef nonnull %7) #22
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %677

573:                                              ; preds = %570
  %574 = call i32 @tcp_current_mss(ptr noundef %0) #22
  br i1 %128, label %575, label %610

575:                                              ; preds = %573
  %576 = load i32, ptr %129, align 4
  %577 = add i32 %576, -321
  %578 = load i32, ptr %130, align 8
  %579 = icmp ugt i32 %578, 536
  %580 = zext i1 %579 to i32
  %581 = lshr i32 %578, %580
  %582 = icmp ne i32 %581, 0
  %583 = icmp slt i32 %581, %577
  %584 = and i1 %582, %583
  br i1 %584, label %585, label %590

585:                                              ; preds = %575
  %586 = load i16, ptr %131, align 8
  %587 = zext i16 %586 to i32
  %588 = sub nsw i32 68, %587
  %589 = call i32 @llvm.smax.i32(i32 %581, i32 %588) #22
  br label %590

590:                                              ; preds = %585, %575
  %591 = phi i32 [ %589, %585 ], [ %577, %575 ]
  %592 = load i16, ptr %132, align 2
  %593 = zext i16 %592 to i32
  %594 = mul i32 %574, %593
  %595 = icmp ult i32 %591, %594
  %596 = add i32 %594, %574
  %597 = icmp uge i32 %591, %596
  %598 = or i1 %595, %597
  br i1 %598, label %599, label %607, !prof !28

599:                                              ; preds = %590
  %600 = udiv i32 %591, %574
  %601 = load i16, ptr %133, align 2
  %602 = and i32 %600, 65535
  %603 = zext i16 %601 to i32
  %604 = call i32 @llvm.umin.i32(i32 %602, i32 %603) #22
  %605 = trunc i32 %604 to i16
  store i16 %605, ptr %132, align 2
  %606 = mul i32 %604, %574
  br label %607

607:                                              ; preds = %599, %590
  %608 = phi i32 [ %606, %599 ], [ %594, %590 ]
  %609 = call i32 @llvm.umax.i32(i32 %608, i32 %574) #22
  br label %610

610:                                              ; preds = %607, %573, %563, %558, %553, %541, %536
  %611 = phi i32 [ %574, %573 ], [ %609, %607 ], [ %208, %536 ], [ %208, %541 ], [ %208, %558 ], [ %208, %563 ], [ %208, %553 ]
  %612 = phi i32 [ %207, %573 ], [ %207, %607 ], [ %526, %536 ], [ %526, %541 ], [ %526, %558 ], [ %526, %563 ], [ %526, %553 ]
  %613 = phi i32 [ %574, %573 ], [ %574, %607 ], [ %206, %536 ], [ %206, %541 ], [ %206, %558 ], [ %206, %563 ], [ %206, %553 ]
  %614 = phi i32 [ %565, %573 ], [ %565, %607 ], [ %269, %536 ], [ %269, %541 ], [ %269, %558 ], [ %269, %563 ], [ %269, %553 ]
  %615 = load i32, ptr %136, align 8
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %204

617:                                              ; preds = %677, %610, %532, %529, %201
  %618 = phi i32 [ %678, %677 ], [ %208, %532 ], [ %208, %529 ], [ %611, %610 ], [ %194, %201 ]
  %619 = phi i32 [ %680, %677 ], [ %526, %532 ], [ %526, %529 ], [ %612, %610 ], [ %156, %201 ]
  %620 = phi i32 [ %681, %677 ], [ %206, %532 ], [ %206, %529 ], [ %613, %610 ], [ %157, %201 ]
  %621 = icmp eq i32 %619, 0
  br i1 %621, label %669, label %622

622:                                              ; preds = %617
  %623 = getelementptr inbounds %struct.sockcm_cookie, ptr %5, i32 0, i32 2
  %624 = load i16, ptr %623, align 4
  %625 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %626 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %627 = load volatile ptr, ptr %626, align 4
  %628 = icmp eq ptr %627, %625
  %629 = select i1 %628, ptr null, ptr %627
  %630 = zext i16 %624 to i32
  %631 = icmp ne i16 %624, 0
  %632 = icmp ne ptr %629, null
  %633 = select i1 %631, i1 %632, i1 false
  br i1 %633, label %634, label %663

634:                                              ; preds = %622
  %635 = getelementptr inbounds %struct.sk_buff, ptr %629, i32 0, i32 15
  %636 = load ptr, ptr %635, align 4
  %637 = getelementptr inbounds %struct.sk_buff, ptr %629, i32 0, i32 3
  %638 = getelementptr inbounds %struct.skb_shared_info, ptr %636, i32 0, i32 3
  call void @__sock_tx_timestamp(i16 noundef zeroext %624, ptr noundef %638) #22
  %639 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %640 = load volatile i32, ptr %639, align 4
  %641 = and i32 %640, 524288
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %646, label %643, !prof !21

643:                                              ; preds = %634
  %644 = load i8, ptr %638, align 1
  %645 = or i8 %644, 16
  store i8 %645, ptr %638, align 1
  br label %646

646:                                              ; preds = %643, %634
  %647 = and i32 %630, 512
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %653, label %649

649:                                              ; preds = %646
  %650 = getelementptr inbounds %struct.sk_buff, ptr %629, i32 0, i32 3, i32 15
  %651 = load i8, ptr %650, align 1
  %652 = or i8 %651, 1
  store i8 %652, ptr %650, align 1
  br label %653

653:                                              ; preds = %649, %646
  %654 = and i32 %630, 771
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %663, label %656

656:                                              ; preds = %653
  %657 = load i32, ptr %637, align 8
  %658 = getelementptr inbounds %struct.sk_buff, ptr %629, i32 0, i32 5
  %659 = load i32, ptr %658, align 8
  %660 = add i32 %657, -1
  %661 = add i32 %660, %659
  %662 = getelementptr inbounds %struct.skb_shared_info, ptr %636, i32 0, i32 9
  store i32 %661, ptr %662, align 4
  br label %663

663:                                              ; preds = %656, %653, %622
  %664 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %665 = load i16, ptr %664, align 4
  %666 = lshr i16 %665, 8
  %667 = and i16 %666, 15
  %668 = zext i16 %667 to i32
  call void @tcp_push(ptr noundef %0, i32 noundef %9, i32 noundef %620, i32 noundef %668, i32 noundef %618)
  br label %669

669:                                              ; preds = %663, %617, %104, %63
  %670 = phi i32 [ %72, %104 ], [ %72, %663 ], [ %72, %617 ], [ %66, %63 ]
  %671 = phi i32 [ %105, %104 ], [ %619, %663 ], [ 0, %617 ], [ 0, %63 ]
  %672 = icmp eq ptr %50, null
  br i1 %672, label %675, label %673

673:                                              ; preds = %669
  %674 = load ptr, ptr %50, align 4
  call void %674(ptr noundef null, ptr noundef nonnull %50, i1 noundef zeroext true) #22
  br label %675

675:                                              ; preds = %673, %669
  %676 = add i32 %670, %671
  br label %709

677:                                              ; preds = %570, %510, %417, %408, %391, %197, %193, %93
  %678 = phi i32 [ 0, %93 ], [ %208, %417 ], [ %208, %408 ], [ %208, %391 ], [ %208, %510 ], [ %208, %570 ], [ %194, %197 ], [ %194, %193 ]
  %679 = phi i32 [ %94, %93 ], [ -14, %417 ], [ -14, %408 ], [ -14, %391 ], [ %571, %570 ], [ %509, %510 ], [ -32, %197 ], [ -32, %193 ]
  %680 = phi i32 [ 0, %93 ], [ %207, %417 ], [ %207, %408 ], [ %207, %391 ], [ %207, %510 ], [ %207, %570 ], [ %156, %197 ], [ %156, %193 ]
  %681 = phi i32 [ 0, %93 ], [ %206, %417 ], [ %206, %408 ], [ %206, %391 ], [ %206, %510 ], [ %206, %570 ], [ %157, %197 ], [ %157, %193 ]
  call void @tcp_remove_empty_skb(ptr noundef %0)
  %682 = sub i32 0, %72
  %683 = icmp eq i32 %680, %682
  br i1 %683, label %684, label %617

684:                                              ; preds = %677, %114, %101, %69
  %685 = phi i32 [ %679, %677 ], [ %64, %69 ], [ -22, %101 ], [ -22, %114 ]
  %686 = icmp eq ptr %50, null
  br i1 %686, label %692, label %687

687:                                              ; preds = %684
  %688 = load ptr, ptr %50, align 4
  %689 = icmp eq ptr %688, @msg_zerocopy_callback
  br i1 %689, label %690, label %691

690:                                              ; preds = %687
  call void @msg_zerocopy_put_abort(ptr noundef nonnull %50, i1 noundef zeroext true) #22
  br label %692

691:                                              ; preds = %687
  call void %688(ptr noundef null, ptr noundef nonnull %50, i1 noundef zeroext true) #22
  br label %692

692:                                              ; preds = %691, %690, %684, %35
  %693 = phi i32 [ %685, %684 ], [ %685, %690 ], [ %685, %691 ], [ -105, %35 ]
  %694 = call i32 @sk_stream_error(ptr noundef %0, i32 noundef %9, i32 noundef %693) #22
  %695 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %696 = load volatile ptr, ptr %695, align 8
  %697 = icmp eq ptr %696, null
  br i1 %697, label %698, label %709

698:                                              ; preds = %692
  %699 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %700 = load i32, ptr %699, align 4
  %701 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %702 = load i32, ptr %701, align 4
  %703 = icmp eq i32 %700, %702
  %704 = icmp eq i32 %694, -11
  %705 = select i1 %703, i1 %704, i1 false
  br i1 %705, label %706, label %709, !prof !28

706:                                              ; preds = %698
  %707 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 77
  %708 = load ptr, ptr %707, align 4
  call void %708(ptr noundef %0) #22
  call void @tcp_chrono_stop(ptr noundef %0, i32 noundef 3) #22
  br label %709

709:                                              ; preds = %706, %698, %692, %675
  %710 = phi i32 [ %676, %675 ], [ -11, %706 ], [ %694, %698 ], [ %694, %692 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  ret i32 %710
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msg_zerocopy_realloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_sendmsg_fastopen(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8
  %7 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %6, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i16, ptr %6, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %16, %12, %10
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 115
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !21

28:                                               ; preds = %23
  %29 = and i32 %25, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 1, i32 2
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i32 [ 0, %23 ], [ %31, %28 ]
  %34 = or i32 %25, 256
  %35 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %33, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef %34, i32 noundef 40) #23
  store ptr %37, ptr %20, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %74, label %39, !prof !28

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %37, i32 0, i32 1
  store ptr %1, ptr %40, align 8
  %41 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %37, i32 0, i32 2
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %37, i32 0, i32 4
  store ptr %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %44 = load i16, ptr %43, align 8
  %45 = and i16 %44, 1024
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = tail call i32 @tcp_connect(ptr noundef %0) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  %51 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 0, ptr %52, align 8
  br label %53

53:                                               ; preds = %50, %47, %39
  %54 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 5
  %57 = and i32 %56, 2048
  %58 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @__inet_stream_connect(ptr noundef %59, ptr noundef %6, i32 noundef %61, i32 noundef %57, i32 noundef 1) #22
  %63 = load ptr, ptr %20, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %63, i32 0, i32 3
  %67 = load i32, ptr %66, align 8
  store i32 %67, ptr %2, align 4
  %68 = load ptr, ptr %20, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void @kfree(ptr noundef nonnull %68) #22
  store ptr null, ptr %20, align 4
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i16, ptr %43, align 8
  %73 = and i16 %72, -1025
  store i16 %73, ptr %43, align 8
  br label %74

74:                                               ; preds = %71, %53, %32, %19, %16, %5
  %75 = phi i32 [ -95, %16 ], [ -95, %5 ], [ -114, %19 ], [ -105, %32 ], [ %62, %71 ], [ %62, %53 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_send_rcvq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_cmsg_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_iter_stream(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %4 = tail call i32 @tcp_sendmsg_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call void @release_sock(ptr noundef %0) #22
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18, !prof !28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef %12, i32 noundef %17) #22
  br label %18

18:                                               ; preds = %15, %8, %2
  %19 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = sub i32 %25, %27
  %29 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %76, label %33

33:                                               ; preds = %23
  %34 = icmp sgt i32 %1, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %33
  %36 = zext i8 %20 to i32
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = and i32 %36, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %44 = load i8, ptr %43, align 2
  %45 = icmp ugt i8 %44, 2
  br i1 %45, label %52, label %46

46:                                               ; preds = %42, %35
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %76, label %52

50:                                               ; preds = %18
  %51 = icmp slt i32 %1, 1
  br i1 %51, label %77, label %52

52:                                               ; preds = %50, %46, %42, %39
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %54 = load i8, ptr %53, align 2
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, %59
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %64 = load i32, ptr %63, align 8
  %65 = sub i32 %62, %64
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #22
  %67 = shl nuw i32 %66, 1
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %69 = load i32, ptr %68, align 8
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %57
  %72 = tail call i32 @__tcp_select_window(ptr noundef %0) #22
  %73 = icmp ne i32 %72, 0
  %74 = icmp uge i32 %72, %67
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %46, %23
  tail call void @tcp_send_ack(ptr noundef %0) #22
  br label %77

77:                                               ; preds = %76, %71, %57, %52, %50, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tcp_select_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sk_defer_free_flush(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !10
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %2) #22, !srcloc !17
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = inttoptr i32 %4 to ptr
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %10, %8 ], [ %7, %6 ]
  %10 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %10) #22, !srcloc !33
  store ptr null, ptr %9, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_read_sock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !35
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %121, label %10

10:                                               ; preds = %3
  %11 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store volatile i32 %6, ptr %5, align 4
  tail call void @tcp_rcv_space_adjust(ptr noundef %0) #22
  br label %121

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds %struct.read_descriptor_t, ptr %1, i32 0, i32 1
  br label %21

21:                                               ; preds = %109, %14
  %22 = phi ptr [ %11, %14 ], [ %112, %109 ]
  %23 = phi i32 [ 0, %14 ], [ %111, %109 ]
  %24 = phi i32 [ %6, %14 ], [ %110, %109 ]
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, %25
  br i1 %28, label %29, label %64

29:                                               ; preds = %21
  %30 = sub i32 %27, %25
  %31 = load i16, ptr %15, align 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33, !prof !21

33:                                               ; preds = %29
  %34 = load i32, ptr %16, align 4
  %35 = sub i32 %34, %24
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %30)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %115, label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %36, %33 ], [ %30, %29 ]
  %40 = tail call i32 %2(ptr noundef %1, ptr noundef nonnull %22, i32 noundef %25, i32 noundef %39) #22
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = icmp eq i32 %23, 0
  br i1 %43, label %114, label %115

44:                                               ; preds = %38
  %45 = icmp ugt i32 %40, %39
  %46 = load i1, ptr @tcp_read_sock.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !28

49:                                               ; preds = %44
  store i1 true, ptr @tcp_read_sock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1688, i32 noundef 9, ptr noundef null) #22
  br label %50

50:                                               ; preds = %49, %44
  %51 = tail call i32 @llvm.umin.i32(i32 %40, i32 %39)
  %52 = add i32 %51, %24
  %53 = add i32 %51, %23
  %54 = add i32 %51, %25
  store i32 %54, ptr %4, align 4
  %55 = add i32 %52, -1
  %56 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %55, ptr noundef nonnull %4)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %115, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %4, align 4
  %60 = add i32 %59, 1
  %61 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %58, %21
  %65 = phi i32 [ %24, %21 ], [ %52, %58 ]
  %66 = phi i32 [ %23, %21 ], [ %53, %58 ]
  %67 = phi ptr [ %22, %21 ], [ %56, %58 ]
  %68 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 3, i32 12
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = load i32, ptr %17, align 4
  %73 = add i32 %72, -1
  store volatile i32 %73, ptr %17, align 4
  %74 = load ptr, ptr %67, align 8
  %75 = getelementptr inbounds %struct.anon.43, ptr %67, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr null, ptr %75, align 4
  store ptr null, ptr %67, align 8
  %77 = getelementptr inbounds %struct.anon.43, ptr %74, i32 0, i32 1
  store volatile ptr %76, ptr %77, align 4
  store volatile ptr %74, ptr %76, align 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 4, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, @sock_rfree
  br i1 %71, label %94, label %81

81:                                               ; preds = %64
  br i1 %80, label %82, label %91, !prof !21

82:                                               ; preds = %81
  tail call void @sock_rfree(ptr noundef nonnull %67) #22
  store ptr null, ptr %78, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 1
  store ptr null, ptr %83, align 4
  %84 = load ptr, ptr %18, align 4
  %85 = icmp eq ptr %84, %18
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load volatile ptr, ptr %19, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86, %82
  %90 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %67, ptr noundef nonnull %67, ptr noundef %19) #22
  br label %92

91:                                               ; preds = %86, %81
  tail call void @__kfree_skb(ptr noundef nonnull %67) #22
  br label %92

92:                                               ; preds = %91, %89
  %93 = add i32 %65, 1
  br label %115

94:                                               ; preds = %64
  br i1 %80, label %95, label %104, !prof !21

95:                                               ; preds = %94
  tail call void @sock_rfree(ptr noundef nonnull %67) #22
  store ptr null, ptr %78, align 4
  %96 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 1
  store ptr null, ptr %96, align 4
  %97 = load ptr, ptr %18, align 4
  %98 = icmp eq ptr %97, %18
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load volatile ptr, ptr %19, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99, %95
  %103 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %67, ptr noundef nonnull %67, ptr noundef %19) #22
  br label %105

104:                                              ; preds = %99, %94
  tail call void @__kfree_skb(ptr noundef nonnull %67) #22
  br label %105

105:                                              ; preds = %104, %102
  %106 = load i32, ptr %20, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  store volatile i32 %65, ptr %5, align 4
  br label %109

109:                                              ; preds = %108, %58
  %110 = phi i32 [ %65, %108 ], [ %52, %58 ]
  %111 = phi i32 [ %66, %108 ], [ %53, %58 ]
  %112 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %110, ptr noundef nonnull %4)
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %21

114:                                              ; preds = %42
  store volatile i32 %24, ptr %5, align 4
  tail call void @tcp_rcv_space_adjust(ptr noundef %0) #22
  br label %121

115:                                              ; preds = %109, %105, %92, %50, %42, %33
  %116 = phi i32 [ %93, %92 ], [ %24, %42 ], [ %24, %33 ], [ %65, %105 ], [ %110, %109 ], [ %52, %50 ]
  %117 = phi i32 [ %66, %92 ], [ %23, %42 ], [ %23, %33 ], [ %66, %105 ], [ %111, %109 ], [ %53, %50 ]
  store volatile i32 %116, ptr %5, align 4
  tail call void @tcp_rcv_space_adjust(ptr noundef %0) #22
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %116, ptr noundef nonnull %4)
  tail call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %117)
  br label %121

121:                                              ; preds = %119, %115, %114, %13, %3
  %122 = phi i32 [ -107, %3 ], [ %117, %119 ], [ %117, %115 ], [ %40, %114 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  br label %12

12:                                               ; preds = %57, %9
  %13 = phi ptr [ %5, %9 ], [ %58, %57 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %1, %15
  %17 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 12
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21, !prof !21

21:                                               ; preds = %12
  %22 = load i1, ptr @tcp_recv_skb.__already_done, align 1
  br i1 %22, label %25, label %23, !prof !21

23:                                               ; preds = %21
  store i1 true, ptr @tcp_recv_skb.__already_done, align 1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.tcp_recv_skb) #24
  br label %25

25:                                               ; preds = %23, %21
  %26 = add i32 %16, -1
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i32 [ %26, %25 ], [ %16, %12 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i8, ptr %17, align 4
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %27
  store i32 %28, ptr %2, align 4
  br label %62

37:                                               ; preds = %32
  %38 = load i32, ptr %10, align 4
  %39 = add i32 %38, -1
  store volatile i32 %39, ptr %10, align 4
  %40 = load ptr, ptr %13, align 8
  %41 = getelementptr inbounds %struct.anon.43, ptr %13, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr null, ptr %41, align 4
  store ptr null, ptr %13, align 8
  %43 = getelementptr inbounds %struct.anon.43, ptr %40, i32 0, i32 1
  store volatile ptr %42, ptr %43, align 4
  store volatile ptr %40, ptr %42, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 4, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, @sock_rfree
  br i1 %46, label %47, label %56, !prof !21

47:                                               ; preds = %37
  tail call void @sock_rfree(ptr noundef nonnull %13) #22
  store ptr null, ptr %44, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 1
  store ptr null, ptr %48, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = icmp eq ptr %49, %4
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load volatile ptr, ptr %11, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %47
  %55 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %11) #22
  br label %57

56:                                               ; preds = %51, %37
  tail call void @__kfree_skb(ptr noundef nonnull %13) #22
  br label %57

57:                                               ; preds = %56, %54
  %58 = load ptr, ptr %4, align 4
  %59 = icmp eq ptr %58, %4
  %60 = icmp eq ptr %58, null
  %61 = or i1 %59, %60
  br i1 %61, label %62, label %12

62:                                               ; preds = %57, %36, %3
  %63 = phi ptr [ %13, %36 ], [ null, %3 ], [ null, %57 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rcv_space_adjust(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_peek_len(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, 12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 55
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 103
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = sub i32 %21, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26, %19, %15, %10
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 7
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = sub i32 %33, %35
  %39 = load volatile i32, ptr %11, align 4
  %40 = shl i32 %39, 30
  %41 = ashr i32 %40, 31
  %42 = add i32 %38, %41
  br label %43

43:                                               ; preds = %37, %31, %26, %1
  %44 = phi i32 [ 0, %31 ], [ 0, %1 ], [ %42, %37 ], [ %24, %26 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_set_rcvlowat(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %8 = select i1 %6, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), ptr %7
  %9 = load i32, ptr %8, align 4
  %10 = ashr i32 %9, 1
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 %11
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 6
  store volatile i32 %13, ptr %14, align 4
  tail call void @tcp_data_ready(ptr noundef %0) #22
  %15 = load i8, ptr %3, align 8
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = shl i32 %11, 1
  %20 = load i32, ptr %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  store volatile i32 %19, ptr %7, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %24 = icmp slt i32 %23, 1
  %25 = sub i32 0, %23
  %26 = ashr i32 %19, %25
  %27 = ashr i32 %19, %23
  %28 = sub i32 %19, %27
  %29 = select i1 %24, i32 %26, i32 %28
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 %29, ptr %30, align 8
  br label %31

31:                                               ; preds = %22, %18, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_data_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_update_recv_tstamps(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %6) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %11

9:                                                ; preds = %2
  store i64 0, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i32 8
  store i32 0, ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 7
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 2
  br i1 %16, label %19, label %18

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %15) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %21

19:                                               ; preds = %11
  store i64 0, ptr %17, align 8
  %20 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 2, i32 1
  store i32 0, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_mmap(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #4 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = and i32 %5, -268435553
  %10 = or i32 %9, 268435456
  store i32 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  store ptr @tcp_vm_ops, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 0, %8 ], [ -1, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_recv_timestamp(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__kernel_timespec, align 8
  %5 = alloca %struct.__kernel_old_timespec, align 8
  %6 = alloca %struct.__kernel_sock_timeval, align 8
  %7 = alloca %struct.__kernel_old_timeval, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 67108864
  %11 = icmp eq i32 %10, 0
  %12 = load i64, ptr %2, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %14, %3
  %19 = load volatile i32, ptr %8, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %8, align 4
  %24 = and i32 %23, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  br i1 %11, label %33, label %27

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  store i64 %12, ptr %4, align 8
  %28 = getelementptr inbounds %struct.__kernel_timespec, ptr %4, i32 0, i32 1
  %29 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = sext i32 %30 to i64
  store i64 %31, ptr %28, align 8
  %32 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 64, i32 noundef 16, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %54

33:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %34 = trunc i64 %12 to i32
  store i32 %34, ptr %5, align 8
  %35 = getelementptr inbounds %struct.__kernel_old_timespec, ptr %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  store i32 %37, ptr %35, align 4
  %38 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 35, i32 noundef 8, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %54

39:                                               ; preds = %22
  br i1 %11, label %47, label %40

40:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  store i64 %12, ptr %6, align 8
  %41 = getelementptr inbounds %struct.__kernel_sock_timeval, ptr %6, i32 0, i32 1
  %42 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = sdiv i32 %43, 1000
  %45 = sext i32 %44 to i64
  store i64 %45, ptr %41, align 8
  %46 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 63, i32 noundef 16, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %54

47:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %48 = trunc i64 %12 to i32
  store i32 %48, ptr %7, align 8
  %49 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %7, i32 0, i32 1
  %50 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = sdiv i32 %51, 1000
  store i32 %52, ptr %49, align 4
  %53 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 29, i32 noundef 8, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %54

54:                                               ; preds = %47, %40, %33, %27, %18
  %55 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 16
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  store i64 0, ptr %2, align 8
  %60 = getelementptr inbounds i8, ptr %2, i32 8
  store i32 0, ptr %60, align 8
  br label %61

61:                                               ; preds = %59, %54, %14
  %62 = phi i1 [ false, %59 ], [ false, %14 ], [ true, %54 ]
  %63 = getelementptr [3 x %struct.timespec64], ptr %2, i32 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr [3 x %struct.timespec64], ptr %2, i32 0, i32 2, i32 1
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66, %61
  %71 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 64
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  store i64 0, ptr %63, align 8
  %76 = getelementptr [3 x %struct.timespec64], ptr %2, i32 0, i32 2, i32 1
  store i32 0, ptr %76, align 8
  br label %77

77:                                               ; preds = %75, %66
  br i1 %62, label %78, label %86

78:                                               ; preds = %77, %70
  %79 = getelementptr [3 x %struct.timespec64], ptr %2, i32 0, i32 1
  store i64 0, ptr %79, align 8
  %80 = getelementptr [3 x %struct.timespec64], ptr %2, i32 0, i32 1, i32 1
  store i32 0, ptr %80, align 8
  %81 = load volatile i32, ptr %8, align 4
  %82 = and i32 %81, 67108864
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  call void @put_cmsg_scm_timestamping64(ptr noundef %0, ptr noundef %2) #22
  br label %86

85:                                               ; preds = %78
  call void @put_cmsg_scm_timestamping(ptr noundef %0, ptr noundef %2) #22
  br label %86

86:                                               ; preds = %85, %84, %77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_cmsg_scm_timestamping64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_cmsg_scm_timestamping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scm_timestamping_internal, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false), !annotation !35
  %10 = and i32 %4, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !21

12:                                               ; preds = %6
  %13 = tail call i32 @inet_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #22
  br label %101

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 13
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #22
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49, !prof !21

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %33 = load volatile i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %37 = load volatile i32, ptr %36, align 8
  %38 = icmp ugt i32 %37, 16
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = icmp eq i32 %3, 0
  %41 = select i1 %40, ptr @sk_busy_loop_end, ptr null
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 56
  %43 = load volatile i8, ptr %42, align 8
  %44 = icmp ne i8 %43, 0
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 57
  %46 = load volatile i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  %48 = select i1 %47, i16 8, i16 %46
  tail call void @napi_busy_loop(i32 noundef %37, ptr noundef %41, ptr noundef %0, i1 noundef zeroext %44, i16 noundef zeroext %48) #22
  br label %49

49:                                               ; preds = %39, %35, %31, %27, %23, %18, %14
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %50 = call fastcc i32 @tcp_recvmsg_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %7)
  tail call void @release_sock(ptr noundef %0) #22
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #22, !srcloc !10
  %55 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %51) #22, !srcloc !17
  %56 = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = inttoptr i32 %56 to ptr
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi ptr [ %62, %60 ], [ %59, %58 ]
  %62 = load ptr, ptr %61, align 8
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %62) #22, !srcloc !33
  store ptr null, ptr %61, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %61) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %60

64:                                               ; preds = %60, %54, %49
  %65 = load i32, ptr %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = icmp sgt i32 %50, -1
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  %70 = and i32 %65, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @tcp_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9)
  br label %73

73:                                               ; preds = %72, %69
  %74 = and i32 %65, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %78 = load volatile i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %80 = load volatile i32, ptr %79, align 8
  %81 = sub i32 %80, %78
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %86, label %83, !prof !28

83:                                               ; preds = %76
  %84 = load volatile i32, ptr %77, align 4
  %85 = icmp eq i32 %78, %84
  br i1 %85, label %90, label %86, !prof !21

86:                                               ; preds = %83, %76
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %87 = load i32, ptr %79, align 8
  %88 = load i32, ptr %77, align 4
  %89 = sub i32 %87, %88
  call void @release_sock(ptr noundef %0) #22
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %89, %86 ], [ %81, %83 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %95 = load volatile i32, ptr %94, align 4
  %96 = lshr i32 %95, 1
  %97 = and i32 %96, 1
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i32 [ %91, %90 ], [ %97, %93 ]
  store i32 %99, ptr %8, align 4
  %100 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 6, i32 noundef 36, i32 noundef 4, ptr noundef nonnull %8) #22
  br label %101

101:                                              ; preds = %98, %73, %64, %12
  %102 = phi i32 [ %13, %12 ], [ %50, %73 ], [ %50, %98 ], [ %50, %64 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_recvmsg_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11)
  store i32 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 10
  br i1 %15, label %426, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 8192
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, ptr %6, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 62
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %26, %24 ], [ 0, %22 ]
  store i32 %28, ptr %12, align 4
  %29 = and i32 %4, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %375

31:                                               ; preds = %27
  %32 = load i16, ptr %17, align 4
  %33 = and i16 %32, 16384
  %34 = icmp eq i16 %33, 0
  %35 = and i32 %4, 2
  %36 = icmp eq i32 %35, 0
  br i1 %34, label %43, label %37, !prof !21

37:                                               ; preds = %31
  br i1 %36, label %426, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  %40 = load i8, ptr %39, align 2
  switch i8 %40, label %41 [
    i8 2, label %424
    i8 0, label %426
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  br label %45

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  br i1 %36, label %48, label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %11, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi ptr [ %46, %45 ], [ %44, %43 ]
  %50 = phi i1 [ false, %45 ], [ true, %43 ]
  %51 = phi ptr [ %11, %45 ], [ %44, %43 ]
  %52 = and i32 %4, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 6
  %56 = load volatile i32, ptr %55, align 4
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %2) #22
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i32 [ %57, %54 ], [ %2, %48 ]
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 1, i32 %59
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %64 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %65 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %66 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %67 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %68 = and i32 %4, 32
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %71 = getelementptr inbounds i8, ptr %5, i32 8
  %72 = getelementptr [3 x %struct.timespec64], ptr %5, i32 0, i32 2
  %73 = getelementptr [3 x %struct.timespec64], ptr %5, i32 0, i32 2, i32 1
  %74 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %75 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  %76 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %77 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %78 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  br label %79

79:                                               ; preds = %368, %58
  %80 = phi i32 [ 0, %58 ], [ %369, %368 ]
  %81 = phi i32 [ 0, %58 ], [ %370, %368 ]
  %82 = phi i32 [ %2, %58 ], [ %371, %368 ]
  %83 = load i16, ptr %62, align 4
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %106, label %85, !prof !21

85:                                               ; preds = %79
  %86 = load i32, ptr %63, align 4
  %87 = load i32, ptr %51, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = icmp eq i32 %81, 0
  br i1 %90, label %91, label %373

91:                                               ; preds = %89
  %92 = tail call ptr @llvm.thread.pointer() #22
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100, !prof !21

96:                                               ; preds = %91
  %97 = load volatile i32, ptr %92, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96, %91
  %101 = load i32, ptr %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %373, label %103

103:                                              ; preds = %100
  %104 = icmp eq i32 %101, 2147483647
  %105 = select i1 %104, i32 -512, i32 -4
  br label %373

106:                                              ; preds = %96, %85, %79
  %107 = load volatile ptr, ptr %65, align 4
  %108 = icmp eq ptr %107, %64
  %109 = select i1 %108, ptr null, ptr %107
  %110 = load ptr, ptr %64, align 8
  %111 = icmp eq ptr %110, %64
  br i1 %111, label %149, label %112

112:                                              ; preds = %146, %106
  %113 = phi ptr [ %147, %146 ], [ %110, %106 ]
  %114 = load i32, ptr %51, align 4
  %115 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 3
  %116 = load i32, ptr %115, align 8
  %117 = sub i32 %114, %116
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121, !prof !28

119:                                              ; preds = %112
  %120 = load i32, ptr %66, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2393, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %114, i32 noundef %116, i32 noundef %120, i32 noundef %4) #22
  br label %149

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 3, i32 12
  %123 = load i8, ptr %122, align 4
  %124 = and i8 %123, 2
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %132, label %126, !prof !21

126:                                              ; preds = %121
  %127 = load i1, ptr @tcp_recvmsg_locked.__already_done, align 1
  br i1 %127, label %130, label %128, !prof !21

128:                                              ; preds = %126
  store i1 true, ptr @tcp_recvmsg_locked.__already_done, align 1
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.tcp_recvmsg_locked) #24
  br label %130

130:                                              ; preds = %128, %126
  %131 = add nsw i32 %117, -1
  br label %132

132:                                              ; preds = %130, %121
  %133 = phi i32 [ %131, %130 ], [ %117, %121 ]
  %134 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = icmp ugt i32 %135, %133
  br i1 %136, label %237, label %137

137:                                              ; preds = %132
  %138 = load i8, ptr %122, align 4
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %344

141:                                              ; preds = %137
  br i1 %50, label %142, label %146, !prof !28

142:                                              ; preds = %141
  %143 = load i32, ptr %51, align 4
  %144 = load i32, ptr %115, align 8
  %145 = load i32, ptr %66, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2407, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %4) #22
  br label %146

146:                                              ; preds = %142, %141
  %147 = load ptr, ptr %113, align 8
  %148 = icmp eq ptr %147, %64
  br i1 %148, label %149, label %112

149:                                              ; preds = %146, %119, %106
  %150 = phi ptr [ %113, %119 ], [ %109, %106 ], [ %113, %146 ]
  %151 = icmp slt i32 %81, %61
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load volatile ptr, ptr %76, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %373, label %155

155:                                              ; preds = %152, %149
  %156 = icmp eq i32 %81, 0
  br i1 %156, label %179, label %157

157:                                              ; preds = %155
  %158 = load i32, ptr %12, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %373, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %77, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %373

163:                                              ; preds = %160
  %164 = load volatile i8, ptr %13, align 2
  %165 = icmp eq i8 %164, 7
  br i1 %165, label %373, label %166

166:                                              ; preds = %163
  %167 = load i8, ptr %78, align 2
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %373

170:                                              ; preds = %166
  %171 = tail call ptr @llvm.thread.pointer() #22
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 256
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %373, !prof !21

175:                                              ; preds = %170
  %176 = load volatile i32, ptr %171, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %212, label %373

179:                                              ; preds = %155
  %180 = load volatile i32, ptr %67, align 4
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %373

183:                                              ; preds = %179
  %184 = load i32, ptr %77, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #22, !srcloc !10
  %187 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %77) #22, !srcloc !17
  %188 = extractvalue { i32, i32 } %187, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !30
  %189 = sub i32 0, %188
  br label %373

190:                                              ; preds = %183
  %191 = load i8, ptr %78, align 2
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %373

194:                                              ; preds = %190
  %195 = load volatile i8, ptr %13, align 2
  %196 = icmp eq i8 %195, 7
  br i1 %196, label %373, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %12, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %373, label %200

200:                                              ; preds = %197
  %201 = tail call ptr @llvm.thread.pointer() #22
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %202, 256
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %209, !prof !21

205:                                              ; preds = %200
  %206 = load volatile i32, ptr %201, align 4
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205, %200
  %210 = icmp eq i32 %198, 2147483647
  %211 = select i1 %210, i32 -512, i32 -4
  br label %373

212:                                              ; preds = %205, %175
  br i1 %151, label %214, label %213

213:                                              ; preds = %212
  call void @__sk_flush_backlog(ptr noundef %0) #22
  br label %229

214:                                              ; preds = %212
  call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %81)
  %215 = load volatile ptr, ptr %75, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %227, label %217

217:                                              ; preds = %214
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #22, !srcloc !10
  %218 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %75) #22, !srcloc !17
  %219 = extractvalue { i32, i32 } %218, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  %222 = inttoptr i32 %219 to ptr
  br label %223

223:                                              ; preds = %223, %221
  %224 = phi ptr [ %225, %223 ], [ %222, %221 ]
  %225 = load ptr, ptr %224, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %225) #22, !srcloc !33
  store ptr null, ptr %224, align 8
  call void @__kfree_skb(ptr noundef nonnull %224) #22
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %223

227:                                              ; preds = %223, %217, %214
  %228 = call i32 @sk_wait_data(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %150) #22
  br label %229

229:                                              ; preds = %227, %213
  br i1 %50, label %368, label %230

230:                                              ; preds = %229
  %231 = load i32, ptr %11, align 4
  %232 = add i32 %81, %80
  %233 = sub i32 %231, %232
  %234 = load i32, ptr %49, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %368, label %236

236:                                              ; preds = %230
  store i32 %234, ptr %11, align 4
  br label %368

237:                                              ; preds = %132
  %238 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 5
  %239 = sub i32 %135, %133
  %240 = call i32 @llvm.umin.i32(i32 %82, i32 %239)
  %241 = load i16, ptr %62, align 4
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %260, label %243, !prof !21

243:                                              ; preds = %237
  %244 = load i32, ptr %63, align 4
  %245 = load i32, ptr %51, align 4
  %246 = sub i32 %244, %245
  %247 = icmp ult i32 %246, %240
  br i1 %247, label %248, label %260

248:                                              ; preds = %243
  %249 = icmp eq i32 %246, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %248
  %251 = load volatile i32, ptr %67, align 4
  %252 = and i32 %251, 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = add i32 %245, 1
  store volatile i32 %255, ptr %51, align 4
  %256 = add i32 %80, 1
  %257 = add nuw i32 %133, 1
  %258 = add i32 %240, -1
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %277, label %260

260:                                              ; preds = %254, %250, %248, %243, %237
  %261 = phi i32 [ %240, %237 ], [ %240, %250 ], [ %258, %254 ], [ %240, %243 ], [ %246, %248 ]
  %262 = phi i32 [ %80, %237 ], [ %80, %250 ], [ %256, %254 ], [ %80, %243 ], [ %80, %248 ]
  %263 = phi i32 [ %133, %237 ], [ %133, %250 ], [ %257, %254 ], [ %133, %243 ], [ %133, %248 ]
  br i1 %69, label %264, label %270

264:                                              ; preds = %260
  %265 = call i32 @skb_copy_datagram_iter(ptr noundef %113, i32 noundef %263, ptr noundef %70, i32 noundef %261) #22
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = icmp eq i32 %81, 0
  %269 = select i1 %268, i32 -14, i32 %81
  br label %373

270:                                              ; preds = %264, %260
  %271 = load i32, ptr %51, align 4
  %272 = add i32 %271, %261
  store volatile i32 %272, ptr %51, align 4
  %273 = add i32 %261, %81
  %274 = sub i32 %82, %261
  call void @tcp_rcv_space_adjust(ptr noundef %0) #22
  %275 = load i16, ptr %62, align 4
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %288, label %277, !prof !21

277:                                              ; preds = %270, %254
  %278 = phi i32 [ %274, %270 ], [ %82, %254 ]
  %279 = phi i32 [ %273, %270 ], [ %81, %254 ]
  %280 = phi i32 [ %263, %270 ], [ %257, %254 ]
  %281 = phi i32 [ %262, %270 ], [ %256, %254 ]
  %282 = phi i32 [ %261, %270 ], [ 0, %254 ]
  %283 = load i32, ptr %63, align 4
  %284 = load i32, ptr %49, align 4
  %285 = sub i32 %283, %284
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  store volatile i16 0, ptr %62, align 4
  call fastcc void @tcp_fast_path_check(ptr noundef %0)
  br label %288

288:                                              ; preds = %287, %277, %270
  %289 = phi i32 [ %278, %287 ], [ %278, %277 ], [ %274, %270 ]
  %290 = phi i32 [ %279, %287 ], [ %279, %277 ], [ %273, %270 ]
  %291 = phi i32 [ %280, %287 ], [ %280, %277 ], [ %263, %270 ]
  %292 = phi i32 [ %281, %287 ], [ %281, %277 ], [ %262, %270 ]
  %293 = phi i32 [ %282, %287 ], [ %282, %277 ], [ %261, %270 ]
  %294 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 3, i32 15
  %295 = load i8, ptr %294, align 1
  %296 = and i8 %295, 4
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %315, label %298

298:                                              ; preds = %288
  %299 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 2
  %300 = load i64, ptr %299, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %9, i64 noundef %300) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  br label %304

303:                                              ; preds = %298
  store i64 0, ptr %5, align 8
  store i32 0, ptr %71, align 8
  br label %304

304:                                              ; preds = %303, %302
  %305 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 15
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.skb_shared_info, ptr %306, i32 0, i32 7
  %308 = load i64, ptr %307, align 8
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %10, i64 noundef %308) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 16, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %312

311:                                              ; preds = %304
  store i64 0, ptr %72, align 8
  store i32 0, ptr %73, align 8
  br label %312

312:                                              ; preds = %311, %310
  %313 = load i32, ptr %6, align 4
  %314 = or i32 %313, 2
  store i32 %314, ptr %6, align 4
  br label %315

315:                                              ; preds = %312, %288
  %316 = add i32 %291, %293
  %317 = load i32, ptr %238, align 8
  %318 = icmp ult i32 %316, %317
  br i1 %318, label %368, label %319

319:                                              ; preds = %315
  %320 = load i8, ptr %122, align 4
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %344

323:                                              ; preds = %319
  br i1 %50, label %324, label %368

324:                                              ; preds = %323
  %325 = load i32, ptr %74, align 4
  %326 = add i32 %325, -1
  store volatile i32 %326, ptr %74, align 4
  %327 = load ptr, ptr %113, align 8
  %328 = getelementptr inbounds %struct.anon.43, ptr %113, i32 0, i32 1
  %329 = load ptr, ptr %328, align 4
  store ptr null, ptr %328, align 4
  store ptr null, ptr %113, align 8
  %330 = getelementptr inbounds %struct.anon.43, ptr %327, i32 0, i32 1
  store volatile ptr %329, ptr %330, align 4
  store volatile ptr %327, ptr %329, align 8
  %331 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 4, i32 0, i32 1
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, @sock_rfree
  br i1 %333, label %334, label %343, !prof !21

334:                                              ; preds = %324
  call void @sock_rfree(ptr noundef %113) #22
  store ptr null, ptr %331, align 4
  %335 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 1
  store ptr null, ptr %335, align 4
  %336 = load ptr, ptr %64, align 4
  %337 = icmp eq ptr %336, %64
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = load volatile ptr, ptr %75, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %338, %334
  %342 = call zeroext i1 @llist_add_batch(ptr noundef %113, ptr noundef %113, ptr noundef %75) #22
  br label %368

343:                                              ; preds = %338, %324
  call void @__kfree_skb(ptr noundef %113) #22
  br label %368

344:                                              ; preds = %319, %137
  %345 = phi i32 [ %81, %137 ], [ %290, %319 ]
  %346 = load i32, ptr %51, align 4
  %347 = add i32 %346, 1
  store volatile i32 %347, ptr %51, align 4
  br i1 %50, label %348, label %373

348:                                              ; preds = %344
  %349 = load i32, ptr %74, align 4
  %350 = add i32 %349, -1
  store volatile i32 %350, ptr %74, align 4
  %351 = load ptr, ptr %113, align 8
  %352 = getelementptr inbounds %struct.anon.43, ptr %113, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  store ptr null, ptr %352, align 4
  store ptr null, ptr %113, align 8
  %354 = getelementptr inbounds %struct.anon.43, ptr %351, i32 0, i32 1
  store volatile ptr %353, ptr %354, align 4
  store volatile ptr %351, ptr %353, align 8
  %355 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 4, i32 0, i32 1
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, @sock_rfree
  br i1 %357, label %358, label %367, !prof !21

358:                                              ; preds = %348
  call void @sock_rfree(ptr noundef %113) #22
  store ptr null, ptr %355, align 4
  %359 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 1
  store ptr null, ptr %359, align 4
  %360 = load ptr, ptr %64, align 4
  %361 = icmp eq ptr %360, %64
  br i1 %361, label %362, label %365

362:                                              ; preds = %358
  %363 = load volatile ptr, ptr %75, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %362, %358
  %366 = call zeroext i1 @llist_add_batch(ptr noundef %113, ptr noundef %113, ptr noundef %75) #22
  br label %373

367:                                              ; preds = %362, %348
  call void @__kfree_skb(ptr noundef %113) #22
  br label %373

368:                                              ; preds = %343, %341, %323, %315, %236, %230, %229
  %369 = phi i32 [ %80, %236 ], [ %80, %230 ], [ %80, %229 ], [ %292, %315 ], [ %292, %323 ], [ %292, %341 ], [ %292, %343 ]
  %370 = phi i32 [ %81, %236 ], [ %81, %230 ], [ %81, %229 ], [ %290, %315 ], [ %290, %323 ], [ %290, %341 ], [ %290, %343 ]
  %371 = phi i32 [ %82, %236 ], [ %82, %230 ], [ %82, %229 ], [ %289, %315 ], [ %289, %323 ], [ %289, %341 ], [ %289, %343 ]
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %79

373:                                              ; preds = %368, %367, %365, %344, %267, %209, %197, %194, %190, %186, %179, %175, %170, %166, %163, %160, %157, %152, %103, %100, %89
  %374 = phi i32 [ %345, %367 ], [ %345, %365 ], [ %345, %344 ], [ -11, %100 ], [ %105, %103 ], [ %269, %267 ], [ %211, %209 ], [ %189, %186 ], [ %81, %170 ], [ %81, %89 ], [ %81, %152 ], [ %81, %175 ], [ %81, %166 ], [ %81, %163 ], [ %81, %160 ], [ %81, %157 ], [ 0, %179 ], [ 0, %190 ], [ -107, %194 ], [ -11, %197 ], [ %370, %368 ]
  call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %374)
  br label %426

375:                                              ; preds = %27
  %376 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %377 = load volatile i32, ptr %376, align 4
  %378 = and i32 %377, 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %426

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %382 = load i16, ptr %381, align 4
  switch i16 %382, label %383 [
    i16 0, label %426
    i16 1024, label %426
  ]

383:                                              ; preds = %380
  %384 = load volatile i8, ptr %13, align 2
  %385 = icmp eq i8 %384, 7
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load volatile i32, ptr %376, align 4
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %426, label %390

390:                                              ; preds = %386, %383
  %391 = and i16 %382, 256
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %415, label %393

393:                                              ; preds = %390
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  %394 = trunc i16 %382 to i8
  store i8 %394, ptr %8, align 1
  %395 = and i32 %4, 2
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %393
  store volatile i16 1024, ptr %381, align 4
  br label %398

398:                                              ; preds = %397, %393
  %399 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %400 = load i32, ptr %399, align 4
  %401 = or i32 %400, 1
  store i32 %401, ptr %399, align 4
  %402 = icmp sgt i32 %2, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = and i32 %4, 32
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %408, label %411

406:                                              ; preds = %398
  %407 = or i32 %400, 33
  store i32 %407, ptr %399, align 4
  br label %411

408:                                              ; preds = %403
  %409 = call fastcc i32 @memcpy_to_msg(ptr noundef %1, ptr noundef nonnull %8) #22
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %408, %406, %403
  %412 = phi i32 [ 1, %408 ], [ 1, %403 ], [ %2, %406 ]
  br label %413

413:                                              ; preds = %411, %408
  %414 = phi i32 [ %412, %411 ], [ -14, %408 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  br label %426

415:                                              ; preds = %390
  %416 = load volatile i8, ptr %13, align 2
  %417 = icmp eq i8 %416, 7
  br i1 %417, label %426, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %420 = load i8, ptr %419, align 2
  %421 = and i8 %420, 1
  %422 = icmp eq i8 %421, 0
  %423 = select i1 %422, i32 -11, i32 0
  br label %426

424:                                              ; preds = %38
  %425 = tail call fastcc i32 @tcp_peek_sndq(ptr noundef %0, ptr noundef %1)
  br label %426

426:                                              ; preds = %424, %418, %415, %413, %386, %380, %380, %375, %373, %38, %37, %7
  %427 = phi i32 [ %374, %373 ], [ -107, %7 ], [ %425, %424 ], [ -1, %37 ], [ -22, %38 ], [ %414, %413 ], [ -22, %380 ], [ -22, %380 ], [ -22, %375 ], [ -107, %386 ], [ 0, %415 ], [ %423, %418 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11)
  ret i32 %427
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_set_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 107
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load volatile i8, ptr %3, align 2
  br label %11

11:                                               ; preds = %9, %2
  switch i32 %1, label %52 [
    i32 1, label %12
    i32 7, label %26
  ]

12:                                               ; preds = %11
  %13 = icmp eq i8 %4, 1
  br i1 %13, label %66, label %14

14:                                               ; preds = %12
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %17 = getelementptr [16 x i32], ptr %16, i32 0, i32 9
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #16, !srcloc !14
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #22, !srcloc !15
  br label %66

26:                                               ; preds = %11
  switch i8 %4, label %39 [
    i8 8, label %27
    i8 1, label %27
  ]

27:                                               ; preds = %26, %26
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %29 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %30 = getelementptr [16 x i32], ptr %29, i32 0, i32 8
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #16, !srcloc !14
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #22, !srcloc !15
  br label %39

39:                                               ; preds = %27, %26
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.proto, ptr %41, i32 0, i32 21
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0) #22
  %44 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %49 = load i8, ptr %48, align 8
  %50 = icmp sgt i8 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @inet_put_port(ptr noundef %0) #22
  br label %52

52:                                               ; preds = %51, %47, %39, %11
  %53 = icmp eq i8 %4, 1
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %56 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %57 = getelementptr [16 x i32], ptr %56, i32 0, i32 9
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #16, !srcloc !14
  %62 = add i32 %61, %58
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, -1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #22, !srcloc !15
  br label %66

66:                                               ; preds = %54, %52, %14, %12
  tail call void @inet_sk_state_store(ptr noundef %0, i32 noundef %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_put_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_state_store(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_shutdown(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, 270
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = load volatile i8, ptr %6, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr [16 x i8], ptr @new_state, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef %18) #22
  %19 = and i32 %17, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call void @tcp_send_fin(ptr noundef %0) #22
  br label %22

22:                                               ; preds = %21, %12, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_fin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @tcp_orphan_count_sum() local_unnamed_addr #9 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %15

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %13, %4 ], [ %2, %0 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %0 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @tcp_orphan_count to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %6
  %13 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #25
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %4, label %15

15:                                               ; preds = %4, %0
  %16 = phi i32 [ 0, %0 ], [ %12, %4 ]
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_check_oom(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @tcp_orphan_cache, align 4
  %4 = shl i32 %3, %1
  %5 = load i32, ptr @sysctl_tcp_max_orphans, align 4
  %6 = icmp sgt i32 %4, %5
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4480
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = load volatile i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 33
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %10, %2
  br label %22

22:                                               ; preds = %21, %10
  %23 = phi i1 [ false, %21 ], [ true, %10 ]
  br i1 %6, label %24, label %29

24:                                               ; preds = %22
  %25 = tail call i32 @net_ratelimit() #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #24
  br label %29

29:                                               ; preds = %27, %24, %22
  br i1 %23, label %30, label %35

30:                                               ; preds = %29
  %31 = tail call i32 @net_ratelimit() #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #24
  br label %35

35:                                               ; preds = %33, %30, %29
  %36 = or i1 %6, %23
  ret i1 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tcp_close(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  store i8 3, ptr %3, align 2
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 10
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  %11 = icmp eq ptr %9, null
  %12 = or i1 %10, %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  br label %16

15:                                               ; preds = %2
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  tail call void @inet_csk_listen_stop(ptr noundef %0) #22
  br label %132

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %9, %13 ], [ %37, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %36, %16 ]
  %19 = load i32, ptr %14, align 4
  %20 = add i32 %19, -1
  store volatile i32 %20, ptr %14, align 4
  %21 = load ptr, ptr %17, align 8
  %22 = getelementptr inbounds %struct.anon.43, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr null, ptr %22, align 4
  store ptr null, ptr %17, align 8
  %24 = getelementptr inbounds %struct.anon.43, ptr %21, i32 0, i32 1
  store volatile ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %26 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %25, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 12
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 1
  %32 = sub nsw i8 0, %31
  %33 = sext i8 %32 to i32
  %34 = add i32 %27, %18
  %35 = sub i32 %34, %28
  %36 = add i32 %35, %33
  tail call void @__kfree_skb(ptr noundef nonnull %17) #22
  %37 = load ptr, ptr %8, align 4
  %38 = icmp eq ptr %37, %8
  %39 = icmp eq ptr %37, null
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %16

41:                                               ; preds = %16, %7
  %42 = phi i32 [ 0, %7 ], [ %36, %16 ]
  %43 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.proto, ptr %44, i32 0, i32 30
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %67, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54, !prof !21

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %58 = load volatile i32, ptr %57, align 4
  %59 = add i32 %56, %58
  %60 = sub i32 %52, %59
  %61 = tail call i32 @llvm.smax.i32(i32 %60, i32 0) #22
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i32 [ %61, %54 ], [ 0, %48 ]
  %64 = sub i32 %50, %63
  %65 = icmp sgt i32 %64, 4095
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %64) #22
  br label %67

67:                                               ; preds = %66, %62, %41
  %68 = load volatile i8, ptr %4, align 2
  %69 = icmp eq i8 %68, 7
  br i1 %69, label %132, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %72, 16384
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %80, label %75, !prof !21

75:                                               ; preds = %70
  %76 = load ptr, ptr %43, align 8
  %77 = getelementptr inbounds %struct.proto, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %0, i32 noundef 0) #22
  br label %131

80:                                               ; preds = %70
  %81 = icmp eq i32 %42, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %80
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %84 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %85 = getelementptr [126 x i32], ptr %84, i32 0, i32 51
  %86 = ptrtoint ptr %85 to i32
  %87 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %88 = inttoptr i32 %87 to ptr
  %89 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %88) #16, !srcloc !14
  %90 = add i32 %89, %86
  %91 = inttoptr i32 %90 to ptr
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #22, !srcloc !15
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  %94 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %95 = load i32, ptr %94, align 8
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef %95) #22
  br label %131

96:                                               ; preds = %80
  %97 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 48
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load ptr, ptr %43, align 8
  %107 = getelementptr inbounds %struct.proto, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 %108(ptr noundef %0, i32 noundef 0) #22
  %110 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %111 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %112 = getelementptr [126 x i32], ptr %111, i32 0, i32 50
  %113 = ptrtoint ptr %112 to i32
  %114 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %115 = inttoptr i32 %114 to ptr
  %116 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %115) #16, !srcloc !14
  %117 = add i32 %116, %113
  %118 = inttoptr i32 %117 to ptr
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %110) #22, !srcloc !15
  br label %131

121:                                              ; preds = %101, %96
  %122 = load volatile i8, ptr %4, align 2
  %123 = zext i8 %122 to i32
  %124 = getelementptr [16 x i8], ptr @new_state, i32 0, i32 %123
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 15
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef %127) #22
  %128 = and i32 %126, 128
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  tail call void @tcp_send_fin(ptr noundef %0) #22
  br label %131

131:                                              ; preds = %130, %121, %105, %82, %75
  tail call void @sk_stream_wait_close(ptr noundef %0, i32 noundef %1) #22
  br label %132

132:                                              ; preds = %131, %67, %15
  %133 = load volatile i8, ptr %4, align 2
  %134 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #22, !srcloc !10
  %135 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 1, ptr elementtype(i32) %134) #22, !srcloc !36
  %136 = extractvalue { i32, i32, i32 } %135, 0
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138, !prof !28

138:                                              ; preds = %132
  %139 = add i32 %136, 1
  %140 = or i32 %139, %136
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %144, label %142, !prof !21

142:                                              ; preds = %138, %132
  %143 = phi i32 [ 2, %132 ], [ 1, %138 ]
  tail call void @refcount_warn_saturate(ptr noundef %134, i32 noundef %143) #22
  br label %144

144:                                              ; preds = %142, %138
  %145 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %145) #22
  %146 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %147 = load i32, ptr %146, align 4
  %148 = or i32 %147, 1
  store i32 %148, ptr %146, align 4
  %149 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  store ptr null, ptr %149, align 8
  %150 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  store ptr null, ptr %150, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %145) #22
  %151 = tail call ptr @llvm.thread.pointer() #22
  %152 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 1
  %153 = load volatile i32, ptr %152, align 4
  %154 = add i32 %153, 512
  store volatile i32 %154, ptr %152, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %155 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %155) #22
  tail call void @__release_sock(ptr noundef %0) #22
  %156 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %157 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %158 = inttoptr i32 %157 to ptr
  %159 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %158) #16, !srcloc !14
  %160 = add i32 %159, ptrtoint (ptr @tcp_orphan_count to i32)
  %161 = inttoptr i32 %160 to ptr
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %156) #22, !srcloc !15
  %164 = icmp eq i8 %133, 7
  br i1 %164, label %168, label %165

165:                                              ; preds = %144
  %166 = load volatile i8, ptr %4, align 2
  %167 = icmp eq i8 %166, 7
  br i1 %167, label %279, label %168

168:                                              ; preds = %165, %144
  %169 = load volatile i8, ptr %4, align 2
  %170 = icmp eq i8 %169, 5
  br i1 %170, label %171, label %200

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 106
  %173 = load i32, ptr %172, align 8
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %171
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef 2592) #22
  %176 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %177 = getelementptr [126 x i32], ptr %176, i32 0, i32 54
  %178 = ptrtoint ptr %177 to i32
  %179 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %180 = inttoptr i32 %179 to ptr
  %181 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %180) #16, !srcloc !14
  %182 = add i32 %181, %178
  %183 = inttoptr i32 %182 to ptr
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, 1
  store i32 %185, ptr %183, align 4
  br label %200

186:                                              ; preds = %171
  %187 = icmp eq i32 %173, 0
  %188 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 62), align 4
  %189 = select i1 %187, i32 %188, i32 %173
  %190 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = shl i32 %191, 2
  %193 = ashr i32 %191, 1
  %194 = sub i32 %192, %193
  %195 = tail call i32 @llvm.smax.i32(i32 %189, i32 %194) #22
  %196 = icmp sgt i32 %195, 6000
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = add nsw i32 %195, -6000
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %198) #22
  br label %200

199:                                              ; preds = %186
  tail call void @tcp_time_wait(ptr noundef %0, i32 noundef 5, i32 noundef %195) #22
  br label %279

200:                                              ; preds = %197, %175, %168
  %201 = load volatile i8, ptr %4, align 2
  %202 = icmp eq i8 %201, 7
  br i1 %202, label %270, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr inbounds %struct.proto, ptr %205, i32 0, i32 30
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %228, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %213 = load i32, ptr %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %223, label %215, !prof !21

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %219 = load volatile i32, ptr %218, align 4
  %220 = add i32 %217, %219
  %221 = sub i32 %213, %220
  %222 = tail call i32 @llvm.smax.i32(i32 %221, i32 0) #22
  br label %223

223:                                              ; preds = %215, %209
  %224 = phi i32 [ %222, %215 ], [ 0, %209 ]
  %225 = sub i32 %211, %224
  %226 = icmp sgt i32 %225, 4095
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %225) #22
  br label %228

228:                                              ; preds = %227, %223, %203
  %229 = load volatile i32, ptr @tcp_orphan_cache, align 4
  %230 = load i32, ptr @sysctl_tcp_max_orphans, align 4
  %231 = icmp sgt i32 %229, %230
  %232 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %233 = load i32, ptr %232, align 4
  %234 = icmp ugt i32 %233, 4480
  br i1 %234, label %235, label %246

235:                                              ; preds = %228
  %236 = load ptr, ptr %204, align 8
  %237 = getelementptr inbounds %struct.proto, ptr %236, i32 0, i32 30
  %238 = load ptr, ptr %237, align 4
  %239 = load volatile i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.proto, ptr %236, i32 0, i32 33
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr i32, ptr %241, i32 2
  %243 = load i32, ptr %242, align 4
  %244 = icmp sgt i32 %239, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br i1 %231, label %247, label %254

246:                                              ; preds = %235, %228
  br i1 %231, label %247, label %270

247:                                              ; preds = %246, %245
  %248 = phi i1 [ false, %246 ], [ true, %245 ]
  %249 = tail call i32 @net_ratelimit() #22
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #24
  br label %253

253:                                              ; preds = %251, %247
  br i1 %248, label %254, label %259

254:                                              ; preds = %253, %245
  %255 = tail call i32 @net_ratelimit() #22
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #24
  br label %259

259:                                              ; preds = %257, %254, %253
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef 2592) #22
  %260 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %261 = getelementptr [126 x i32], ptr %260, i32 0, i32 52
  %262 = ptrtoint ptr %261 to i32
  %263 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %264 = inttoptr i32 %263 to ptr
  %265 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %264) #16, !srcloc !14
  %266 = add i32 %265, %262
  %267 = inttoptr i32 %266 to ptr
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, 1
  store i32 %269, ptr %267, align 4
  br label %270

270:                                              ; preds = %259, %246, %200
  %271 = load volatile i8, ptr %4, align 2
  %272 = icmp eq i8 %271, 7
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %275 = load ptr, ptr %274, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  tail call void @reqsk_fastopen_remove(ptr noundef %0, ptr noundef nonnull %275, i1 noundef zeroext false) #22
  br label %278

278:                                              ; preds = %277, %273
  tail call void @inet_csk_destroy_sock(ptr noundef %0) #22
  br label %279

279:                                              ; preds = %278, %270, %199, %165
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !38
  %280 = load i16, ptr %155, align 4
  %281 = add i16 %280, 1
  store i16 %281, ptr %155, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !39
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_listen_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_active_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stream_wait_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reset_keepalive_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_time_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reqsk_fastopen_remove(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_destroy_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_close(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  tail call void @__tcp_close(ptr noundef %0, i32 noundef %1)
  tail call void @release_sock(ptr noundef %0) #22
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #22, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #22, !srcloc !43
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !21

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #22
  br label %11

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  tail call void @sk_free(ptr noundef %0) #22
  br label %11

11:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_write_queue_purge(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @tcp_chrono_stop(ptr noundef %0, i32 noundef 1) #22
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %80, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  br label %14

14:                                               ; preds = %75, %7
  %15 = phi ptr [ %3, %7 ], [ %76, %75 ]
  %16 = load i32, ptr %8, align 4
  %17 = add i32 %16, -1
  store volatile i32 %17, ptr %8, align 4
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr inbounds %struct.anon.43, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr null, ptr %19, align 4
  store ptr null, ptr %15, align 8
  %21 = getelementptr inbounds %struct.anon.43, ptr %18, i32 0, i32 1
  store volatile ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %23, align 4
  store i32 0, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 18
  %25 = load i32, ptr %24, align 8
  %26 = load i32, ptr %9, align 4
  %27 = sub i32 %26, %25
  store volatile i32 %27, ptr %9, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = load i8, ptr %29, align 8
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %10, align 8
  %34 = getelementptr inbounds %struct.proto, ptr %33, i32 0, i32 30
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %32, label %37, label %53

37:                                               ; preds = %14
  br i1 %36, label %75, label %38

38:                                               ; preds = %37
  %39 = load i32, ptr %24, align 8
  %40 = load i32, ptr %11, align 4
  %41 = add i32 %40, %39
  store i32 %41, ptr %11, align 4
  %42 = load i32, ptr %12, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44, !prof !21

44:                                               ; preds = %38
  %45 = load volatile i32, ptr %13, align 4
  %46 = add i32 %27, %45
  %47 = sub i32 %42, %46
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0) #22
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32 [ %48, %44 ], [ 0, %38 ]
  %51 = sub i32 %41, %50
  %52 = icmp sgt i32 %51, 2097151
  br i1 %52, label %74, label %75, !prof !28

53:                                               ; preds = %14
  br i1 %36, label %75, label %54

54:                                               ; preds = %53
  %55 = ptrtoint ptr %29 to i32
  %56 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %57 = load ptr, ptr %56, align 8
  %58 = ptrtoint ptr %57 to i32
  %59 = load i32, ptr %11, align 4
  %60 = add i32 %55, 448
  %61 = sub i32 %60, %58
  %62 = add i32 %61, %59
  store i32 %62, ptr %11, align 4
  %63 = load i32, ptr %12, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65, !prof !21

65:                                               ; preds = %54
  %66 = load volatile i32, ptr %13, align 4
  %67 = add i32 %27, %66
  %68 = sub i32 %63, %67
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 0) #22
  br label %70

70:                                               ; preds = %65, %54
  %71 = phi i32 [ %69, %65 ], [ 0, %54 ]
  %72 = sub i32 %62, %71
  %73 = icmp sgt i32 %72, 2097151
  br i1 %73, label %74, label %75, !prof !28

74:                                               ; preds = %70, %49
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef 1048576) #22
  br label %75

75:                                               ; preds = %74, %70, %53, %49, %37
  tail call void @__kfree_skb(ptr noundef nonnull %15) #22
  %76 = load ptr, ptr %2, align 4
  %77 = icmp eq ptr %76, %2
  %78 = icmp eq ptr %76, null
  %79 = or i1 %77, %78
  br i1 %79, label %80, label %14

80:                                               ; preds = %75, %1
  %81 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %82 = tail call ptr @rb_first(ptr noundef %81) #22
  %83 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  store ptr null, ptr %83, align 8
  %84 = icmp eq ptr %82, null
  br i1 %84, label %149, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %87 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %89 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  br label %91

91:                                               ; preds = %147, %85
  %92 = phi ptr [ %82, %85 ], [ %93, %147 ]
  %93 = tail call ptr @rb_next(ptr noundef nonnull %92) #22
  %94 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 4
  %95 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %95, align 4
  store i32 0, ptr %94, align 8
  tail call void @rb_erase(ptr noundef nonnull %92, ptr noundef %81) #22
  %96 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 18
  %97 = load i32, ptr %96, align 8
  %98 = load i32, ptr %86, align 4
  %99 = sub i32 %98, %97
  store volatile i32 %99, ptr %86, align 4
  %100 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 15
  %101 = load ptr, ptr %100, align 4
  %102 = load i8, ptr %101, align 8
  %103 = and i8 %102, 4
  %104 = icmp eq i8 %103, 0
  %105 = load ptr, ptr %87, align 8
  %106 = getelementptr inbounds %struct.proto, ptr %105, i32 0, i32 30
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %104, label %109, label %125

109:                                              ; preds = %91
  br i1 %108, label %147, label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %96, align 8
  %112 = load i32, ptr %88, align 4
  %113 = add i32 %112, %111
  store i32 %113, ptr %88, align 4
  %114 = load i32, ptr %89, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116, !prof !21

116:                                              ; preds = %110
  %117 = load volatile i32, ptr %90, align 4
  %118 = add i32 %99, %117
  %119 = sub i32 %114, %118
  %120 = tail call i32 @llvm.smax.i32(i32 %119, i32 0) #22
  br label %121

121:                                              ; preds = %116, %110
  %122 = phi i32 [ %120, %116 ], [ 0, %110 ]
  %123 = sub i32 %113, %122
  %124 = icmp sgt i32 %123, 2097151
  br i1 %124, label %146, label %147, !prof !28

125:                                              ; preds = %91
  br i1 %108, label %147, label %126

126:                                              ; preds = %125
  %127 = ptrtoint ptr %101 to i32
  %128 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 16
  %129 = load ptr, ptr %128, align 8
  %130 = ptrtoint ptr %129 to i32
  %131 = load i32, ptr %88, align 4
  %132 = add i32 %127, 448
  %133 = sub i32 %132, %130
  %134 = add i32 %133, %131
  store i32 %134, ptr %88, align 4
  %135 = load i32, ptr %89, align 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137, !prof !21

137:                                              ; preds = %126
  %138 = load volatile i32, ptr %90, align 4
  %139 = add i32 %99, %138
  %140 = sub i32 %135, %139
  %141 = tail call i32 @llvm.smax.i32(i32 %140, i32 0) #22
  br label %142

142:                                              ; preds = %137, %126
  %143 = phi i32 [ %141, %137 ], [ 0, %126 ]
  %144 = sub i32 %134, %143
  %145 = icmp sgt i32 %144, 2097151
  br i1 %145, label %146, label %147, !prof !28

146:                                              ; preds = %142, %121
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef 1048576) #22
  br label %147

147:                                              ; preds = %146, %142, %125, %121, %109
  tail call void @__kfree_skb(ptr noundef nonnull %92) #22
  %148 = icmp eq ptr %93, null
  br i1 %148, label %149, label %91

149:                                              ; preds = %147, %80
  %150 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24
  store volatile ptr %150, ptr %150, align 4
  %151 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24, i32 1
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.proto, ptr %153, i32 0, i32 30
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %176, label %157

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %161 = load i32, ptr %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %171, label %163, !prof !21

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %167 = load volatile i32, ptr %166, align 4
  %168 = add i32 %165, %167
  %169 = sub i32 %161, %168
  %170 = tail call i32 @llvm.smax.i32(i32 %169, i32 0) #22
  br label %171

171:                                              ; preds = %163, %157
  %172 = phi i32 [ %170, %163 ], [ 0, %157 ]
  %173 = sub i32 %159, %172
  %174 = icmp sgt i32 %173, 4095
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %173) #22
  br label %176

176:                                              ; preds = %175, %171, %149
  %177 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  store ptr null, ptr %177, align 8
  %178 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  store ptr null, ptr %178, align 4
  %179 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  store i32 0, ptr %179, align 4
  %180 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  store i8 0, ptr %180, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_disconnect(ptr noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 7
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  %8 = icmp eq i8 %4, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @inet_csk_listen_stop(ptr noundef %0) #22
  br label %42

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 16384
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15, !prof !21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 103, ptr %16, align 4
  br label %42

17:                                               ; preds = %10
  %18 = shl nuw i32 1, %5
  %19 = and i32 %18, 314
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  %27 = and i32 %18, 2560
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %21, %17
  %31 = tail call ptr @llvm.thread.pointer() #22
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 65280
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 3264, i32 2592
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef %36) #22
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 104, ptr %37, align 4
  br label %42

38:                                               ; preds = %21
  %39 = icmp eq i8 %4, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 104, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %38, %30, %15, %9
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85
  %44 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %43) #22
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #22, !srcloc !10
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #22, !srcloc !43
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %52, !prof !28

51:                                               ; preds = %46
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 4) #22
  br label %52

52:                                               ; preds = %51, %46, %42
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %54 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %53) #22
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #22, !srcloc !10
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #22, !srcloc !43
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %62, !prof !28

61:                                               ; preds = %56
  tail call void @refcount_warn_saturate(ptr noundef %57, i32 noundef 4) #22
  br label %62

62:                                               ; preds = %61, %56, %52
  tail call void @inet_csk_clear_xmit_timers(ptr noundef %0) #22
  %63 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  %66 = icmp eq ptr %64, null
  %67 = or i1 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi ptr [ %64, %68 ], [ %78, %70 ]
  %72 = load i32, ptr %69, align 4
  %73 = add i32 %72, -1
  store volatile i32 %73, ptr %69, align 4
  %74 = load ptr, ptr %71, align 8
  %75 = getelementptr inbounds %struct.anon.43, ptr %71, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr null, ptr %75, align 4
  store ptr null, ptr %71, align 8
  %77 = getelementptr inbounds %struct.anon.43, ptr %74, i32 0, i32 1
  store volatile ptr %76, ptr %77, align 4
  store volatile ptr %74, ptr %76, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %71, i32 noundef 0) #22
  %78 = load ptr, ptr %63, align 4
  %79 = icmp eq ptr %78, %63
  %80 = icmp eq ptr %78, null
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %70

82:                                               ; preds = %70, %62
  %83 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  store volatile i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  store volatile i16 0, ptr %86, align 4
  tail call void @tcp_write_queue_purge(ptr noundef %0)
  tail call void @tcp_fastopen_active_disable_ofo_check(ptr noundef %0) #22
  %87 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %88 = tail call i32 @skb_rbtree_purge(ptr noundef %87) #22
  %89 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %91 = load i8, ptr %90, align 8
  %92 = and i8 %91, 64
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %98 = load i16, ptr %97, align 8
  %99 = icmp eq i16 %98, 10
  br i1 %99, label %100, label %112

100:                                              ; preds = %94
  %101 = load volatile i8, ptr %3, align 2
  %102 = zext i8 %101 to i32
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, -4161
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  br label %109

109:                                              ; preds = %106, %100
  %110 = phi ptr [ %108, %106 ], [ null, %100 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %110, i8 0, i32 16, i1 false) #22
  %111 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %111, i8 0, i32 16, i1 false) #22
  br label %112

112:                                              ; preds = %109, %94, %82
  %113 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  store i8 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, -3
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  store i32 0, ptr %117, align 8
  %118 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #22
  %119 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 110
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %124 = load i32, ptr %123, align 8
  %125 = add i32 %122, 2
  %126 = add i32 %125, %124
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 1, i32 %126
  store volatile i32 %128, ptr %121, align 4
  %129 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  store i8 0, ptr %129, align 1
  %130 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  store i8 0, ptr %130, align 1
  %131 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 26
  store i32 0, ptr %131, align 8
  %132 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  store i32 100, ptr %132, align 4
  %133 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 7
  store i32 20, ptr %133, align 8
  %134 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 8
  store i32 20, ptr %134, align 4
  %135 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 2147483647, ptr %135, align 4
  %136 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 10, ptr %136, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %137, align 4
  %138 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %138, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  store i32 0, ptr %139, align 8
  %140 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  store i32 0, ptr %140, align 4
  %141 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %142, i32 0, i32 17
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %112
  tail call void %144(ptr noundef %0) #22
  %147 = load ptr, ptr %141, align 4
  br label %148

148:                                              ; preds = %146, %112
  %149 = phi ptr [ %147, %146 ], [ %142, %112 ]
  %150 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(104) %150, i8 0, i32 104, i1 false)
  %151 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %152 = load i8, ptr %151, align 4
  %153 = and i8 %152, -33
  store i8 %153, ptr %151, align 4
  %154 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %149, i32 0, i32 2
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %148
  tail call void %155(ptr noundef %0, i8 noundef zeroext 0) #22
  %158 = load i8, ptr %151, align 4
  br label %159

159:                                              ; preds = %157, %148
  %160 = phi i8 [ %153, %148 ], [ %158, %157 ]
  %161 = and i8 %160, -32
  store i8 %161, ptr %151, align 4
  %162 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %163 = load i16, ptr %162, align 4
  %164 = and i16 %163, -33
  store i16 %164, ptr %162, align 4
  tail call void @tcp_clear_retrans(ptr noundef %0) #22
  %165 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  store i32 0, ptr %165, align 8
  %166 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %166, i8 0, i32 20, i1 false) #22
  %167 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  store i16 88, ptr %167, align 2
  %168 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %168, i8 0, i32 24, i1 false)
  %169 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %169, align 4
  %170 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %170, align 4
  %171 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %172 = load ptr, ptr %171, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !45
  store volatile ptr null, ptr %171, align 8
  tail call void @dst_release(ptr noundef %172) #22
  %173 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #22, !srcloc !10
  %174 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %173) #22, !srcloc !17
  %175 = extractvalue { i32, i32 } %174, 0
  %176 = inttoptr i32 %175 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !47
  tail call void @dst_release(ptr noundef %176) #22
  %177 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 117
  %178 = load ptr, ptr %177, align 4
  tail call void @kfree(ptr noundef %178) #22
  store ptr null, ptr %177, align 4
  %179 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 33
  store i8 0, ptr %179, align 2
  %180 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 11
  %181 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 4
  %182 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 101
  store i64 0, ptr %182, align 8
  %183 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  store i32 0, ptr %183, align 8
  %184 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  store i32 0, ptr %184, align 4
  %185 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  store i32 0, ptr %185, align 4
  %186 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  store i32 0, ptr %186, align 8
  %187 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  store i32 0, ptr %187, align 4
  %188 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  store i32 0, ptr %188, align 8
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 20
  store i32 0, ptr %189, align 4
  %190 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 74
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %181, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %180, i8 0, i64 28, i1 false)
  store i32 -1, ptr %190, align 4
  %191 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31
  store i64 0, ptr %191, align 8
  %192 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %193 = load i8, ptr %192, align 1
  %194 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 4
  store i8 1, ptr %194, align 4
  %195 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 3
  store i32 0, ptr %195, align 8
  %196 = and i8 %193, -128
  store i8 %196, ptr %192, align 1
  %197 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %198 = load i8, ptr %197, align 1
  %199 = and i8 %198, -65
  store i8 %199, ptr %197, align 1
  %200 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %201 = load i24, ptr %200, align 4
  %202 = and i24 %201, -6
  store i24 %202, ptr %200, align 4
  %203 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  store i8 0, ptr %203, align 1
  %204 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 109
  store i32 0, ptr %204, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 115
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %159
  tail call void @kfree(ptr noundef nonnull %206) #22
  store ptr null, ptr %205, align 4
  br label %209

209:                                              ; preds = %208, %159
  %210 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %211 = load i16, ptr %210, align 8
  %212 = and i16 %211, -1025
  store i16 %212, ptr %210, align 8
  %213 = load i16, ptr %162, align 4
  %214 = and i16 %213, -193
  store i16 %214, ptr %162, align 4
  %215 = getelementptr inbounds %struct.anon.3, ptr %89, i32 0, i32 1
  %216 = load i16, ptr %215, align 2
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %209
  %219 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223, !prof !28

222:                                              ; preds = %218
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3095, i32 noundef 9, ptr noundef null) #22
  br label %223

223:                                              ; preds = %222, %218, %209
  %224 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 37
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %246, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 1
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232, !prof !21

232:                                              ; preds = %227
  %233 = add i32 %229, -1
  br label %236

234:                                              ; preds = %227
  %235 = ptrtoint ptr %225 to i32
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = inttoptr i32 %237 to ptr
  %239 = getelementptr inbounds %struct.page, ptr %238, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #22, !srcloc !10
  %240 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #22, !srcloc !49
  %241 = extractvalue { i32, i32 } %240, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !50
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  tail call void @__put_page(ptr noundef %238) #22
  br label %244

244:                                              ; preds = %243, %236
  store ptr null, ptr %224, align 4
  %245 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 37, i32 1
  store i16 0, ptr %245, align 4
  br label %246

246:                                              ; preds = %244, %223
  %247 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  %248 = load volatile ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %260, label %250

250:                                              ; preds = %246
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %247) #22, !srcloc !10
  %251 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %247) #22, !srcloc !17
  %252 = extractvalue { i32, i32 } %251, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %250
  %255 = inttoptr i32 %252 to ptr
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi ptr [ %258, %256 ], [ %255, %254 ]
  %258 = load ptr, ptr %257, align 8
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %258) #22, !srcloc !33
  store ptr null, ptr %257, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %257) #22
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %256

260:                                              ; preds = %256, %250, %246
  tail call void @sk_error_report(ptr noundef %0) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_active_disable_ofo_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_rbtree_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_clear_retrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tcp_sock_set_cork(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %4 = load i16, ptr %3, align 4
  br i1 %1, label %5, label %14

5:                                                ; preds = %2
  %6 = lshr i16 %4, 8
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 13
  %9 = or i8 %8, 2
  %10 = zext i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %12 = and i16 %4, -3841
  %13 = or i16 %11, %12
  store i16 %13, ptr %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = and i16 %4, -513
  %16 = and i16 %4, 256
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = lshr i16 %4, 8
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 9
  %22 = or i8 %21, 4
  %23 = zext i8 %22 to i16
  %24 = shl nuw nsw i16 %23, 8
  %25 = and i16 %4, -3841
  %26 = or i16 %24, %25
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi i16 [ %26, %18 ], [ %15, %14 ]
  store i16 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @tcp_current_mss(ptr noundef %0) #22
  %36 = load i16, ptr %3, align 4
  %37 = lshr i16 %36, 8
  %38 = and i16 %37, 15
  %39 = zext i16 %38 to i32
  tail call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %35, i32 noundef %39) #22
  br label %40

40:                                               ; preds = %34, %27, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_sock_set_cork(ptr noundef %0, i1 noundef zeroext %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %4 = load i16, ptr %3, align 4
  br i1 %1, label %5, label %14

5:                                                ; preds = %2
  %6 = lshr i16 %4, 8
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 13
  %9 = or i8 %8, 2
  %10 = zext i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %12 = and i16 %4, -3841
  %13 = or i16 %11, %12
  store i16 %13, ptr %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = and i16 %4, -513
  %16 = and i16 %4, 256
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = lshr i16 %4, 8
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 9
  %22 = or i8 %21, 4
  %23 = zext i8 %22 to i16
  %24 = shl nuw nsw i16 %23, 8
  %25 = and i16 %4, -3841
  %26 = or i16 %24, %25
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi i16 [ %26, %18 ], [ %15, %14 ]
  store i16 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @tcp_current_mss(ptr noundef %0) #22
  %36 = load i16, ptr %3, align 4
  %37 = lshr i16 %36, 8
  %38 = and i16 %37, 15
  %39 = zext i16 %38 to i32
  tail call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %35, i32 noundef %39) #22
  br label %40

40:                                               ; preds = %34, %27, %5
  tail call void @release_sock(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tcp_sock_set_nodelay(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %4 = load i16, ptr %3, align 4
  br i1 %1, label %5, label %25

5:                                                ; preds = %2
  %6 = lshr i16 %4, 8
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 10
  %9 = or i8 %8, 5
  %10 = zext i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %12 = and i16 %4, -3841
  %13 = or i16 %11, %12
  store i16 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  %17 = icmp eq ptr %15, null
  %18 = or i1 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = tail call i32 @tcp_current_mss(ptr noundef %0) #22
  %21 = load i16, ptr %3, align 4
  %22 = lshr i16 %21, 8
  %23 = and i16 %22, 15
  %24 = zext i16 %23 to i32
  tail call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %20, i32 noundef %24) #22
  br label %27

25:                                               ; preds = %2
  %26 = and i16 %4, -257
  store i16 %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %25, %19, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_sock_set_nodelay(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %3 = load i16, ptr %2, align 4
  %4 = lshr i16 %3, 8
  %5 = trunc i16 %4 to i8
  %6 = and i8 %5, 10
  %7 = or i8 %6, 5
  %8 = zext i8 %7 to i16
  %9 = shl nuw nsw i16 %8, 8
  %10 = and i16 %3, -3841
  %11 = or i16 %9, %10
  store i16 %11, ptr %2, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  %15 = icmp eq ptr %13, null
  %16 = or i1 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = tail call i32 @tcp_current_mss(ptr noundef %0) #22
  %19 = load i16, ptr %2, align 4
  %20 = lshr i16 %19, 8
  %21 = and i16 %20, 15
  %22 = zext i16 %21 to i32
  tail call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %18, i32 noundef %22) #22
  br label %23

23:                                               ; preds = %17, %1
  tail call void @release_sock(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_sock_set_quickack(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  br i1 %3, label %21, label %5

5:                                                ; preds = %2
  store i8 0, ptr %4, align 2
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, 258
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = or i8 %14, 4
  store i8 %18, ptr %13, align 4
  tail call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef 1) #22
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i8 3, ptr %4, align 2
  br label %22

22:                                               ; preds = %21, %17, %12, %5
  tail call void @release_sock(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sock_set_syncnt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -128
  %4 = icmp ult i32 %3, -127
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 21
  store i8 %6, ptr %7, align 8
  tail call void @release_sock(ptr noundef %0) #22
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_sock_set_user_timeout(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  store i32 %1, ptr %3, align 4
  tail call void @release_sock(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sock_set_keepidle_locked(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -32768
  %4 = icmp ult i32 %3, -32767
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = mul nuw nsw i32 %1, 100
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 104
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, 1152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 %27) #22
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %28)
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %29) #22
  br label %30

30:                                               ; preds = %19, %12, %5, %2
  %31 = phi i32 [ -22, %2 ], [ 0, %19 ], [ 0, %12 ], [ 0, %5 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sock_set_keepidle(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %3 = add i32 %1, -32768
  %4 = icmp ult i32 %3, -32767
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = mul nuw nsw i32 %1, 100
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 104
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, 1152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 %27) #22
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %28) #22
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %29) #22
  br label %30

30:                                               ; preds = %19, %12, %5, %2
  %31 = phi i32 [ -22, %2 ], [ 0, %19 ], [ 0, %12 ], [ 0, %5 ]
  tail call void @release_sock(ptr noundef %0) #22
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sock_set_keepintvl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -32768
  %4 = icmp ult i32 %3, -32767
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %6 = mul nuw nsw i32 %1, 100
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 105
  store i32 %6, ptr %7, align 4
  tail call void @release_sock(ptr noundef %0) #22
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_sock_set_keepcnt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -128
  %4 = icmp ult i32 %3, -127
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 57
  store i8 %6, ptr %7, align 1
  tail call void @release_sock(ptr noundef %0) #22
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_set_window_clamp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 7
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %9, align 8
  br label %17

10:                                               ; preds = %2
  %11 = tail call i32 @llvm.umax.i32(i32 %1, i32 1120)
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %11)
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %10, %8, %4
  %18 = phi i32 [ -22, %4 ], [ 0, %10 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca %struct.tcp_repair_opt, align 8
  %7 = alloca %struct.tcp_repair_window, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 1
  %10 = alloca [16 x i8], align 1
  %11 = alloca [32 x i8], align 1
  %12 = icmp eq i32 %1, 6
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #22
  br label %677

19:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4, !annotation !35
  switch i32 %2, label %101 [
    i32 13, label %20
    i32 31, label %46
    i32 33, label %70
  ]

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %9, i8 0, i32 16, i1 false) #22, !annotation !35
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @llvm.smin.i32(i32 %4, i32 15) #22
  %24 = extractvalue [2 x i32] %3, 0
  %25 = inttoptr i32 %24 to ptr
  %26 = extractvalue [2 x i32] %3, 1
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = add i32 %23, -1
  %31 = tail call i32 @strnlen(ptr noundef %25, i32 noundef %30) #22
  %32 = add i32 %31, 1
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 %23) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %9, ptr align 1 %25, i32 %33, i1 false) #22
  br label %36

34:                                               ; preds = %22
  %35 = call i32 @strncpy_from_user(ptr noundef nonnull %9, ptr noundef %25, i32 noundef %23) #22
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %33, %29 ], [ %35, %34 ]
  store i32 %37, ptr %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr [16 x i8], ptr %9, i32 0, i32 %37
  store i8 0, ptr %40, align 1
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %41 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %42 = call zeroext i1 @ns_capable(ptr noundef %41, i32 noundef 12) #22
  %43 = call i32 @tcp_set_congestion_control(ptr noundef %0, ptr noundef nonnull %9, i1 noundef zeroext true, i1 noundef zeroext %42) #22
  call void @release_sock(ptr noundef %0) #22
  br label %44

44:                                               ; preds = %39, %36, %20
  %45 = phi i32 [ %43, %39 ], [ -22, %20 ], [ -14, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  br label %675

46:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %10, i8 0, i32 16, i1 false) #22, !annotation !35
  %47 = icmp eq i32 %4, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %46
  %49 = tail call i32 @llvm.smin.i32(i32 %4, i32 15) #22
  %50 = extractvalue [2 x i32] %3, 0
  %51 = inttoptr i32 %50 to ptr
  %52 = extractvalue [2 x i32] %3, 1
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = add i32 %49, -1
  %57 = tail call i32 @strnlen(ptr noundef %51, i32 noundef %56) #22
  %58 = add i32 %57, 1
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %49) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %10, ptr align 1 %51, i32 %59, i1 false) #22
  br label %62

60:                                               ; preds = %48
  %61 = call i32 @strncpy_from_user(ptr noundef nonnull %10, ptr noundef %51, i32 noundef %49) #22
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i32 [ %59, %55 ], [ %61, %60 ]
  store i32 %63, ptr %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = getelementptr [16 x i8], ptr %10, i32 0, i32 %63
  store i8 0, ptr %66, align 1
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %67 = call i32 @tcp_set_ulp(ptr noundef %0, ptr noundef nonnull %10) #22
  call void @release_sock(ptr noundef %0) #22
  br label %68

68:                                               ; preds = %65, %62, %46
  %69 = phi i32 [ %67, %65 ], [ -22, %46 ], [ -14, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %675

70:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %11, i8 0, i32 32, i1 false) #22, !annotation !35
  switch i32 %4, label %99 [
    i32 32, label %71
    i32 16, label %71
  ]

71:                                               ; preds = %70, %70
  %72 = extractvalue [2 x i32] %3, 0
  %73 = inttoptr i32 %72 to ptr
  %74 = extractvalue [2 x i32] %3, 1
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %73, i32 %4, i32 -1090519040) #26, !srcloc !51
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89, !prof !21

81:                                               ; preds = %77
  %82 = tail call ptr @llvm.thread.pointer() #22
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %84 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %83) #16, !srcloc !24
  %85 = and i32 %84, -13
  %86 = or i32 %85, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %87 = call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef %73, i32 noundef %4) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89, !prof !21

89:                                               ; preds = %81, %77
  %90 = phi i32 [ %87, %81 ], [ %4, %77 ]
  %91 = sub i32 %4, %90
  %92 = getelementptr i8, ptr %11, i32 %91
  call void @llvm.memset.p0.i32(ptr align 1 %92, i8 0, i32 %90, i1 false) #22
  br label %99

93:                                               ; preds = %71
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %11, ptr align 1 %73, i32 %4, i1 false) #22
  br label %94

94:                                               ; preds = %93, %81
  %95 = icmp eq i32 %4, 32
  %96 = getelementptr inbounds i8, ptr %11, i32 16
  %97 = select i1 %95, ptr %96, ptr null
  %98 = call i32 @tcp_fastopen_reset_cipher(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %11, ptr noundef %97) #22
  br label %99

99:                                               ; preds = %94, %89, %70
  %100 = phi i32 [ %98, %94 ], [ -22, %70 ], [ -14, %89 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  br label %675

101:                                              ; preds = %19
  %102 = icmp ult i32 %4, 4
  br i1 %102, label %675, label %103

103:                                              ; preds = %101
  %104 = extractvalue [2 x i32] %3, 0
  %105 = inttoptr i32 %104 to ptr
  %106 = extractvalue [2 x i32] %3, 1
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %105, i32 4, i32 -1090519040) #26, !srcloc !51
  %111 = extractvalue { i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121, !prof !21

113:                                              ; preds = %109
  %114 = tail call ptr @llvm.thread.pointer() #22
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 3
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %115) #16, !srcloc !24
  %117 = and i32 %116, -13
  %118 = or i32 %117, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %119 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %105, i32 noundef 4) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121, !prof !21

121:                                              ; preds = %113, %109
  %122 = phi i32 [ %119, %113 ], [ 4, %109 ]
  %123 = sub i32 4, %122
  %124 = getelementptr i8, ptr %8, i32 %123
  call void @llvm.memset.p0.i32(ptr align 1 %124, i8 0, i32 %122, i1 false) #22
  br label %675

125:                                              ; preds = %103
  %126 = load i32, ptr %105, align 1
  store i32 %126, ptr %8, align 4
  br label %127

127:                                              ; preds = %125, %113
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  switch i32 %2, label %673 [
    i32 2, label %128
    i32 1, label %137
    i32 16, label %164
    i32 17, label %175
    i32 19, label %179
    i32 20, label %211
    i32 21, label %222
    i32 22, label %244
    i32 3, label %329
    i32 4, label %369
    i32 5, label %398
    i32 6, label %405
    i32 7, label %412
    i32 27, label %419
    i32 8, label %428
    i32 9, label %440
    i32 10, label %459
    i32 12, label %475
    i32 18, label %496
    i32 23, label %501
    i32 30, label %516
    i32 34, label %535
    i32 24, label %553
    i32 29, label %568
    i32 25, label %621
    i32 36, label %626
    i32 37, label %637
  ]

128:                                              ; preds = %127
  %129 = load i32, ptr %8, align 4
  %130 = icmp ne i32 %129, 0
  %131 = add i32 %129, -32768
  %132 = icmp ult i32 %131, -32680
  %133 = and i1 %130, %132
  br i1 %133, label %673, label %134

134:                                              ; preds = %128
  %135 = trunc i32 %129 to i16
  %136 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  store i16 %135, ptr %136, align 4
  br label %673

137:                                              ; preds = %127
  %138 = load i32, ptr %8, align 4
  %139 = icmp eq i32 %138, 0
  %140 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %141 = load i16, ptr %140, align 4
  br i1 %139, label %162, label %142

142:                                              ; preds = %137
  %143 = lshr i16 %141, 8
  %144 = trunc i16 %143 to i8
  %145 = and i8 %144, 10
  %146 = or i8 %145, 5
  %147 = zext i8 %146 to i16
  %148 = shl nuw nsw i16 %147, 8
  %149 = and i16 %141, -3841
  %150 = or i16 %148, %149
  store i16 %150, ptr %140, align 4
  %151 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, %151
  %154 = icmp eq ptr %152, null
  %155 = or i1 %153, %154
  br i1 %155, label %673, label %156

156:                                              ; preds = %142
  %157 = call i32 @tcp_current_mss(ptr noundef %0) #22
  %158 = load i16, ptr %140, align 4
  %159 = lshr i16 %158, 8
  %160 = and i16 %159, 15
  %161 = zext i16 %160 to i32
  call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %157, i32 noundef %161) #22
  br label %673

162:                                              ; preds = %137
  %163 = and i16 %141, -257
  store i16 %163, ptr %140, align 4
  br label %673

164:                                              ; preds = %127
  %165 = load i32, ptr %8, align 4
  %166 = icmp ugt i32 %165, 1
  br i1 %166, label %673, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %169 = trunc i32 %165 to i16
  %170 = load i16, ptr %168, align 4
  %171 = shl nuw nsw i16 %169, 12
  %172 = and i16 %171, 4096
  %173 = and i16 %170, -4097
  %174 = or i16 %173, %172
  store i16 %174, ptr %168, align 4
  br label %673

175:                                              ; preds = %127
  %176 = load i32, ptr %8, align 4
  %177 = icmp ugt i32 %176, 1
  %178 = select i1 %177, i32 -22, i32 0
  br label %673

179:                                              ; preds = %127
  %180 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %181 = call zeroext i1 @ns_capable(ptr noundef %180, i32 noundef 12) #22
  br i1 %181, label %182, label %673

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %184 = load volatile i8, ptr %183, align 2
  %185 = icmp eq i8 %184, 10
  br i1 %185, label %673, label %186

186:                                              ; preds = %182
  %187 = load i32, ptr %8, align 4
  switch i32 %187, label %673 [
    i32 1, label %188
    i32 0, label %197
    i32 -1, label %204
  ]

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %190 = load i16, ptr %189, align 4
  %191 = or i16 %190, 16384
  store i16 %191, ptr %189, align 4
  %192 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %193 = load i8, ptr %192, align 1
  %194 = and i8 %193, -16
  %195 = or i8 %194, 2
  store i8 %195, ptr %192, align 1
  %196 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  store i8 0, ptr %196, align 2
  br label %673

197:                                              ; preds = %186
  %198 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %199 = load i16, ptr %198, align 4
  %200 = and i16 %199, -16385
  store i16 %200, ptr %198, align 4
  %201 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %202 = load i8, ptr %201, align 1
  %203 = and i8 %202, -16
  store i8 %203, ptr %201, align 1
  call void @tcp_send_window_probe(ptr noundef %0) #22
  br label %673

204:                                              ; preds = %186
  %205 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %206 = load i16, ptr %205, align 4
  %207 = and i16 %206, -16385
  store i16 %207, ptr %205, align 4
  %208 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %209 = load i8, ptr %208, align 1
  %210 = and i8 %209, -16
  store i8 %210, ptr %208, align 1
  br label %673

211:                                              ; preds = %127
  %212 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %213 = load i16, ptr %212, align 4
  %214 = and i16 %213, 16384
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %673, label %216

216:                                              ; preds = %211
  %217 = load i32, ptr %8, align 4
  %218 = icmp ult i32 %217, 3
  br i1 %218, label %219, label %673

219:                                              ; preds = %216
  %220 = trunc i32 %217 to i8
  %221 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  store i8 %220, ptr %221, align 2
  br label %673

222:                                              ; preds = %127
  %223 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %224 = load volatile i8, ptr %223, align 2
  %225 = icmp eq i8 %224, 7
  br i1 %225, label %226, label %673

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  %228 = load i8, ptr %227, align 2
  switch i8 %228, label %673 [
    i8 2, label %229
    i8 1, label %236
  ]

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %231 = load volatile ptr, ptr %230, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %673

233:                                              ; preds = %229
  %234 = load i32, ptr %8, align 4
  %235 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  store volatile i32 %234, ptr %235, align 4
  br label %673

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %238 = load i32, ptr %237, align 8
  %239 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %673

242:                                              ; preds = %236
  %243 = load i32, ptr %8, align 4
  store volatile i32 %243, ptr %237, align 8
  store volatile i32 %243, ptr %239, align 4
  br label %673

244:                                              ; preds = %127
  %245 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %246 = load i16, ptr %245, align 4
  %247 = and i16 %246, 16384
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %673, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %251 = load volatile i8, ptr %250, align 2
  %252 = icmp eq i8 %251, 1
  br i1 %252, label %253, label %673

253:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store i64 0, ptr %6, align 8, !annotation !35
  %254 = icmp ugt i32 %4, 7
  br i1 %254, label %255, label %327

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.tcp_repair_opt, ptr %6, i32 0, i32 1
  %257 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %258 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  br label %259

259:                                              ; preds = %325, %255
  %260 = phi i32 [ 0, %255 ], [ %286, %325 ]
  %261 = phi i32 [ %4, %255 ], [ %287, %325 ]
  %262 = getelementptr i8, ptr %105, i32 %260
  br i1 %108, label %263, label %281

263:                                              ; preds = %259
  %264 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %262, i32 8, i32 -1090519040) #26, !srcloc !51
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %277, !prof !21

267:                                              ; preds = %263
  %268 = tail call ptr @llvm.thread.pointer() #22
  %269 = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 3
  %270 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %269) #16, !srcloc !24
  %271 = and i32 %270, -13
  %272 = or i32 %271, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %272) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %273 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %262, i32 noundef 8) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %270) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %277, !prof !21

275:                                              ; preds = %267
  %276 = load i32, ptr %6, align 8
  br label %284

277:                                              ; preds = %267, %263
  %278 = phi i32 [ %273, %267 ], [ 8, %263 ]
  %279 = sub i32 8, %278
  %280 = getelementptr i8, ptr %6, i32 %279
  call void @llvm.memset.p0.i32(ptr align 1 %280, i8 0, i32 %278, i1 false) #22
  br label %327

281:                                              ; preds = %259
  %282 = load i64, ptr %262, align 1
  store i64 %282, ptr %6, align 8
  %283 = trunc i64 %282 to i32
  br label %284

284:                                              ; preds = %281, %275
  %285 = phi i32 [ %276, %275 ], [ %283, %281 ]
  %286 = add i32 %260, 8
  %287 = add i32 %261, -8
  switch i32 %285, label %325 [
    i32 2, label %288
    i32 3, label %291
    i32 4, label %308
    i32 8, label %319
  ]

288:                                              ; preds = %284
  %289 = load i32, ptr %256, align 4
  %290 = trunc i32 %289 to i16
  store i16 %290, ptr %258, align 2
  call void @tcp_mtup_init(ptr noundef %0) #22
  br label %325

291:                                              ; preds = %284
  %292 = load i32, ptr %256, align 4
  %293 = and i32 %292, 65535
  %294 = icmp ugt i32 %293, 14
  %295 = icmp ugt i32 %292, 983039
  %296 = or i1 %295, %294
  br i1 %296, label %327, label %297

297:                                              ; preds = %291
  %298 = trunc i32 %292 to i24
  %299 = load i24, ptr %257, align 4
  %300 = shl i24 %298, 8
  %301 = and i24 %300, 3840
  %302 = and i24 %299, -65289
  %303 = lshr i24 %298, 4
  %304 = and i24 %303, 61440
  %305 = or i24 %304, %301
  %306 = or i24 %305, %302
  %307 = or i24 %306, 8
  store i24 %307, ptr %257, align 4
  br label %325

308:                                              ; preds = %284
  %309 = load i32, ptr %256, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %327

311:                                              ; preds = %308
  %312 = load i24, ptr %257, align 4
  %313 = trunc i24 %312 to i16
  %314 = and i16 %313, 96
  %315 = or i16 %314, 16
  %316 = zext i16 %315 to i24
  %317 = and i24 %312, -113
  %318 = or i24 %317, %316
  store i24 %318, ptr %257, align 4
  br label %325

319:                                              ; preds = %284
  %320 = load i32, ptr %256, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %319
  %323 = load i24, ptr %257, align 4
  %324 = or i24 %323, 2
  store i24 %324, ptr %257, align 4
  br label %325

325:                                              ; preds = %322, %311, %297, %288, %284
  %326 = icmp ugt i32 %287, 7
  br i1 %326, label %259, label %327

327:                                              ; preds = %325, %319, %308, %291, %277, %253
  %328 = phi i32 [ -14, %277 ], [ 0, %253 ], [ -27, %291 ], [ 0, %325 ], [ -22, %319 ], [ -22, %308 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %673

329:                                              ; preds = %127
  %330 = load i32, ptr %8, align 4
  %331 = icmp eq i32 %330, 0
  %332 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %333 = load i16, ptr %332, align 4
  br i1 %331, label %343, label %334

334:                                              ; preds = %329
  %335 = lshr i16 %333, 8
  %336 = trunc i16 %335 to i8
  %337 = and i8 %336, 13
  %338 = or i8 %337, 2
  %339 = zext i8 %338 to i16
  %340 = shl nuw nsw i16 %339, 8
  %341 = and i16 %333, -3841
  %342 = or i16 %340, %341
  store i16 %342, ptr %332, align 4
  br label %673

343:                                              ; preds = %329
  %344 = and i16 %333, -513
  %345 = and i16 %333, 256
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %356, label %347

347:                                              ; preds = %343
  %348 = lshr i16 %333, 8
  %349 = trunc i16 %348 to i8
  %350 = and i8 %349, 9
  %351 = or i8 %350, 4
  %352 = zext i8 %351 to i16
  %353 = shl nuw nsw i16 %352, 8
  %354 = and i16 %333, -3841
  %355 = or i16 %353, %354
  br label %356

356:                                              ; preds = %347, %343
  %357 = phi i16 [ %355, %347 ], [ %344, %343 ]
  store i16 %357, ptr %332, align 4
  %358 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, %358
  %361 = icmp eq ptr %359, null
  %362 = or i1 %360, %361
  br i1 %362, label %673, label %363

363:                                              ; preds = %356
  %364 = call i32 @tcp_current_mss(ptr noundef %0) #22
  %365 = load i16, ptr %332, align 4
  %366 = lshr i16 %365, 8
  %367 = and i16 %366, 15
  %368 = zext i16 %367 to i32
  call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %364, i32 noundef %368) #22
  br label %673

369:                                              ; preds = %127
  %370 = load i32, ptr %8, align 4
  %371 = add i32 %370, -32768
  %372 = icmp ult i32 %371, -32767
  br i1 %372, label %673, label %373

373:                                              ; preds = %369
  %374 = mul nuw nsw i32 %370, 100
  %375 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 104
  store i32 %374, ptr %375, align 8
  %376 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %377 = load volatile i32, ptr %376, align 4
  %378 = and i32 %377, 8
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %673, label %380

380:                                              ; preds = %373
  %381 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %382 = load volatile i8, ptr %381, align 2
  %383 = zext i8 %382 to i32
  %384 = shl nuw i32 1, %383
  %385 = and i32 %384, 1152
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %673

387:                                              ; preds = %380
  %388 = load volatile i32, ptr @jiffies, align 64
  %389 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  %390 = load i32, ptr %389, align 4
  %391 = sub i32 %388, %390
  %392 = load volatile i32, ptr @jiffies, align 64
  %393 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  %394 = load i32, ptr %393, align 4
  %395 = sub i32 %392, %394
  %396 = call i32 @llvm.umin.i32(i32 %391, i32 %395) #22
  %397 = call i32 @llvm.usub.sat.i32(i32 %374, i32 %396) #22
  call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %397) #22
  br label %673

398:                                              ; preds = %127
  %399 = load i32, ptr %8, align 4
  %400 = add i32 %399, -32768
  %401 = icmp ult i32 %400, -32767
  br i1 %401, label %673, label %402

402:                                              ; preds = %398
  %403 = mul nuw nsw i32 %399, 100
  %404 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 105
  store i32 %403, ptr %404, align 4
  br label %673

405:                                              ; preds = %127
  %406 = load i32, ptr %8, align 4
  %407 = add i32 %406, -128
  %408 = icmp ult i32 %407, -127
  br i1 %408, label %673, label %409

409:                                              ; preds = %405
  %410 = trunc i32 %406 to i8
  %411 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 57
  store i8 %410, ptr %411, align 1
  br label %673

412:                                              ; preds = %127
  %413 = load i32, ptr %8, align 4
  %414 = add i32 %413, -128
  %415 = icmp ult i32 %414, -127
  br i1 %415, label %673, label %416

416:                                              ; preds = %412
  %417 = trunc i32 %413 to i8
  %418 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 21
  store i8 %417, ptr %418, align 8
  br label %673

419:                                              ; preds = %127
  %420 = load i32, ptr %8, align 4
  %421 = icmp ugt i32 %420, 2
  br i1 %421, label %673, label %422

422:                                              ; preds = %419
  %423 = trunc i32 %420 to i8
  %424 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %425 = load i8, ptr %424, align 1
  %426 = and i8 %425, -4
  %427 = or i8 %426, %423
  store i8 %427, ptr %424, align 1
  br label %673

428:                                              ; preds = %127
  %429 = load i32, ptr %8, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 106
  store i32 -1, ptr %432, align 8
  br label %673

433:                                              ; preds = %428
  %434 = icmp ugt i32 %429, 120
  br i1 %434, label %435, label %437

435:                                              ; preds = %433
  %436 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 106
  store i32 12000, ptr %436, align 8
  br label %673

437:                                              ; preds = %433
  %438 = mul nuw nsw i32 %429, 100
  %439 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 106
  store i32 %438, ptr %439, align 8
  br label %673

440:                                              ; preds = %127
  %441 = load i32, ptr %8, align 4
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %456

443:                                              ; preds = %440
  %444 = icmp eq i32 %441, 1
  br i1 %444, label %456, label %445

445:                                              ; preds = %445, %443
  %446 = phi i32 [ %452, %445 ], [ 1, %443 ]
  %447 = phi i8 [ %449, %445 ], [ 1, %443 ]
  %448 = phi i32 [ %451, %445 ], [ 1, %443 ]
  %449 = add nuw i8 %447, 1
  %450 = shl i32 %448, 1
  %451 = call i32 @llvm.smin.i32(i32 %450, i32 120) #22
  %452 = add i32 %451, %446
  %453 = icmp slt i32 %452, %441
  %454 = icmp ne i8 %449, -1
  %455 = select i1 %453, i1 %454, i1 false
  br i1 %455, label %445, label %456

456:                                              ; preds = %445, %443, %440
  %457 = phi i8 [ 0, %440 ], [ 1, %443 ], [ %449, %445 ]
  %458 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 1
  store i8 %457, ptr %458, align 4
  br label %673

459:                                              ; preds = %127
  %460 = load i32, ptr %8, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %464 = load volatile i8, ptr %463, align 2
  %465 = icmp eq i8 %464, 7
  br i1 %465, label %466, label %673

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %467, align 8
  br label %673

468:                                              ; preds = %459
  %469 = call i32 @llvm.umax.i32(i32 %460, i32 1120) #22
  %470 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 %469, ptr %470, align 8
  %471 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %472 = load i32, ptr %471, align 8
  %473 = call i32 @llvm.umin.i32(i32 %472, i32 %469) #22
  %474 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  store i32 %473, ptr %474, align 4
  br label %673

475:                                              ; preds = %127
  %476 = load i32, ptr %8, align 4
  %477 = icmp eq i32 %476, 0
  %478 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  br i1 %477, label %495, label %479

479:                                              ; preds = %475
  store i8 0, ptr %478, align 2
  %480 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %481 = load volatile i8, ptr %480, align 2
  %482 = zext i8 %481 to i32
  %483 = shl nuw i32 1, %482
  %484 = and i32 %483, 258
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %673, label %486

486:                                              ; preds = %479
  %487 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %488 = load i8, ptr %487, align 4
  %489 = and i8 %488, 1
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %673, label %491

491:                                              ; preds = %486
  %492 = or i8 %488, 4
  store i8 %492, ptr %487, align 4
  call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef 1) #22
  %493 = and i32 %476, 1
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %673

495:                                              ; preds = %491, %475
  store i8 3, ptr %478, align 2
  br label %673

496:                                              ; preds = %127
  %497 = load i32, ptr %8, align 4
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %673, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  store i32 %497, ptr %500, align 4
  br label %673

501:                                              ; preds = %127
  %502 = load i32, ptr %8, align 4
  %503 = icmp sgt i32 %502, -1
  br i1 %503, label %504, label %673

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %506 = load volatile i8, ptr %505, align 2
  %507 = zext i8 %506 to i32
  %508 = shl nuw i32 1, %507
  %509 = and i32 %508, 1152
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %673, label %511

511:                                              ; preds = %504
  call void @tcp_fastopen_init_key_once(ptr noundef nonnull @init_net) #22
  %512 = load i32, ptr %8, align 4
  %513 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 1), align 16
  %514 = call i32 @llvm.umin.i32(i32 %513, i32 %512) #22
  %515 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 4
  store i32 %514, ptr %515, align 4
  br label %673

516:                                              ; preds = %127
  %517 = load i32, ptr %8, align 4
  %518 = icmp ugt i32 %517, 1
  br i1 %518, label %673, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  %521 = and i32 %520, 1
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %673, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %525 = load volatile i8, ptr %524, align 2
  %526 = icmp eq i8 %525, 7
  br i1 %526, label %527, label %673

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %529 = trunc i32 %517 to i16
  %530 = load i16, ptr %528, align 4
  %531 = shl nuw nsw i16 %529, 3
  %532 = and i16 %531, 8
  %533 = and i16 %530, -9
  %534 = or i16 %533, %532
  store i16 %534, ptr %528, align 4
  br label %673

535:                                              ; preds = %127
  %536 = load i32, ptr %8, align 4
  %537 = icmp ugt i32 %536, 1
  br i1 %537, label %673, label %538

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %540 = load volatile i8, ptr %539, align 2
  %541 = zext i8 %540 to i32
  %542 = shl nuw i32 1, %541
  %543 = and i32 %542, 1152
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %673, label %545

545:                                              ; preds = %538
  %546 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %547 = trunc i32 %536 to i16
  %548 = load i16, ptr %546, align 4
  %549 = shl nuw nsw i16 %547, 4
  %550 = and i16 %549, 16
  %551 = and i16 %548, -17
  %552 = or i16 %551, %550
  store i16 %552, ptr %546, align 4
  br label %673

553:                                              ; preds = %127
  %554 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %555 = load i16, ptr %554, align 4
  %556 = and i16 %555, 16384
  %557 = icmp eq i16 %556, 0
  br i1 %557, label %673, label %558

558:                                              ; preds = %553
  %559 = load i32, ptr %8, align 4
  %560 = call i64 @ktime_get() #22
  %561 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %560) #26, !srcloc !52
  %562 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %560, i64 %561, i32 0) #26, !srcloc !53
  %563 = extractvalue { i64, i32 } %562, 0
  %564 = lshr i64 %563, 18
  %565 = trunc i64 %564 to i32
  %566 = sub i32 %559, %565
  %567 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  store i32 %566, ptr %567, align 4
  br label %673

568:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #22, !annotation !35
  %569 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %570 = load i16, ptr %569, align 4
  %571 = and i16 %570, 16384
  %572 = icmp eq i16 %571, 0
  br i1 %572, label %619, label %573

573:                                              ; preds = %568
  %574 = icmp eq i32 %4, 20
  br i1 %574, label %575, label %619

575:                                              ; preds = %573
  br i1 %108, label %576, label %592

576:                                              ; preds = %575
  %577 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %105, i32 20, i32 -1090519040) #26, !srcloc !51
  %578 = extractvalue { i32, i32 } %577, 0
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %588, !prof !21

580:                                              ; preds = %576
  %581 = tail call ptr @llvm.thread.pointer() #22
  %582 = getelementptr inbounds %struct.thread_info, ptr %581, i32 0, i32 3
  %583 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %582) #16, !srcloc !24
  %584 = and i32 %583, -13
  %585 = or i32 %584, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %585) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %586 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %105, i32 noundef 20) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %583) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %593, label %588, !prof !21

588:                                              ; preds = %580, %576
  %589 = phi i32 [ %586, %580 ], [ 20, %576 ]
  %590 = sub i32 20, %589
  %591 = getelementptr i8, ptr %7, i32 %590
  call void @llvm.memset.p0.i32(ptr align 1 %591, i8 0, i32 %589, i1 false) #22
  br label %619

592:                                              ; preds = %575
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef align 1 dereferenceable(20) %105, i32 20, i1 false) #22
  br label %593

593:                                              ; preds = %592, %580
  %594 = getelementptr inbounds %struct.tcp_repair_window, ptr %7, i32 0, i32 2
  %595 = load i32, ptr %594, align 4
  %596 = getelementptr inbounds %struct.tcp_repair_window, ptr %7, i32 0, i32 1
  %597 = load i32, ptr %596, align 4
  %598 = icmp ult i32 %595, %597
  br i1 %598, label %619, label %599

599:                                              ; preds = %593
  %600 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %601 = load i32, ptr %600, align 8
  %602 = getelementptr inbounds %struct.tcp_repair_window, ptr %7, i32 0, i32 3
  %603 = load i32, ptr %602, align 4
  %604 = add i32 %603, %601
  %605 = load i32, ptr %7, align 4
  %606 = sub i32 %604, %605
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %619, label %608

608:                                              ; preds = %599
  %609 = getelementptr inbounds %struct.tcp_repair_window, ptr %7, i32 0, i32 4
  %610 = load i32, ptr %609, align 4
  %611 = sub i32 %601, %610
  %612 = icmp slt i32 %611, 0
  br i1 %612, label %619, label %613

613:                                              ; preds = %608
  %614 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %605, ptr %614, align 8
  %615 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  store i32 %597, ptr %615, align 4
  %616 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  store i32 %595, ptr %616, align 8
  %617 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  store i32 %603, ptr %617, align 8
  %618 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  store i32 %610, ptr %618, align 8
  br label %619

619:                                              ; preds = %613, %608, %599, %593, %588, %573, %568
  %620 = phi i32 [ 0, %613 ], [ -1, %568 ], [ -22, %573 ], [ -22, %593 ], [ -22, %599 ], [ -22, %608 ], [ -14, %588 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #22
  br label %673

621:                                              ; preds = %127
  %622 = load i32, ptr %8, align 4
  %623 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 81
  store i32 %622, ptr %623, align 8
  %624 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 77
  %625 = load ptr, ptr %624, align 4
  call void %625(ptr noundef %0) #22
  br label %673

626:                                              ; preds = %127
  %627 = load i32, ptr %8, align 4
  %628 = icmp ugt i32 %627, 1
  br i1 %628, label %673, label %629

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %631 = trunc i32 %627 to i16
  %632 = load i16, ptr %630, align 4
  %633 = shl nuw nsw i16 %631, 13
  %634 = and i16 %633, 8192
  %635 = and i16 %632, -8193
  %636 = or i16 %635, %634
  store i16 %636, ptr %630, align 4
  br label %673

637:                                              ; preds = %127
  %638 = load i32, ptr %8, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %670, label %640

640:                                              ; preds = %637
  %641 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %642 = icmp sgt i32 %641, 0
  br i1 %642, label %668, label %643, !prof !28

643:                                              ; preds = %640
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !54
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tcp_enable_tx_delay.__tcp_tx_delay_enabled) #22, !srcloc !10
  br label %644

644:                                              ; preds = %644, %643
  %645 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @tcp_enable_tx_delay.__tcp_tx_delay_enabled, i32 0, i32 1) #22, !srcloc !11
  %646 = extractvalue { i32, i32 } %645, 0
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %644

648:                                              ; preds = %644
  %649 = extractvalue { i32, i32 } %645, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !55
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %668

651:                                              ; preds = %648
  %652 = load i8, ptr @static_key_initialized, align 1, !range !56
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %654, label %655, !prof !28

654:                                              ; preds = %651
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @tcp_tx_delay_enabled) #22
  br label %655

655:                                              ; preds = %654, %651
  %656 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %665, label %658

658:                                              ; preds = %655
  %659 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %660 = icmp ne i32 %659, 1
  %661 = load i1, ptr @static_key_enable.__already_done, align 1
  %662 = xor i1 %661, true
  %663 = select i1 %660, i1 %662, i1 false
  br i1 %663, label %664, label %666, !prof !28

664:                                              ; preds = %658
  store i1 true, ptr @static_key_enable.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 321, i32 noundef 9, ptr noundef null) #22
  br label %666

665:                                              ; preds = %655
  store volatile i32 1, ptr @tcp_tx_delay_enabled, align 4
  br label %666

666:                                              ; preds = %665, %664, %658
  %667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #24
  br label %668

668:                                              ; preds = %666, %648, %640
  %669 = load i32, ptr %8, align 4
  br label %670

670:                                              ; preds = %668, %637
  %671 = phi i32 [ %669, %668 ], [ 0, %637 ]
  %672 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  store i32 %671, ptr %672, align 4
  br label %673

673:                                              ; preds = %670, %629, %626, %621, %619, %558, %553, %545, %538, %535, %527, %523, %519, %516, %511, %504, %501, %499, %496, %495, %491, %486, %479, %468, %466, %462, %456, %437, %435, %431, %422, %419, %416, %412, %409, %405, %402, %398, %387, %380, %373, %369, %363, %356, %334, %327, %249, %244, %242, %236, %233, %229, %226, %222, %219, %216, %211, %204, %197, %188, %186, %182, %179, %175, %167, %164, %162, %156, %142, %134, %128, %127
  %674 = phi i32 [ 0, %670 ], [ 0, %629 ], [ 0, %621 ], [ %620, %619 ], [ 0, %558 ], [ 0, %545 ], [ 0, %527 ], [ 0, %511 ], [ 0, %499 ], [ 0, %456 ], [ 0, %431 ], [ 0, %435 ], [ 0, %437 ], [ 0, %422 ], [ 0, %416 ], [ 0, %409 ], [ 0, %402 ], [ %328, %327 ], [ 0, %233 ], [ 0, %242 ], [ 0, %219 ], [ 0, %188 ], [ 0, %197 ], [ 0, %204 ], [ 0, %167 ], [ 0, %134 ], [ -22, %128 ], [ -22, %164 ], [ %178, %175 ], [ -1, %182 ], [ -22, %186 ], [ -1, %211 ], [ -22, %216 ], [ -1, %222 ], [ -1, %229 ], [ -1, %236 ], [ -22, %226 ], [ -22, %244 ], [ -1, %249 ], [ -22, %398 ], [ -22, %405 ], [ -22, %412 ], [ -22, %419 ], [ -22, %496 ], [ -22, %504 ], [ -22, %501 ], [ -22, %516 ], [ -22, %523 ], [ -95, %519 ], [ -22, %535 ], [ -22, %538 ], [ -1, %553 ], [ -22, %626 ], [ -92, %127 ], [ -22, %462 ], [ 0, %468 ], [ 0, %466 ], [ -1, %179 ], [ 0, %142 ], [ 0, %156 ], [ 0, %162 ], [ 0, %334 ], [ 0, %356 ], [ 0, %363 ], [ -22, %369 ], [ 0, %387 ], [ 0, %380 ], [ 0, %373 ], [ 0, %479 ], [ 0, %486 ], [ 0, %491 ], [ 0, %495 ]
  call void @release_sock(ptr noundef %0) #22
  br label %675

675:                                              ; preds = %673, %121, %101, %99, %68, %44
  %676 = phi i32 [ %674, %673 ], [ %100, %99 ], [ %69, %68 ], [ %45, %44 ], [ -22, %101 ], [ -14, %121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  br label %677

677:                                              ; preds = %675, %13
  %678 = phi i32 [ %18, %13 ], [ %676, %675 ]
  ret i32 %678
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_get_info(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(232) %1, i8 0, i32 232, i1 false)
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %349

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !20
  store i8 %8, ptr %1, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i32 %10 to i64
  %13 = select i1 %11, i64 -1, i64 %12
  %14 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 31
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 36
  %16 = load volatile i32, ptr %15, align 8
  %17 = icmp eq i32 %16, -1
  %18 = zext i32 %16 to i64
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 32
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 27
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 25
  store i32 %25, ptr %26, align 8
  %27 = icmp eq i8 %8, 10
  br i1 %27, label %28, label %35

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %30 = load volatile i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 11
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 54
  %33 = load volatile i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 12
  store i32 %33, ptr %34, align 4
  br label %349

35:                                               ; preds = %6
  %36 = tail call zeroext i1 @__lock_sock_fast(ptr noundef %0) #22
  %37 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 31
  %40 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 1
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 2
  store i8 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 4
  store i8 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %51 = load i24, ptr %50, align 4
  %52 = and i24 %51, 2
  %53 = icmp eq i24 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 1
  %58 = load i24, ptr %50, align 4
  br label %59

59:                                               ; preds = %54, %35
  %60 = phi i24 [ %58, %54 ], [ %51, %35 ]
  %61 = and i24 %60, 112
  %62 = icmp eq i24 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 5
  %65 = load i8, ptr %64, align 1
  %66 = or i8 %65, 2
  store i8 %66, ptr %64, align 1
  %67 = load i24, ptr %50, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i24 [ %67, %63 ], [ %60, %59 ]
  %70 = and i24 %69, 8
  %71 = icmp eq i24 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 5
  %74 = load i8, ptr %73, align 1
  %75 = or i8 %74, 4
  store i8 %75, ptr %73, align 1
  %76 = load i24, ptr %50, align 4
  %77 = lshr i24 %76, 8
  %78 = trunc i24 %77 to i8
  %79 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 6
  %80 = load i16, ptr %79, align 2
  %81 = and i8 %78, 15
  %82 = zext i8 %81 to i16
  %83 = and i16 %80, -16
  %84 = or i16 %83, %82
  store i16 %84, ptr %79, align 2
  %85 = load i24, ptr %50, align 4
  %86 = trunc i24 %85 to i16
  %87 = lshr i16 %86, 8
  %88 = and i16 %87, 240
  %89 = and i16 %84, -241
  %90 = or i16 %89, %88
  store i16 %90, ptr %79, align 2
  br label %91

91:                                               ; preds = %72, %68
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %93 = load i8, ptr %92, align 2
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 5
  %98 = load i8, ptr %97, align 1
  %99 = or i8 %98, 8
  store i8 %99, ptr %97, align 1
  %100 = load i8, ptr %92, align 2
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i8 [ %100, %96 ], [ %93, %91 ]
  %103 = and i8 %102, 8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 5
  %107 = load i8, ptr %106, align 1
  %108 = or i8 %107, 16
  store i8 %108, ptr %106, align 1
  br label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 64
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 5
  %116 = load i8, ptr %115, align 1
  %117 = or i8 %116, 32
  store i8 %117, ptr %115, align 1
  br label %118

118:                                              ; preds = %114, %109
  %119 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @jiffies_to_usecs(i32 noundef %120) #22
  %122 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 7
  store i32 %121, ptr %122, align 8
  %123 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = tail call i32 @jiffies_to_usecs(i32 noundef %124) #22
  %126 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 8
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 9
  store i32 %128, ptr %129, align 8
  %130 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %131 = load i16, ptr %130, align 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 10
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 11
  store i32 %135, ptr %136, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 12
  store i32 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %141 = load i32, ptr %140, align 8
  %142 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 13
  store i32 %141, ptr %142, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %144 = load i32, ptr %143, align 8
  %145 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 14
  store i32 %144, ptr %145, align 4
  %146 = load volatile i32, ptr @jiffies, align 64
  %147 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %148 = load i32, ptr %147, align 8
  %149 = sub i32 %146, %148
  %150 = tail call i32 @jiffies_to_msecs(i32 noundef %149) #22
  %151 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 16
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = sub i32 %146, %153
  %155 = tail call i32 @jiffies_to_msecs(i32 noundef %154) #22
  %156 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 18
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  %158 = load i32, ptr %157, align 4
  %159 = sub i32 %146, %158
  %160 = tail call i32 @jiffies_to_msecs(i32 noundef %159) #22
  %161 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 19
  store i32 %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 20
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 21
  store i32 %166, ptr %167, align 8
  %168 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %169 = load i32, ptr %168, align 8
  %170 = lshr i32 %169, 3
  %171 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 22
  store i32 %170, ptr %171, align 4
  %172 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 2
  %175 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 23
  store i32 %174, ptr %175, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 24
  store i32 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %180 = load i16, ptr %179, align 8
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 26
  store i32 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111
  %184 = load i32, ptr %183, align 8
  %185 = lshr i32 %184, 3
  %186 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 28
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112
  %188 = load i32, ptr %187, align 8
  %189 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 29
  store i32 %188, ptr %189, align 8
  %190 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %191 = load i32, ptr %190, align 8
  %192 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 30
  store i32 %191, ptr %192, align 4
  %193 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 14
  %194 = load i64, ptr %193, align 8
  %195 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 33
  store i64 %194, ptr %195, align 8
  %196 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 4
  %197 = load i64, ptr %196, align 8
  %198 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 34
  store i64 %197, ptr %198, align 8
  %199 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %202 = load i32, ptr %201, align 4
  %203 = sub i32 %200, %202
  %204 = tail call i32 @llvm.smax.i32(i32 %203, i32 0)
  %205 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 37
  store i32 %204, ptr %205, align 8
  %206 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %207 = load i16, ptr %206, align 4
  %208 = and i16 %207, 3
  %209 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %210 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 0
  %211 = load i32, ptr %210, align 4
  %212 = zext i32 %211 to i64
  %213 = icmp eq i16 %208, 1
  br i1 %213, label %214, label %223

214:                                              ; preds = %118
  %215 = load volatile i32, ptr @jiffies, align 64
  %216 = load i32, ptr %209, align 4
  %217 = sub i32 %215, %216
  %218 = zext i32 %217 to i64
  %219 = add nuw nsw i64 %218, %212
  %220 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = zext i32 %221 to i64
  br label %234

223:                                              ; preds = %118
  %224 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = zext i32 %225 to i64
  %227 = icmp eq i16 %208, 2
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  %229 = load volatile i32, ptr @jiffies, align 64
  %230 = load i32, ptr %209, align 4
  %231 = sub i32 %229, %230
  %232 = zext i32 %231 to i64
  %233 = add nuw nsw i64 %232, %226
  br label %234

234:                                              ; preds = %228, %214
  %235 = phi i64 [ %219, %214 ], [ %212, %228 ]
  %236 = phi i64 [ %222, %214 ], [ %233, %228 ]
  %237 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 2
  %238 = load i32, ptr %237, align 4
  %239 = zext i32 %238 to i64
  br label %251

240:                                              ; preds = %223
  %241 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = zext i32 %242 to i64
  %244 = icmp eq i16 %208, 3
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load volatile i32, ptr @jiffies, align 64
  %247 = load i32, ptr %209, align 4
  %248 = sub i32 %246, %247
  %249 = zext i32 %248 to i64
  %250 = add nuw nsw i64 %249, %243
  br label %251

251:                                              ; preds = %245, %240, %234
  %252 = phi i64 [ %226, %245 ], [ %226, %240 ], [ %236, %234 ]
  %253 = phi i64 [ %212, %245 ], [ %212, %240 ], [ %235, %234 ]
  %254 = phi i64 [ %250, %245 ], [ %243, %240 ], [ %239, %234 ]
  %255 = mul nuw nsw i64 %252, 10000
  %256 = mul nuw nsw i64 %253, 10000
  %257 = add nuw nsw i64 %256, %255
  %258 = mul nuw nsw i64 %254, 10000
  %259 = add nuw nsw i64 %257, %258
  %260 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 42
  store i64 %259, ptr %260, align 8
  %261 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 43
  store i64 %255, ptr %261, align 8
  %262 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 44
  store i64 %258, ptr %262, align 8
  %263 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 11
  %264 = load i32, ptr %263, align 8
  %265 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 35
  store i32 %264, ptr %265, align 8
  %266 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 5
  %267 = load volatile i32, ptr %266, align 8
  %268 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 36
  store i32 %267, ptr %268, align 4
  %269 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 6
  %270 = load volatile i32, ptr %269, align 4
  %271 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 39
  store i32 %270, ptr %271, align 8
  %272 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 38
  store i32 %273, ptr %274, align 4
  %275 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 12
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 40
  store i32 %276, ptr %277, align 4
  %278 = load i16, ptr %206, align 4
  %279 = trunc i16 %278 to i8
  %280 = lshr i8 %279, 2
  %281 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 6
  %282 = load i16, ptr %281, align 2
  %283 = and i8 %280, 1
  %284 = zext i8 %283 to i16
  %285 = shl nuw nsw i16 %284, 8
  %286 = and i16 %282, -257
  %287 = or i16 %285, %286
  store i16 %287, ptr %281, align 2
  %288 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 77
  %289 = load volatile i32, ptr %288, align 8
  %290 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 78
  %291 = load volatile i32, ptr %290, align 4
  %292 = icmp ne i32 %289, 0
  %293 = icmp ne i32 %291, 0
  %294 = select i1 %292, i1 %293, i1 false
  br i1 %294, label %295, label %314

295:                                              ; preds = %251
  %296 = zext i32 %289 to i64
  %297 = load i32, ptr %127, align 4
  %298 = zext i32 %297 to i64
  %299 = mul nuw nsw i64 %296, 1000000
  %300 = mul i64 %299, %298
  %301 = icmp ult i64 %300, 4294967296
  br i1 %301, label %302, label %306, !prof !21

302:                                              ; preds = %295
  %303 = trunc i64 %300 to i32
  %304 = udiv i32 %303, %291
  %305 = zext i32 %304 to i64
  br label %309

306:                                              ; preds = %295
  %307 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %291, i64 %300) #26, !srcloc !57
  %308 = extractvalue { i64, i64 } %307, 1
  br label %309

309:                                              ; preds = %306, %302
  %310 = phi i64 [ %305, %302 ], [ %308, %306 ]
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %314, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 41
  store i64 %310, ptr %313, align 8
  br label %314

314:                                              ; preds = %312, %309, %251
  %315 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %316 = load i32, ptr %315, align 8
  %317 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 45
  store i32 %316, ptr %317, align 8
  %318 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %319 = load i32, ptr %318, align 4
  %320 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 46
  store i32 %319, ptr %320, align 4
  %321 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 13
  %322 = load i64, ptr %321, align 8
  %323 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 47
  store i64 %322, ptr %323, align 8
  %324 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 101
  %325 = load i64, ptr %324, align 8
  %326 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 48
  store i64 %325, ptr %326, align 8
  %327 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 15
  %328 = load i32, ptr %327, align 8
  %329 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 49
  store i32 %328, ptr %329, align 8
  %330 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %331 = load i32, ptr %330, align 4
  %332 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 50
  store i32 %331, ptr %332, align 4
  %333 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 109
  %334 = load i32, ptr %333, align 8
  %335 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 51
  store i32 %334, ptr %335, align 8
  %336 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %337 = load i32, ptr %336, align 4
  %338 = getelementptr inbounds %struct.tcp_info, ptr %1, i32 0, i32 52
  store i32 %337, ptr %338, align 4
  %339 = load i16, ptr %206, align 4
  %340 = trunc i16 %339 to i8
  %341 = lshr i8 %340, 6
  %342 = zext i8 %341 to i16
  %343 = shl nuw nsw i16 %342, 9
  %344 = and i16 %287, -1537
  %345 = or i16 %343, %344
  store i16 %345, ptr %281, align 2
  br i1 %36, label %346, label %347

346:                                              ; preds = %314
  tail call void @release_sock(ptr noundef %0) #22
  br label %349

347:                                              ; preds = %314
  %348 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %348) #22
  br label %349

349:                                              ; preds = %347, %346, %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_get_timestamping_opt_stats(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = tail call ptr @__alloc_skb(i32 noundef 248, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %218, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 3
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %37 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp eq i16 %35, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = load i32, ptr %36, align 4
  %44 = sub i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, %39
  %47 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = zext i32 %48 to i64
  br label %61

50:                                               ; preds = %32
  %51 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp eq i16 %35, 2
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = load i32, ptr %36, align 4
  %58 = sub i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = add nuw nsw i64 %59, %53
  br label %61

61:                                               ; preds = %55, %41
  %62 = phi i64 [ %46, %41 ], [ %39, %55 ]
  %63 = phi i64 [ %49, %41 ], [ %60, %55 ]
  %64 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  br label %78

67:                                               ; preds = %50
  %68 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp eq i16 %35, 3
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = load i32, ptr %36, align 4
  %75 = sub i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = add nuw nsw i64 %76, %70
  br label %78

78:                                               ; preds = %72, %67, %61
  %79 = phi i64 [ %53, %72 ], [ %53, %67 ], [ %63, %61 ]
  %80 = phi i64 [ %39, %72 ], [ %39, %67 ], [ %62, %61 ]
  %81 = phi i64 [ %77, %72 ], [ %70, %67 ], [ %66, %61 ]
  %82 = mul nuw nsw i64 %79, 10000
  %83 = mul nuw nsw i64 %80, 10000
  %84 = add nuw nsw i64 %83, %82
  %85 = mul nuw nsw i64 %81, 10000
  %86 = add nuw nsw i64 %84, %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #22
  store i64 %86, ptr %29, align 8
  %87 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %29, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #22
  store i64 %82, ptr %28, align 8
  %88 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %28, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #22
  store i64 %85, ptr %27, align 8
  %89 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %27, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #22
  %90 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 12
  %91 = load i32, ptr %90, align 4
  %92 = zext i32 %91 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #22
  store i64 %92, ptr %26, align 8
  %93 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %26, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #22
  %94 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %95 = load i32, ptr %94, align 8
  %96 = zext i32 %95 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #22
  store i64 %96, ptr %25, align 8
  %97 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %25, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #22
  %98 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %99 = load volatile i32, ptr %98, align 4
  %100 = icmp eq i32 %99, -1
  %101 = zext i32 %99 to i64
  %102 = select i1 %100, i64 -1, i64 %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #22
  store i64 %102, ptr %24, align 8
  %103 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %24, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #22
  %104 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 77
  %105 = load volatile i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 78
  %107 = load volatile i32, ptr %106, align 4
  %108 = icmp ne i32 %105, 0
  %109 = icmp ne i32 %107, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %126

111:                                              ; preds = %78
  %112 = zext i32 %105 to i64
  %113 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %114 = load i32, ptr %113, align 4
  %115 = zext i32 %114 to i64
  %116 = mul nuw nsw i64 %112, 1000000
  %117 = mul i64 %116, %115
  %118 = icmp ult i64 %117, 4294967296
  br i1 %118, label %119, label %123, !prof !21

119:                                              ; preds = %111
  %120 = trunc i64 %117 to i32
  %121 = udiv i32 %120, %107
  %122 = zext i32 %121 to i64
  br label %126

123:                                              ; preds = %111
  %124 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %107, i64 %117) #26, !srcloc !57
  %125 = extractvalue { i64, i64 } %124, 1
  br label %126

126:                                              ; preds = %123, %119, %78
  %127 = phi i64 [ %122, %119 ], [ %125, %123 ], [ 0, %78 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #22
  store i64 %127, ptr %23, align 8
  %128 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %23, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #22
  %129 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %130 = load i32, ptr %129, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #22
  store i32 %130, ptr %22, align 4
  %131 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %22) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #22
  %132 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %133 = load i32, ptr %132, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #22
  store i32 %133, ptr %21, align 4
  %134 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %21) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #22
  %135 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #22
  store i32 %136, ptr %20, align 4
  %137 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %20) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #22
  %138 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %139 = load i8, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #22
  store i8 %139, ptr %19, align 1
  %140 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #22
  %141 = load i16, ptr %33, align 4
  %142 = trunc i16 %141 to i8
  %143 = lshr i8 %142, 2
  %144 = and i8 %143, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #22
  store i8 %144, ptr %18, align 1
  %145 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #22
  %146 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %147 = load i32, ptr %146, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #22
  store i32 %147, ptr %17, align 4
  %148 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #22
  %149 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %150 = load i32, ptr %149, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #22
  store i32 %150, ptr %16, align 4
  %151 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #22
  %152 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %153 = load i32, ptr %152, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #22
  store i32 %153, ptr %15, align 4
  %154 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #22
  %155 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %158 = load i32, ptr %157, align 4
  %159 = sub i32 %156, %158
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #22
  store i32 %159, ptr %14, align 4
  %160 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #22
  %161 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %162 = load i8, ptr %161, align 4
  %163 = and i8 %162, 31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #22
  store i8 %163, ptr %13, align 1
  %164 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 14, i32 noundef 1, ptr noundef nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #22
  %165 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 13
  %166 = load i64, ptr %165, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  store i64 %166, ptr %12, align 8
  %167 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 18, i32 noundef 8, ptr noundef nonnull %12, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  %168 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 101
  %169 = load i64, ptr %168, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  store i64 %169, ptr %11, align 8
  %170 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 19, i32 noundef 8, ptr noundef nonnull %11, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  %171 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 15
  %172 = load i32, ptr %171, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 %172, ptr %10, align 4
  %173 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  %174 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %175 = load i32, ptr %174, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %175, ptr %9, align 4
  %176 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %177 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 %179, ptr %8, align 4
  %180 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  %181 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 108
  %182 = load i16, ptr %181, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #22
  store i16 %182, ptr %7, align 2
  %183 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 23, i32 noundef 2, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #22
  %184 = load i32, ptr %155, align 4
  %185 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %186 = load i32, ptr %185, align 4
  %187 = sub i32 %184, %186
  %188 = call i32 @llvm.smax.i32(i32 %187, i32 0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 %188, ptr %6, align 4
  %189 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  %190 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %191 = load i64, ptr %190, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 %191, ptr %5, align 8
  %192 = call i32 @nla_put_64bit(ptr noundef nonnull %30, i32 noundef 25, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %193 = icmp eq ptr %2, null
  br i1 %193, label %218, label %194

194:                                              ; preds = %126
  %195 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  %196 = load i16, ptr %195, align 8
  switch i16 %196, label %215 [
    i16 8, label %197
    i16 -8826, label %206
  ]

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %201 = load i16, ptr %200, align 4
  %202 = zext i16 %201 to i32
  %203 = getelementptr i8, ptr %199, i32 %202
  %204 = getelementptr inbounds %struct.iphdr, ptr %203, i32 0, i32 5
  %205 = load i8, ptr %204, align 4
  br label %215

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %210 = load i16, ptr %209, align 4
  %211 = zext i16 %210 to i32
  %212 = getelementptr i8, ptr %208, i32 %211
  %213 = getelementptr inbounds %struct.ipv6hdr, ptr %212, i32 0, i32 4
  %214 = load i8, ptr %213, align 1
  br label %215

215:                                              ; preds = %206, %197, %194
  %216 = phi i8 [ %205, %197 ], [ %214, %206 ], [ 0, %194 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  store i8 %216, ptr %4, align 1
  %217 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 26, i32 noundef 1, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  br label %218

218:                                              ; preds = %215, %126, %3
  ret ptr %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tcp_bpf_bypass_getsockopt(i32 noundef %0, i32 noundef %1) #13 {
  %3 = icmp eq i32 %0, 6
  %4 = icmp eq i32 %1, 35
  %5 = and i1 %3, %4
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca %struct.timespec64, align 8
  %14 = alloca %struct.timespec64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca %struct.iovec, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [32 x ptr], align 4
  %21 = alloca %struct.msghdr, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.tcp_info, align 8
  %24 = alloca %union.tcp_cc_info, align 4
  %25 = alloca i32, align 4
  %26 = alloca [4 x i64], align 8
  %27 = alloca %struct.tcp_repair_window, align 4
  %28 = alloca %struct.scm_timestamping_internal, align 8
  %29 = alloca %struct.tcp_zerocopy_receive, align 8
  %30 = icmp eq i32 %1, 6
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %33, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #22
  br label %1258

37:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #22
  store i32 0, ptr %22, align 4, !annotation !35
  %38 = tail call ptr @llvm.thread.pointer() #22
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %43 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !58
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %1256

46:                                               ; preds = %37
  %47 = extractvalue { i32, i32 } %43, 1
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 4) #22
  switch i32 %2, label %1256 [
    i32 2, label %49
    i32 1, label %73
    i32 3, label %79
    i32 4, label %85
    i32 5, label %92
    i32 6, label %99
    i32 7, label %106
    i32 8, label %113
    i32 9, label %122
    i32 10, label %140
    i32 11, label %143
    i32 26, label %173
    i32 12, label %217
    i32 13, label %222
    i32 31, label %253
    i32 33, label %291
    i32 16, label %326
    i32 17, label %332
    i32 19, label %333
    i32 20, label %339
    i32 29, label %348
    i32 21, label %390
    i32 18, label %399
    i32 23, label %402
    i32 30, label %405
    i32 34, label %411
    i32 37, label %417
    i32 24, label %420
    i32 25, label %430
    i32 36, label %433
    i32 27, label %439
    i32 28, label %444
    i32 35, label %505
  ]

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %22, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %55 = load volatile i8, ptr %54, align 2
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, 1152
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  store i32 %63, ptr %22, align 4
  br label %64

64:                                               ; preds = %60, %53, %49
  %65 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %66 = load i16, ptr %65, align 4
  %67 = and i16 %66, 16384
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %1237, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  store i32 %72, ptr %22, align 4
  br label %1237

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %75 = load i16, ptr %74, align 4
  %76 = lshr i16 %75, 8
  %77 = and i16 %76, 1
  %78 = zext i16 %77 to i32
  store i32 %78, ptr %22, align 4
  br label %1237

79:                                               ; preds = %46
  %80 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %81 = load i16, ptr %80, align 4
  %82 = lshr i16 %81, 9
  %83 = and i16 %82, 1
  %84 = zext i16 %83 to i32
  store i32 %84, ptr %22, align 4
  br label %1237

85:                                               ; preds = %46
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 104
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  %89 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 50), align 4
  %90 = select i1 %88, i32 %89, i32 %87
  %91 = sdiv i32 %90, 100
  store i32 %91, ptr %22, align 4
  br label %1237

92:                                               ; preds = %46
  %93 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 105
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  %96 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 51), align 16
  %97 = select i1 %95, i32 %96, i32 %94
  %98 = sdiv i32 %97, 100
  store i32 %98, ptr %22, align 4
  br label %1237

99:                                               ; preds = %46
  %100 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 57
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  %103 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 52), align 4
  %104 = select i1 %102, i8 %103, i8 %101
  %105 = zext i8 %104 to i32
  store i32 %105, ptr %22, align 4
  br label %1237

106:                                              ; preds = %46
  %107 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 21
  %108 = load i8, ptr %107, align 8
  %109 = icmp eq i8 %108, 0
  %110 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 53), align 1
  %111 = select i1 %109, i8 %110, i8 %108
  %112 = zext i8 %111 to i32
  store i32 %112, ptr %22, align 4
  br label %1237

113:                                              ; preds = %46
  %114 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 106
  %115 = load i32, ptr %114, align 8
  store i32 %115, ptr %22, align 4
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %1237

117:                                              ; preds = %113
  %118 = icmp eq i32 %115, 0
  %119 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 62), align 4
  %120 = select i1 %118, i32 %119, i32 %115
  %121 = sdiv i32 %120, 100
  store i32 %121, ptr %22, align 4
  br label %1237

122:                                              ; preds = %46
  %123 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 1
  %124 = load i8, ptr %123, align 4
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = add i8 %124, -1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %129, %126
  %130 = phi i8 [ %136, %129 ], [ %127, %126 ]
  %131 = phi i32 [ %135, %129 ], [ 1, %126 ]
  %132 = phi i32 [ %134, %129 ], [ 1, %126 ]
  %133 = shl i32 %132, 1
  %134 = tail call i32 @llvm.smin.i32(i32 %133, i32 120) #22
  %135 = add i32 %134, %131
  %136 = add i8 %130, -1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %129

138:                                              ; preds = %129, %126, %122
  %139 = phi i32 [ 0, %122 ], [ 1, %126 ], [ %135, %129 ]
  store i32 %139, ptr %22, align 4
  br label %1237

140:                                              ; preds = %46
  %141 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %142 = load i32, ptr %141, align 8
  store i32 %142, ptr %22, align 4
  br label %1237

143:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %23) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(232) %23, i8 0, i32 232, i1 false) #22, !annotation !35
  %144 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %147 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !59
  %148 = extractvalue { i32, i32 } %147, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %143
  %151 = extractvalue { i32, i32 } %147, 1
  call void @tcp_get_info(ptr noundef %0, ptr noundef nonnull %23) #22
  %152 = call i32 @llvm.umin.i32(i32 %151, i32 232) #22
  %153 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %154 = and i32 %153, -13
  %155 = or i32 %154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %156 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %152, i32 -1090519041) #22, !srcloc !60
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %150
  %159 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %152, i32 -1090519040) #26, !srcloc !61
  %160 = extractvalue { i32, i32 } %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %164 = and i32 %163, -13
  %165 = or i32 %164, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %166 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %23, i32 noundef %152) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %167

167:                                              ; preds = %162, %158
  %168 = phi i32 [ %166, %162 ], [ %152, %158 ]
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 0, i32 -14
  br label %171

171:                                              ; preds = %167, %150, %143
  %172 = phi i32 [ -14, %143 ], [ -14, %150 ], [ %170, %167 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %23) #22
  br label %1256

173:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %24) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 20, i1 false) #22, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #22
  store i32 0, ptr %25, align 4, !annotation !35
  %174 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %175 = and i32 %174, -13
  %176 = or i32 %175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %177 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !62
  %178 = extractvalue { i32, i32 } %177, 0
  %179 = extractvalue { i32, i32 } %177, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %174) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %181, label %215

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %183, i32 0, i32 10
  %187 = load ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = call i32 %187(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %25, ptr noundef nonnull %24) #22
  br label %191

191:                                              ; preds = %189, %185, %181
  %192 = phi i32 [ %190, %189 ], [ 0, %185 ], [ 0, %181 ]
  %193 = call i32 @llvm.umin.i32(i32 %179, i32 %192) #22
  %194 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %195 = and i32 %194, -13
  %196 = or i32 %195, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %197 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %193, i32 -1090519041) #22, !srcloc !63
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %191
  %200 = icmp ugt i32 %193, 20
  br i1 %200, label %201, label %202, !prof !28

201:                                              ; preds = %199
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 20, i32 noundef %193) #22
  br label %215

202:                                              ; preds = %199
  %203 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %193, i32 -1090519040) #26, !srcloc !61
  %204 = extractvalue { i32, i32 } %203, 0
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %208 = and i32 %207, -13
  %209 = or i32 %208, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %209) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %210 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %24, i32 noundef %193) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %207) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %211

211:                                              ; preds = %206, %202
  %212 = phi i32 [ %210, %206 ], [ %193, %202 ]
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 0, i32 -14
  br label %215

215:                                              ; preds = %211, %201, %191, %173
  %216 = phi i32 [ -14, %173 ], [ -14, %191 ], [ -14, %201 ], [ %214, %211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %24) #22
  br label %1256

217:                                              ; preds = %46
  %218 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %219 = load i8, ptr %218, align 2
  %220 = icmp ult i8 %219, 3
  %221 = zext i1 %220 to i32
  store i32 %221, ptr %22, align 4
  br label %1237

222:                                              ; preds = %46
  %223 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %224 = and i32 %223, -13
  %225 = or i32 %224, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %225) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %226 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !64
  %227 = extractvalue { i32, i32 } %226, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %1256

229:                                              ; preds = %222
  %230 = extractvalue { i32, i32 } %226, 1
  %231 = tail call i32 @llvm.umin.i32(i32 %230, i32 16) #22
  %232 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %233 = and i32 %232, -13
  %234 = or i32 %233, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %234) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %235 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %231, i32 -1090519041) #22, !srcloc !65
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %1256

237:                                              ; preds = %229
  %238 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %231, i32 -1090519040) #26, !srcloc !61
  %239 = extractvalue { i32, i32 } %238, 0
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %243, i32 0, i32 11
  %245 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %246 = and i32 %245, -13
  %247 = or i32 %246, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %248 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %244, i32 noundef %231) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %249

249:                                              ; preds = %241, %237
  %250 = phi i32 [ %248, %241 ], [ %231, %237 ]
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i32 0, i32 -14
  br label %1256

253:                                              ; preds = %46
  %254 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %255 = and i32 %254, -13
  %256 = or i32 %255, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %256) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %257 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !66
  %258 = extractvalue { i32, i32 } %257, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %254) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %1256

260:                                              ; preds = %253
  %261 = extractvalue { i32, i32 } %257, 1
  %262 = tail call i32 @llvm.umin.i32(i32 %261, i32 16) #22
  %263 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 12
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  %266 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16
  %267 = and i32 %266, -13
  %268 = or i32 %267, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %268) #22
  tail call void asm sideeffect "isb ", "~{memory}"() #22
  br i1 %265, label %269, label %273

269:                                              ; preds = %260
  %270 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1090519041) #22, !srcloc !67
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %266) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %271 = icmp eq i32 %270, 0
  %272 = select i1 %271, i32 0, i32 -14
  br label %1256

273:                                              ; preds = %260
  %274 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %262, i32 -1090519041) #22, !srcloc !68
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %266) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %1256

276:                                              ; preds = %273
  %277 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %262, i32 -1090519040) #26, !srcloc !61
  %278 = extractvalue { i32, i32 } %277, 0
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %276
  %281 = load ptr, ptr %263, align 4
  %282 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %281, i32 0, i32 7
  %283 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %284 = and i32 %283, -13
  %285 = or i32 %284, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %285) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %286 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %282, i32 noundef %262) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %283) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %287

287:                                              ; preds = %280, %276
  %288 = phi i32 [ %286, %280 ], [ %262, %276 ]
  %289 = icmp eq i32 %288, 0
  %290 = select i1 %289, i32 0, i32 -14
  br label %1256

291:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i32 32, i1 false) #22, !annotation !35
  %292 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %293 = and i32 %292, -13
  %294 = or i32 %293, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %294) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %295 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !69
  %296 = extractvalue { i32, i32 } %295, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %292) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %324

298:                                              ; preds = %291
  %299 = extractvalue { i32, i32 } %295, 1
  %300 = call i32 @tcp_fastopen_get_cipher(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %26) #22
  %301 = shl i32 %300, 4
  %302 = call i32 @llvm.umin.i32(i32 %299, i32 %301) #22
  %303 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %304 = and i32 %303, -13
  %305 = or i32 %304, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %305) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %306 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %302, i32 -1090519041) #22, !srcloc !70
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %303) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %324

308:                                              ; preds = %298
  %309 = icmp ugt i32 %302, 32
  br i1 %309, label %310, label %311, !prof !28

310:                                              ; preds = %308
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 32, i32 noundef %302) #22
  br label %324

311:                                              ; preds = %308
  %312 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %302, i32 -1090519040) #26, !srcloc !61
  %313 = extractvalue { i32, i32 } %312, 0
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %317 = and i32 %316, -13
  %318 = or i32 %317, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %318) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %319 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %26, i32 noundef %302) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %316) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %320

320:                                              ; preds = %315, %311
  %321 = phi i32 [ %319, %315 ], [ %302, %311 ]
  %322 = icmp eq i32 %321, 0
  %323 = select i1 %322, i32 0, i32 -14
  br label %324

324:                                              ; preds = %320, %310, %298, %291
  %325 = phi i32 [ -14, %291 ], [ -14, %298 ], [ -14, %310 ], [ %323, %320 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #22
  br label %1256

326:                                              ; preds = %46
  %327 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %328 = load i16, ptr %327, align 4
  %329 = lshr i16 %328, 12
  %330 = and i16 %329, 1
  %331 = zext i16 %330 to i32
  store i32 %331, ptr %22, align 4
  br label %1237

332:                                              ; preds = %46
  store i32 0, ptr %22, align 4
  br label %1237

333:                                              ; preds = %46
  %334 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %335 = load i16, ptr %334, align 4
  %336 = lshr i16 %335, 14
  %337 = and i16 %336, 1
  %338 = zext i16 %337 to i32
  store i32 %338, ptr %22, align 4
  br label %1237

339:                                              ; preds = %46
  %340 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %341 = load i16, ptr %340, align 4
  %342 = and i16 %341, 16384
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %1256, label %344

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  %346 = load i8, ptr %345, align 2
  %347 = zext i8 %346 to i32
  store i32 %347, ptr %22, align 4
  br label %1237

348:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %27) #22
  %349 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %350 = and i32 %349, -13
  %351 = or i32 %350, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %351) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %352 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !71
  %353 = extractvalue { i32, i32 } %352, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %349) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %388

355:                                              ; preds = %348
  %356 = extractvalue { i32, i32 } %352, 1
  %357 = icmp eq i32 %356, 20
  br i1 %357, label %358, label %388

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %360 = load i16, ptr %359, align 4
  %361 = and i16 %360, 16384
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %388, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  %365 = load i32, ptr %364, align 8
  store i32 %365, ptr %27, align 4
  %366 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr inbounds %struct.tcp_repair_window, ptr %27, i32 0, i32 1
  store i32 %367, ptr %368, align 4
  %369 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %370 = load i32, ptr %369, align 8
  %371 = getelementptr inbounds %struct.tcp_repair_window, ptr %27, i32 0, i32 2
  store i32 %370, ptr %371, align 4
  %372 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %373 = load i32, ptr %372, align 8
  %374 = getelementptr inbounds %struct.tcp_repair_window, ptr %27, i32 0, i32 3
  store i32 %373, ptr %374, align 4
  %375 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %376 = load i32, ptr %375, align 8
  %377 = getelementptr inbounds %struct.tcp_repair_window, ptr %27, i32 0, i32 4
  store i32 %376, ptr %377, align 4
  %378 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 20, i32 -1090519040) #26, !srcloc !61
  %379 = extractvalue { i32, i32 } %378, 0
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %363
  %382 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %383 = and i32 %382, -13
  %384 = or i32 %383, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %384) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %385 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %27, i32 noundef 20) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %382) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %386, i32 0, i32 -14
  br label %388

388:                                              ; preds = %381, %363, %358, %355, %348
  %389 = phi i32 [ -14, %348 ], [ -22, %355 ], [ -1, %358 ], [ -14, %363 ], [ %387, %381 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %27) #22
  br label %1256

390:                                              ; preds = %46
  %391 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  %392 = load i8, ptr %391, align 2
  switch i8 %392, label %1256 [
    i8 2, label %393
    i8 1, label %396
  ]

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %395 = load i32, ptr %394, align 4
  store i32 %395, ptr %22, align 4
  br label %1237

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %398 = load i32, ptr %397, align 8
  store i32 %398, ptr %22, align 4
  br label %1237

399:                                              ; preds = %46
  %400 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  %401 = load i32, ptr %400, align 4
  store i32 %401, ptr %22, align 4
  br label %1237

402:                                              ; preds = %46
  %403 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 4
  %404 = load i32, ptr %403, align 4
  store i32 %404, ptr %22, align 4
  br label %1237

405:                                              ; preds = %46
  %406 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %407 = load i16, ptr %406, align 4
  %408 = lshr i16 %407, 3
  %409 = and i16 %408, 1
  %410 = zext i16 %409 to i32
  store i32 %410, ptr %22, align 4
  br label %1237

411:                                              ; preds = %46
  %412 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %413 = load i16, ptr %412, align 4
  %414 = lshr i16 %413, 4
  %415 = and i16 %414, 1
  %416 = zext i16 %415 to i32
  store i32 %416, ptr %22, align 4
  br label %1237

417:                                              ; preds = %46
  %418 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %419 = load i32, ptr %418, align 4
  store i32 %419, ptr %22, align 4
  br label %1237

420:                                              ; preds = %46
  %421 = tail call i64 @ktime_get() #22
  %422 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %421) #26, !srcloc !52
  %423 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %421, i64 %422, i32 0) #26, !srcloc !53
  %424 = extractvalue { i64, i32 } %423, 0
  %425 = lshr i64 %424, 18
  %426 = trunc i64 %425 to i32
  %427 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %428 = load i32, ptr %427, align 4
  %429 = add i32 %428, %426
  store i32 %429, ptr %22, align 4
  br label %1237

430:                                              ; preds = %46
  %431 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 81
  %432 = load i32, ptr %431, align 8
  store i32 %432, ptr %22, align 4
  br label %1237

433:                                              ; preds = %46
  %434 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %435 = load i16, ptr %434, align 4
  %436 = lshr i16 %435, 13
  %437 = and i16 %436, 1
  %438 = zext i16 %437 to i32
  store i32 %438, ptr %22, align 4
  br label %1237

439:                                              ; preds = %46
  %440 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %441 = load i8, ptr %440, align 1
  %442 = and i8 %441, 3
  %443 = zext i8 %442 to i32
  store i32 %443, ptr %22, align 4
  br label %1237

444:                                              ; preds = %46
  %445 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %446 = and i32 %445, -13
  %447 = or i32 %446, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %447) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %448 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !72
  %449 = extractvalue { i32, i32 } %448, 0
  %450 = extractvalue { i32, i32 } %448, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %445) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %451 = icmp eq i32 %449, 0
  br i1 %451, label %452, label %1256

452:                                              ; preds = %444
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %453 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 117
  %454 = load ptr, ptr %453, align 4
  %455 = icmp eq ptr %454, null
  br i1 %455, label %498, label %456

456:                                              ; preds = %452
  %457 = load i32, ptr %454, align 4
  %458 = getelementptr inbounds %struct.saved_syn, ptr %454, i32 0, i32 1
  %459 = load i32, ptr %458, align 4
  %460 = add i32 %459, %457
  %461 = getelementptr inbounds %struct.saved_syn, ptr %454, i32 0, i32 2
  %462 = load i32, ptr %461, align 4
  %463 = add i32 %460, %462
  %464 = icmp ult i32 %450, %463
  %465 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16
  %466 = and i32 %465, -13
  %467 = or i32 %466, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %467) #22
  tail call void asm sideeffect "isb ", "~{memory}"() #22
  %468 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %463, i32 -1090519041) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %465) #22
  tail call void asm sideeffect "isb ", "~{memory}"() #22
  %469 = icmp eq i32 %468, 0
  br i1 %464, label %470, label %472

470:                                              ; preds = %456
  tail call void @release_sock(ptr noundef %0) #22
  %471 = select i1 %469, i32 -22, i32 -14
  br label %1256

472:                                              ; preds = %456
  br i1 %469, label %474, label %473

473:                                              ; preds = %472
  tail call void @release_sock(ptr noundef %0) #22
  br label %1256

474:                                              ; preds = %472
  %475 = load ptr, ptr %453, align 4
  %476 = getelementptr inbounds %struct.saved_syn, ptr %475, i32 0, i32 3
  %477 = icmp slt i32 %463, 0
  %478 = load i1, ptr @check_copy_size.__already_done, align 1
  %479 = xor i1 %478, true
  %480 = select i1 %477, i1 %479, i1 false
  br i1 %480, label %481, label %482, !prof !28

481:                                              ; preds = %474
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #22
  br label %482

482:                                              ; preds = %481, %474
  br i1 %477, label %495, label %483, !prof !28

483:                                              ; preds = %482
  %484 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %463, i32 -1090519040) #26, !srcloc !61
  %485 = extractvalue { i32, i32 } %484, 0
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %483
  %488 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %489 = and i32 %488, -13
  %490 = or i32 %489, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %490) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %491 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %476, i32 noundef %463) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %488) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %492

492:                                              ; preds = %487, %483
  %493 = phi i32 [ %491, %487 ], [ %463, %483 ]
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %496, label %495

495:                                              ; preds = %492, %482
  tail call void @release_sock(ptr noundef %0) #22
  br label %1256

496:                                              ; preds = %492
  %497 = load ptr, ptr %453, align 4
  tail call void @kfree(ptr noundef %497) #22
  store ptr null, ptr %453, align 4
  tail call void @release_sock(ptr noundef %0) #22
  br label %504

498:                                              ; preds = %452
  tail call void @release_sock(ptr noundef %0) #22
  %499 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %500 = and i32 %499, -13
  %501 = or i32 %500, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %501) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %502 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1090519041) #22, !srcloc !73
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %499) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %1256

504:                                              ; preds = %498, %496
  br label %1256

505:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %28) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i32 48, i1 false) #22, !annotation !35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %29, i8 0, i32 64, i1 false) #22
  %506 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %507 = and i32 %506, -13
  %508 = or i32 %507, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %508) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %509 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #22, !srcloc !74
  %510 = extractvalue { i32, i32 } %509, 0
  %511 = extractvalue { i32, i32 } %509, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %506) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %512 = icmp eq i32 %510, 0
  br i1 %512, label %513, label %1235

513:                                              ; preds = %505
  %514 = icmp slt i32 %511, 12
  br i1 %514, label %1235, label %515

515:                                              ; preds = %513
  %516 = icmp ugt i32 %511, 64
  br i1 %516, label %517, label %531, !prof !28

517:                                              ; preds = %515
  %518 = getelementptr i8, ptr %3, i32 64
  %519 = add nsw i32 %511, -64
  %520 = tail call i32 @check_zeroed_user(ptr noundef %518, i32 noundef %519) #22
  %521 = icmp slt i32 %520, 1
  br i1 %521, label %522, label %525

522:                                              ; preds = %517
  %523 = icmp eq i32 %520, 0
  %524 = select i1 %523, i32 -22, i32 %520
  br label %1235

525:                                              ; preds = %517
  %526 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %527 = and i32 %526, -13
  %528 = or i32 %527, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %528) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %529 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 64, i32 -1090519041) #22, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %526) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %1235

531:                                              ; preds = %525, %515
  %532 = phi i32 [ 64, %525 ], [ %511, %515 ]
  %533 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %532, i32 -1090519040) #26
  %534 = extractvalue { i32, i32 } %533, 0
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %542, !prof !21

536:                                              ; preds = %531
  %537 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %538 = and i32 %537, -13
  %539 = or i32 %538, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %539) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %540 = call i32 @arm_copy_from_user(ptr noundef nonnull %29, ptr noundef %3, i32 noundef %532) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %537) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %546, label %542, !prof !21

542:                                              ; preds = %536, %531
  %543 = phi i32 [ %540, %536 ], [ %532, %531 ]
  %544 = sub i32 %532, %543
  %545 = getelementptr i8, ptr %29, i32 %544
  call void @llvm.memset.p0.i32(ptr align 1 %545, i8 0, i32 %543, i1 false) #22
  br label %1235

546:                                              ; preds = %536
  %547 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 11
  %548 = load i32, ptr %547, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %1235

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 10
  %552 = load i32, ptr %551, align 8
  %553 = and i32 %552, -3
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %1235

555:                                              ; preds = %550
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #22
  store i32 0, ptr %19, align 4, !annotation !35
  %556 = load i64, ptr %29, align 8
  %557 = trunc i64 %556 to i32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %20) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %20, i8 0, i32 128, i1 false) #22, !annotation !35
  %558 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 6
  %559 = load i32, ptr %558, align 8
  %560 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %561 = load i32, ptr %560, align 4
  %562 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %563 = load volatile i8, ptr %562, align 2
  %564 = zext i8 %563 to i32
  %565 = shl nuw i32 1, %564
  %566 = and i32 %565, 12
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %597

568:                                              ; preds = %555
  %569 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %570 = load volatile i32, ptr %569, align 4
  %571 = and i32 %570, 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %587

573:                                              ; preds = %568
  %574 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %575 = load i16, ptr %574, align 4
  %576 = icmp eq i16 %575, 0
  br i1 %576, label %587, label %577

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %579 = load i32, ptr %578, align 4
  %580 = sub i32 %579, %561
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %587, label %582

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %584 = load i32, ptr %583, align 8
  %585 = sub i32 %579, %584
  %586 = icmp slt i32 %585, 0
  br i1 %586, label %597, label %587

587:                                              ; preds = %582, %577, %573, %568
  %588 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %589 = load i32, ptr %588, align 8
  %590 = icmp eq i32 %589, %561
  br i1 %590, label %597, label %591

591:                                              ; preds = %587
  %592 = sub i32 %589, %561
  %593 = load volatile i32, ptr %569, align 4
  %594 = shl i32 %593, 30
  %595 = ashr i32 %594, 31
  %596 = add i32 %592, %595
  br label %597

597:                                              ; preds = %591, %587, %582, %555
  %598 = phi i32 [ 0, %587 ], [ 0, %555 ], [ %596, %591 ], [ %580, %582 ]
  store i32 0, ptr %558, align 8
  store i32 0, ptr %551, align 8
  %599 = and i32 %557, 4095
  %600 = icmp eq i32 %599, 0
  %601 = icmp ult i64 %556, 4294967296
  %602 = select i1 %600, i1 %601, i1 false
  br i1 %602, label %603, label %1141

603:                                              ; preds = %597
  %604 = load volatile i8, ptr %562, align 2
  %605 = icmp eq i8 %604, 10
  br i1 %605, label %1141, label %606

606:                                              ; preds = %603
  %607 = load volatile i32, ptr @rfs_needed, align 4
  %608 = icmp sgt i32 %607, 0
  br i1 %608, label %609, label %633, !prof !28

609:                                              ; preds = %606
  %610 = load volatile i8, ptr %562, align 2
  %611 = icmp eq i8 %610, 1
  br i1 %611, label %612, label %633

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %614 = load i32, ptr %613, align 8
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !76
  %615 = load volatile ptr, ptr @rps_sock_flow_table, align 4
  %616 = icmp ne ptr %615, null
  %617 = icmp ne i32 %614, 0
  %618 = and i1 %617, %616
  br i1 %618, label %619, label %632

619:                                              ; preds = %612
  %620 = load i32, ptr %615, align 64
  %621 = and i32 %620, %614
  %622 = load i32, ptr @rps_cpu_mask, align 4
  %623 = xor i32 %622, -1
  %624 = and i32 %614, %623
  %625 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %626 = load i32, ptr %625, align 8
  %627 = or i32 %626, %624
  %628 = getelementptr %struct.rps_sock_flow_table, ptr %615, i32 0, i32 2, i32 %621
  %629 = load i32, ptr %628, align 4
  %630 = icmp eq i32 %629, %627
  br i1 %630, label %632, label %631

631:                                              ; preds = %619
  store i32 %627, ptr %628, align 4
  br label %632

632:                                              ; preds = %631, %619, %612
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !77
  br label %633

633:                                              ; preds = %632, %609, %606
  %634 = icmp eq i32 %598, 0
  %635 = icmp sgt i32 %598, %559
  %636 = select i1 %634, i1 true, i1 %635
  br i1 %636, label %743, label %637

637:                                              ; preds = %633
  %638 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 5
  %639 = load i64, ptr %638, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %16, i8 0, i32 56, i1 false) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #22
  store i64 0, ptr %17, align 8, !annotation !35
  %640 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 1
  store i32 0, ptr %640, align 8
  %641 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 2
  store i32 0, ptr %641, align 4
  %642 = icmp ult i64 %639, 4294967296
  br i1 %642, label %643, label %741

643:                                              ; preds = %637
  %644 = trunc i64 %639 to i32
  %645 = inttoptr i32 %644 to ptr
  %646 = getelementptr inbounds %struct.msghdr, ptr %16, i32 0, i32 2
  %647 = call i32 @import_single_range(i32 noundef 0, ptr noundef %645, i32 noundef %598, ptr noundef nonnull %17, ptr noundef %646) #22
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %741

649:                                              ; preds = %643
  %650 = call fastcc i32 @tcp_recvmsg_locked(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %598, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %28, ptr noundef %551) #22
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %741, label %652

652:                                              ; preds = %649
  store i32 %650, ptr %558, align 8
  %653 = icmp eq i32 %650, 0
  br i1 %653, label %741, label %654, !prof !28

654:                                              ; preds = %652
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #22
  store i32 0, ptr %18, align 4, !annotation !35
  %655 = load i32, ptr %560, align 4
  %656 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %655, ptr noundef nonnull %18) #22
  %657 = icmp eq ptr %656, null
  br i1 %657, label %740, label %658

658:                                              ; preds = %654
  %659 = load i32, ptr %18, align 4
  %660 = getelementptr inbounds %struct.sk_buff, ptr %656, i32 0, i32 5
  %661 = load i32, ptr %660, align 8
  %662 = sub i32 %661, %659
  store i32 %662, ptr %641, align 4
  %663 = icmp ugt i32 %661, %659
  br i1 %663, label %664, label %740, !prof !21

664:                                              ; preds = %658
  %665 = getelementptr inbounds %struct.sk_buff, ptr %656, i32 0, i32 6
  %666 = load i32, ptr %665, align 4
  %667 = sub i32 %666, %661
  %668 = add i32 %667, %659
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %740, label %670

670:                                              ; preds = %664
  %671 = getelementptr inbounds %struct.sk_buff, ptr %656, i32 0, i32 15
  %672 = load ptr, ptr %671, align 4
  %673 = getelementptr inbounds %struct.skb_shared_info, ptr %672, i32 0, i32 6
  %674 = load ptr, ptr %673, align 8
  %675 = icmp eq ptr %674, null
  br i1 %675, label %676, label %740

676:                                              ; preds = %670
  %677 = getelementptr inbounds %struct.skb_shared_info, ptr %672, i32 0, i32 12
  %678 = icmp eq i32 %668, 0
  br i1 %678, label %689, label %679

679:                                              ; preds = %685, %676
  %680 = phi ptr [ %687, %685 ], [ %677, %676 ]
  %681 = phi i32 [ %686, %685 ], [ %668, %676 ]
  %682 = getelementptr inbounds %struct.bio_vec, ptr %680, i32 0, i32 1
  %683 = load i32, ptr %682, align 4
  %684 = icmp ult i32 %681, %683
  br i1 %684, label %689, label %685

685:                                              ; preds = %679
  %686 = sub i32 %681, %683
  %687 = getelementptr %struct.bio_vec, ptr %680, i32 1
  %688 = icmp eq i32 %686, 0
  br i1 %688, label %689, label %679

689:                                              ; preds = %685, %679, %676
  %690 = phi i32 [ 0, %676 ], [ %681, %679 ], [ 0, %685 ]
  %691 = phi ptr [ %677, %676 ], [ %680, %679 ], [ %687, %685 ]
  %692 = icmp eq ptr %691, null
  br i1 %692, label %740, label %693

693:                                              ; preds = %689
  %694 = icmp eq i32 %690, 0
  br i1 %694, label %708, label %695

695:                                              ; preds = %693
  %696 = getelementptr inbounds %struct.skb_shared_info, ptr %672, i32 0, i32 2
  %697 = load i8, ptr %696, align 2
  %698 = zext i8 %697 to i32
  %699 = add nsw i32 %698, -1
  %700 = getelementptr %struct.skb_shared_info, ptr %672, i32 0, i32 12, i32 %699
  %701 = icmp eq ptr %691, %700
  br i1 %701, label %740, label %702

702:                                              ; preds = %695
  %703 = getelementptr inbounds %struct.bio_vec, ptr %691, i32 0, i32 1
  %704 = load i32, ptr %703, align 4
  %705 = sub i32 %704, %690
  %706 = sub i32 %662, %705
  store i32 %706, ptr %641, align 4
  %707 = getelementptr %struct.bio_vec, ptr %691, i32 1
  br label %708

708:                                              ; preds = %702, %693
  %709 = phi i32 [ %706, %702 ], [ %662, %693 ]
  %710 = phi ptr [ %707, %702 ], [ %691, %693 ]
  %711 = phi i32 [ %705, %702 ], [ 0, %693 ]
  %712 = getelementptr inbounds %struct.bio_vec, ptr %710, i32 0, i32 1
  %713 = load i32, ptr %712, align 4
  %714 = icmp eq i32 %713, 4096
  br i1 %714, label %715, label %719, !prof !78

715:                                              ; preds = %708
  %716 = getelementptr inbounds %struct.bio_vec, ptr %710, i32 0, i32 2
  %717 = load i32, ptr %716, align 4
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %737, label %719, !prof !21

719:                                              ; preds = %715, %708
  %720 = icmp sgt i32 %709, 0
  br i1 %720, label %721, label %737

721:                                              ; preds = %733, %719
  %722 = phi i32 [ %736, %733 ], [ %713, %719 ]
  %723 = phi i32 [ %731, %733 ], [ 0, %719 ]
  %724 = phi ptr [ %734, %733 ], [ %710, %719 ]
  %725 = icmp eq i32 %722, 4096
  br i1 %725, label %726, label %730

726:                                              ; preds = %721
  %727 = getelementptr inbounds %struct.bio_vec, ptr %724, i32 0, i32 2
  %728 = load i32, ptr %727, align 4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %737, label %730

730:                                              ; preds = %726, %721
  %731 = add i32 %723, %722
  %732 = icmp slt i32 %731, %709
  br i1 %732, label %733, label %737

733:                                              ; preds = %730
  %734 = getelementptr %struct.bio_vec, ptr %724, i32 1
  %735 = getelementptr %struct.bio_vec, ptr %724, i32 1, i32 1
  %736 = load i32, ptr %735, align 4
  br label %721

737:                                              ; preds = %730, %726, %719, %715
  %738 = phi i32 [ 0, %715 ], [ 0, %719 ], [ %731, %730 ], [ %723, %726 ]
  %739 = add i32 %738, %711
  store i32 %739, ptr %641, align 4
  br label %740

740:                                              ; preds = %737, %695, %689, %670, %664, %658, %654
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #22
  br label %741

741:                                              ; preds = %740, %652, %649, %643, %637
  %742 = phi i32 [ -22, %637 ], [ %647, %643 ], [ %650, %649 ], [ 0, %740 ], [ 0, %652 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #22
  br label %1141

743:                                              ; preds = %633
  %744 = icmp ult i32 %598, 4096
  br i1 %744, label %745, label %754

745:                                              ; preds = %743
  %746 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 1
  store i32 0, ptr %746, align 8
  %747 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 2
  store i32 %598, ptr %747, align 4
  br i1 %634, label %748, label %753

748:                                              ; preds = %745
  %749 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %750 = load volatile i32, ptr %749, align 4
  %751 = and i32 %750, 2
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %1141

753:                                              ; preds = %748, %745
  br label %1141

754:                                              ; preds = %743
  %755 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 37
  %756 = load ptr, ptr %755, align 4
  %757 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %758 = icmp sgt i32 %757, 0
  br i1 %758, label %759, label %760

759:                                              ; preds = %754
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %756, i1 noundef zeroext false) #22
  br label %760

760:                                              ; preds = %759, %754
  %761 = getelementptr inbounds %struct.anon.14, ptr %756, i32 0, i32 15
  call void @down_read(ptr noundef %761) #22
  %762 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %763 = icmp sgt i32 %762, 0
  br i1 %763, label %764, label %765

764:                                              ; preds = %760
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %756, i1 noundef zeroext false, i1 noundef zeroext true) #22
  br label %765

765:                                              ; preds = %764, %760
  %766 = load ptr, ptr %755, align 4
  %767 = call ptr @find_vma(ptr noundef %766, i32 noundef %557) #22
  %768 = icmp eq ptr %767, null
  br i1 %768, label %776, label %769

769:                                              ; preds = %765
  %770 = load i32, ptr %767, align 4
  %771 = icmp ugt i32 %770, %557
  br i1 %771, label %776, label %772

772:                                              ; preds = %769
  %773 = getelementptr inbounds %struct.vm_area_struct, ptr %767, i32 0, i32 12
  %774 = load ptr, ptr %773, align 4
  %775 = icmp eq ptr %774, @tcp_vm_ops
  br i1 %775, label %783, label %776

776:                                              ; preds = %772, %769, %765
  %777 = load ptr, ptr %755, align 4
  %778 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %779 = icmp sgt i32 %778, 0
  br i1 %779, label %780, label %781

780:                                              ; preds = %776
  call void @__mmap_lock_do_trace_released(ptr noundef %777, i1 noundef zeroext false) #22
  br label %781

781:                                              ; preds = %780, %776
  %782 = getelementptr inbounds %struct.anon.14, ptr %777, i32 0, i32 15
  call void @up_read(ptr noundef %782) #22
  br label %1141

783:                                              ; preds = %772
  %784 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 1
  %785 = load i32, ptr %784, align 8
  %786 = getelementptr inbounds %struct.vm_area_struct, ptr %767, i32 0, i32 1
  %787 = load i32, ptr %786, align 4
  %788 = sub i32 %787, %557
  %789 = call i32 @llvm.umin.i32(i32 %785, i32 %788) #22
  %790 = call i32 @llvm.umin.i32(i32 %789, i32 %598) #22
  %791 = and i32 %790, -4096
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %795

793:                                              ; preds = %783
  store i32 %790, ptr %784, align 8
  %794 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 2
  store i32 %790, ptr %794, align 4
  br label %986

795:                                              ; preds = %783
  %796 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 7
  %797 = load i32, ptr %796, align 4
  %798 = and i32 %797, 1
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %801

800:                                              ; preds = %795
  call void @zap_page_range(ptr noundef nonnull %767, i32 noundef %557, i32 noundef %791) #22
  br label %801

801:                                              ; preds = %800, %795
  store i32 %791, ptr %784, align 8
  %802 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 2
  store i32 0, ptr %802, align 4
  %803 = getelementptr inbounds i8, ptr %28, i32 8
  %804 = getelementptr inbounds [3 x %struct.timespec64], ptr %28, i32 0, i32 2
  %805 = getelementptr inbounds [3 x %struct.timespec64], ptr %28, i32 0, i32 2, i32 1
  %806 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 7
  br label %807

807:                                              ; preds = %977, %801
  %808 = phi i32 [ 0, %801 ], [ %978, %977 ]
  %809 = phi i32 [ 4096, %801 ], [ %975, %977 ]
  %810 = phi ptr [ null, %801 ], [ %888, %977 ]
  %811 = phi i32 [ 0, %801 ], [ %973, %977 ]
  %812 = phi ptr [ null, %801 ], [ %924, %977 ]
  %813 = phi i32 [ %561, %801 ], [ %972, %977 ]
  %814 = phi i32 [ %557, %801 ], [ %971, %977 ]
  %815 = phi i32 [ 0, %801 ], [ %809, %977 ]
  %816 = icmp ult i32 %808, 4096
  br i1 %816, label %817, label %885

817:                                              ; preds = %807
  %818 = icmp eq ptr %810, null
  br i1 %818, label %826, label %819

819:                                              ; preds = %817
  %820 = icmp eq i32 %808, 0
  br i1 %820, label %821, label %979

821:                                              ; preds = %819
  %822 = load ptr, ptr %810, align 8
  %823 = getelementptr inbounds %struct.sk_buff, ptr %822, i32 0, i32 3
  %824 = load i32, ptr %823, align 8
  %825 = sub i32 %813, %824
  store i32 %825, ptr %19, align 4
  br label %828

826:                                              ; preds = %817
  %827 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %813, ptr noundef nonnull %19) #22
  br label %828

828:                                              ; preds = %826, %821
  %829 = phi ptr [ %822, %821 ], [ %827, %826 ]
  %830 = getelementptr inbounds %struct.sk_buff, ptr %829, i32 0, i32 3, i32 15
  %831 = load i8, ptr %830, align 1
  %832 = and i8 %831, 4
  %833 = icmp eq i8 %832, 0
  br i1 %833, label %851, label %834

834:                                              ; preds = %828
  %835 = getelementptr inbounds %struct.sk_buff, ptr %829, i32 0, i32 2
  %836 = load i64, ptr %835, align 8
  %837 = icmp eq i64 %836, 0
  br i1 %837, label %839, label %838

838:                                              ; preds = %834
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %28, i64 noundef %836) #22
  br label %840

839:                                              ; preds = %834
  store i64 0, ptr %28, align 8
  store i32 0, ptr %803, align 8
  br label %840

840:                                              ; preds = %839, %838
  %841 = getelementptr inbounds %struct.sk_buff, ptr %829, i32 0, i32 15
  %842 = load ptr, ptr %841, align 4
  %843 = getelementptr inbounds %struct.skb_shared_info, ptr %842, i32 0, i32 7
  %844 = load i64, ptr %843, align 8
  %845 = icmp eq i64 %844, 0
  br i1 %845, label %847, label %846

846:                                              ; preds = %840
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %844) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %804, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  br label %848

847:                                              ; preds = %840
  store i64 0, ptr %804, align 8
  store i32 0, ptr %805, align 8
  br label %848

848:                                              ; preds = %847, %846
  %849 = load i32, ptr %551, align 8
  %850 = or i32 %849, 2
  store i32 %850, ptr %551, align 8
  br label %851

851:                                              ; preds = %848, %828
  %852 = getelementptr inbounds %struct.sk_buff, ptr %829, i32 0, i32 5
  %853 = load i32, ptr %852, align 8
  %854 = load i32, ptr %19, align 4
  %855 = sub i32 %853, %854
  store i32 %855, ptr %802, align 4
  %856 = icmp ugt i32 %853, %854
  br i1 %856, label %857, label %979, !prof !21

857:                                              ; preds = %851
  %858 = getelementptr inbounds %struct.sk_buff, ptr %829, i32 0, i32 6
  %859 = load i32, ptr %858, align 4
  %860 = sub i32 %859, %853
  %861 = add i32 %860, %854
  %862 = icmp slt i32 %861, 0
  br i1 %862, label %979, label %863

863:                                              ; preds = %857
  %864 = getelementptr inbounds %struct.sk_buff, ptr %829, i32 0, i32 15
  %865 = load ptr, ptr %864, align 4
  %866 = getelementptr inbounds %struct.skb_shared_info, ptr %865, i32 0, i32 6
  %867 = load ptr, ptr %866, align 8
  %868 = icmp eq ptr %867, null
  br i1 %868, label %869, label %979

869:                                              ; preds = %863
  %870 = getelementptr inbounds %struct.skb_shared_info, ptr %865, i32 0, i32 12
  %871 = icmp eq i32 %861, 0
  br i1 %871, label %882, label %872

872:                                              ; preds = %878, %869
  %873 = phi ptr [ %880, %878 ], [ %870, %869 ]
  %874 = phi i32 [ %879, %878 ], [ %861, %869 ]
  %875 = getelementptr inbounds %struct.bio_vec, ptr %873, i32 0, i32 1
  %876 = load i32, ptr %875, align 4
  %877 = icmp ult i32 %874, %876
  br i1 %877, label %979, label %878

878:                                              ; preds = %872
  %879 = sub i32 %874, %876
  %880 = getelementptr %struct.bio_vec, ptr %873, i32 1
  %881 = icmp eq i32 %879, 0
  br i1 %881, label %882, label %872

882:                                              ; preds = %878, %869
  %883 = phi ptr [ %870, %869 ], [ %880, %878 ]
  %884 = icmp eq ptr %883, null
  br i1 %884, label %979, label %885

885:                                              ; preds = %882, %807
  %886 = phi i32 [ %808, %807 ], [ %855, %882 ]
  %887 = phi ptr [ %812, %807 ], [ %883, %882 ]
  %888 = phi ptr [ %810, %807 ], [ %829, %882 ]
  %889 = getelementptr inbounds %struct.bio_vec, ptr %887, i32 0, i32 1
  %890 = load i32, ptr %889, align 4
  %891 = icmp eq i32 %890, 4096
  br i1 %891, label %892, label %896, !prof !78

892:                                              ; preds = %885
  %893 = getelementptr inbounds %struct.bio_vec, ptr %887, i32 0, i32 2
  %894 = load i32, ptr %893, align 4
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %918, label %896, !prof !21

896:                                              ; preds = %892, %885
  %897 = icmp sgt i32 %886, 0
  br i1 %897, label %898, label %918

898:                                              ; preds = %910, %896
  %899 = phi i32 [ %913, %910 ], [ %890, %896 ]
  %900 = phi i32 [ %908, %910 ], [ 0, %896 ]
  %901 = phi ptr [ %911, %910 ], [ %887, %896 ]
  %902 = icmp eq i32 %899, 4096
  br i1 %902, label %903, label %907

903:                                              ; preds = %898
  %904 = getelementptr inbounds %struct.bio_vec, ptr %901, i32 0, i32 2
  %905 = load i32, ptr %904, align 4
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %914, label %907

907:                                              ; preds = %903, %898
  %908 = add i32 %900, %899
  %909 = icmp slt i32 %908, %886
  br i1 %909, label %910, label %914

910:                                              ; preds = %907
  %911 = getelementptr %struct.bio_vec, ptr %901, i32 1
  %912 = getelementptr %struct.bio_vec, ptr %901, i32 1, i32 1
  %913 = load i32, ptr %912, align 4
  br label %898

914:                                              ; preds = %907, %903
  %915 = phi i32 [ %908, %907 ], [ %900, %903 ]
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %918, label %917

917:                                              ; preds = %914
  store i32 %915, ptr %802, align 4
  br label %979

918:                                              ; preds = %914, %896, %892
  %919 = load ptr, ptr %887, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %919) #22, !srcloc !10
  %920 = add i32 %811, 1
  %921 = getelementptr [32 x ptr], ptr %20, i32 0, i32 %811
  store ptr %919, ptr %921, align 4
  %922 = load i32, ptr %802, align 4
  %923 = add i32 %922, -4096
  store i32 %923, ptr %802, align 4
  %924 = getelementptr %struct.bio_vec, ptr %887, i32 1
  %925 = icmp eq i32 %920, 32
  %926 = icmp ult i32 %923, 4096
  %927 = select i1 %925, i1 true, i1 %926
  br i1 %927, label %928, label %970

928:                                              ; preds = %918
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %920, ptr %9, align 4
  %929 = call i32 @vm_insert_pages(ptr noundef nonnull %767, i32 noundef %814, ptr noundef nonnull %20, ptr noundef nonnull %9) #22
  %930 = load i32, ptr %9, align 4
  %931 = sub i32 %920, %930
  %932 = shl i32 %931, 12
  %933 = add i32 %932, %813
  %934 = add i32 %932, %814
  %935 = icmp eq i32 %929, 0
  br i1 %935, label %936, label %937, !prof !21

936:                                              ; preds = %928
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  br label %970

937:                                              ; preds = %928
  %938 = getelementptr ptr, ptr %20, i32 %931
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %930, ptr %6, align 4
  %939 = icmp eq i32 %929, -16
  br i1 %939, label %940, label %956

940:                                              ; preds = %937
  %941 = load i32, ptr %806, align 4
  %942 = and i32 %941, 1
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %956, label %944

944:                                              ; preds = %940
  %945 = shl i32 %930, 12
  %946 = sub i32 %791, %809
  %947 = add i32 %946, %945
  call void @zap_page_range(ptr noundef nonnull %767, i32 noundef %934, i32 noundef %947) #22
  %948 = call i32 @vm_insert_pages(ptr noundef nonnull %767, i32 noundef %934, ptr noundef %938, ptr noundef nonnull %6) #22
  %949 = load i32, ptr %6, align 4
  %950 = sub i32 %930, %949
  %951 = shl i32 %950, 12
  %952 = add i32 %951, %933
  %953 = icmp eq i32 %948, 0
  br i1 %953, label %954, label %956

954:                                              ; preds = %944
  %955 = add i32 %951, %934
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  br label %970

956:                                              ; preds = %944, %940, %937
  %957 = phi i32 [ %933, %937 ], [ %952, %944 ], [ %933, %940 ]
  %958 = phi i32 [ %930, %937 ], [ %949, %944 ], [ %930, %940 ]
  %959 = phi i32 [ %929, %937 ], [ %948, %944 ], [ -16, %940 ]
  %960 = shl i32 %958, 12
  %961 = sub i32 %809, %960
  %962 = load i32, ptr %802, align 4
  %963 = add i32 %962, %960
  store i32 %963, ptr %802, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %964 = load ptr, ptr %755, align 4
  %965 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %966 = icmp sgt i32 %965, 0
  br i1 %966, label %967, label %968

967:                                              ; preds = %956
  call void @__mmap_lock_do_trace_released(ptr noundef %964, i1 noundef zeroext false) #22
  br label %968

968:                                              ; preds = %967, %956
  %969 = getelementptr inbounds %struct.anon.14, ptr %964, i32 0, i32 15
  call void @up_read(ptr noundef %969) #22
  br label %1116

970:                                              ; preds = %954, %936, %918
  %971 = phi i32 [ %814, %918 ], [ %934, %936 ], [ %955, %954 ]
  %972 = phi i32 [ %813, %918 ], [ %933, %936 ], [ %952, %954 ]
  %973 = phi i32 [ %920, %918 ], [ 0, %936 ], [ 0, %954 ]
  %974 = load i32, ptr %784, align 8
  %975 = add i32 %809, 4096
  %976 = icmp ugt i32 %975, %974
  br i1 %976, label %979, label %977

977:                                              ; preds = %970
  %978 = load i32, ptr %802, align 4
  br label %807

979:                                              ; preds = %970, %917, %882, %872, %863, %857, %851, %819
  %980 = phi i32 [ %815, %917 ], [ %815, %872 ], [ %809, %970 ], [ %815, %882 ], [ %815, %819 ], [ %815, %851 ], [ %815, %863 ], [ %815, %857 ]
  %981 = phi i32 [ %814, %917 ], [ %814, %872 ], [ %971, %970 ], [ %814, %882 ], [ %814, %819 ], [ %814, %851 ], [ %814, %863 ], [ %814, %857 ]
  %982 = phi i32 [ %813, %917 ], [ %813, %872 ], [ %972, %970 ], [ %813, %882 ], [ %813, %819 ], [ %813, %851 ], [ %813, %863 ], [ %813, %857 ]
  %983 = phi i32 [ %811, %917 ], [ %811, %872 ], [ %973, %970 ], [ %811, %882 ], [ %811, %819 ], [ %811, %851 ], [ %811, %863 ], [ %811, %857 ]
  %984 = phi ptr [ %888, %917 ], [ %829, %872 ], [ %888, %970 ], [ %829, %882 ], [ %810, %819 ], [ %829, %851 ], [ %829, %863 ], [ %829, %857 ]
  %985 = icmp eq i32 %983, 0
  br i1 %985, label %986, label %997

986:                                              ; preds = %979, %793
  %987 = phi ptr [ %984, %979 ], [ null, %793 ]
  %988 = phi i32 [ %982, %979 ], [ %561, %793 ]
  %989 = phi i32 [ %980, %979 ], [ 0, %793 ]
  %990 = phi ptr [ %802, %979 ], [ %794, %793 ]
  %991 = load ptr, ptr %755, align 4
  %992 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %993 = icmp sgt i32 %992, 0
  br i1 %993, label %994, label %995

994:                                              ; preds = %986
  call void @__mmap_lock_do_trace_released(ptr noundef %991, i1 noundef zeroext false) #22
  br label %995

995:                                              ; preds = %994, %986
  %996 = getelementptr inbounds %struct.anon.14, ptr %991, i32 0, i32 15
  call void @up_read(ptr noundef %996) #22
  br label %1046

997:                                              ; preds = %979
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 %983, ptr %10, align 4
  %998 = call i32 @vm_insert_pages(ptr noundef nonnull %767, i32 noundef %981, ptr noundef nonnull %20, ptr noundef nonnull %10) #22
  %999 = load i32, ptr %10, align 4
  %1000 = sub i32 %983, %999
  %1001 = shl i32 %1000, 12
  %1002 = add i32 %1001, %982
  %1003 = add i32 %1001, %981
  %1004 = icmp eq i32 %998, 0
  br i1 %1004, label %1035, label %1005, !prof !21

1005:                                             ; preds = %997
  %1006 = getelementptr ptr, ptr %20, i32 %1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %999, ptr %7, align 4
  %1007 = icmp eq i32 %998, -16
  br i1 %1007, label %1008, label %1023

1008:                                             ; preds = %1005
  %1009 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 7
  %1010 = load i32, ptr %1009, align 4
  %1011 = and i32 %1010, 1
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1023, label %1013

1013:                                             ; preds = %1008
  %1014 = shl i32 %999, 12
  %1015 = sub i32 %791, %980
  %1016 = add i32 %1015, %1014
  call void @zap_page_range(ptr noundef nonnull %767, i32 noundef %1003, i32 noundef %1016) #22
  %1017 = call i32 @vm_insert_pages(ptr noundef nonnull %767, i32 noundef %1003, ptr noundef %1006, ptr noundef nonnull %7) #22
  %1018 = load i32, ptr %7, align 4
  %1019 = sub i32 %999, %1018
  %1020 = shl i32 %1019, 12
  %1021 = add i32 %1020, %1002
  %1022 = icmp eq i32 %1017, 0
  br i1 %1022, label %1031, label %1023

1023:                                             ; preds = %1013, %1008, %1005
  %1024 = phi i32 [ %1002, %1005 ], [ %1021, %1013 ], [ %1002, %1008 ]
  %1025 = phi i32 [ %999, %1005 ], [ %1018, %1013 ], [ %999, %1008 ]
  %1026 = phi i32 [ %998, %1005 ], [ %1017, %1013 ], [ -16, %1008 ]
  %1027 = shl i32 %1025, 12
  %1028 = sub i32 %980, %1027
  %1029 = load i32, ptr %802, align 4
  %1030 = add i32 %1029, %1027
  store i32 %1030, ptr %802, align 4
  br label %1031

1031:                                             ; preds = %1023, %1013
  %1032 = phi i32 [ %1028, %1023 ], [ %980, %1013 ]
  %1033 = phi i32 [ %1024, %1023 ], [ %1021, %1013 ]
  %1034 = phi i32 [ %1026, %1023 ], [ 0, %1013 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %1035

1035:                                             ; preds = %1031, %997
  %1036 = phi i32 [ %980, %997 ], [ %1032, %1031 ]
  %1037 = phi i32 [ %1002, %997 ], [ %1033, %1031 ]
  %1038 = phi i32 [ 0, %997 ], [ %1034, %1031 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  %1039 = load ptr, ptr %755, align 4
  %1040 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %1041 = icmp sgt i32 %1040, 0
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1035
  call void @__mmap_lock_do_trace_released(ptr noundef %1039, i1 noundef zeroext false) #22
  br label %1043

1043:                                             ; preds = %1042, %1035
  %1044 = getelementptr inbounds %struct.anon.14, ptr %1039, i32 0, i32 15
  call void @up_read(ptr noundef %1044) #22
  %1045 = icmp eq i32 %1038, 0
  br i1 %1045, label %1046, label %1116

1046:                                             ; preds = %1043, %995
  %1047 = phi ptr [ %987, %995 ], [ %984, %1043 ]
  %1048 = phi ptr [ %990, %995 ], [ %802, %1043 ]
  %1049 = phi i32 [ %989, %995 ], [ %1036, %1043 ]
  %1050 = phi i32 [ %988, %995 ], [ %1037, %1043 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #22
  store i32 0, ptr %15, align 4, !annotation !35
  %1051 = load i32, ptr %1048, align 4
  %1052 = call i32 @llvm.umin.i32(i32 %1051, i32 %559) #22
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1113, label %1054

1054:                                             ; preds = %1046
  %1055 = icmp eq ptr %1047, null
  br i1 %1055, label %1060, label %1056

1056:                                             ; preds = %1054
  %1057 = getelementptr inbounds %struct.sk_buff, ptr %1047, i32 0, i32 3
  %1058 = load i32, ptr %1057, align 8
  %1059 = sub i32 %1050, %1058
  store i32 %1059, ptr %15, align 4
  br label %1086

1060:                                             ; preds = %1054
  %1061 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %1050, ptr noundef nonnull %15) #22
  %1062 = getelementptr inbounds %struct.sk_buff, ptr %1061, i32 0, i32 3, i32 15
  %1063 = load i8, ptr %1062, align 1
  %1064 = and i8 %1063, 4
  %1065 = icmp eq i8 %1064, 0
  br i1 %1065, label %1086, label %1066

1066:                                             ; preds = %1060
  %1067 = getelementptr inbounds %struct.sk_buff, ptr %1061, i32 0, i32 2
  %1068 = load i64, ptr %1067, align 8
  %1069 = icmp eq i64 %1068, 0
  br i1 %1069, label %1071, label %1070

1070:                                             ; preds = %1066
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %13, i64 noundef %1068) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 16, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #22
  br label %1073

1071:                                             ; preds = %1066
  store i64 0, ptr %28, align 8
  %1072 = getelementptr inbounds i8, ptr %28, i32 8
  store i32 0, ptr %1072, align 8
  br label %1073

1073:                                             ; preds = %1071, %1070
  %1074 = getelementptr inbounds %struct.sk_buff, ptr %1061, i32 0, i32 15
  %1075 = load ptr, ptr %1074, align 4
  %1076 = getelementptr inbounds %struct.skb_shared_info, ptr %1075, i32 0, i32 7
  %1077 = load i64, ptr %1076, align 8
  %1078 = icmp eq i64 %1077, 0
  %1079 = getelementptr inbounds [3 x %struct.timespec64], ptr %28, i32 0, i32 2
  br i1 %1078, label %1081, label %1080

1080:                                             ; preds = %1073
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #22
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %14, i64 noundef %1077) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1079, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 16, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #22
  br label %1083

1081:                                             ; preds = %1073
  store i64 0, ptr %1079, align 8
  %1082 = getelementptr inbounds [3 x %struct.timespec64], ptr %28, i32 0, i32 2, i32 1
  store i32 0, ptr %1082, align 8
  br label %1083

1083:                                             ; preds = %1081, %1080
  %1084 = load i32, ptr %551, align 8
  %1085 = or i32 %1084, 2
  store i32 %1085, ptr %551, align 8
  br label %1086

1086:                                             ; preds = %1083, %1060, %1056
  %1087 = phi ptr [ %1047, %1056 ], [ %1061, %1083 ], [ %1061, %1060 ]
  %1088 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 5
  %1089 = load i64, ptr %1088, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i32 56, i1 false) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  store i64 0, ptr %12, align 8, !annotation !35
  %1090 = icmp ult i64 %1089, 4294967296
  br i1 %1090, label %1092, label %1091

1091:                                             ; preds = %1086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #22
  store i32 -22, ptr %558, align 8
  br label %1111

1092:                                             ; preds = %1086
  %1093 = trunc i64 %1089 to i32
  %1094 = inttoptr i32 %1093 to ptr
  %1095 = getelementptr inbounds %struct.msghdr, ptr %11, i32 0, i32 2
  %1096 = call i32 @import_single_range(i32 noundef 0, ptr noundef %1094, i32 noundef %1052, ptr noundef nonnull %12, ptr noundef %1095) #22
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1098, label %1107

1098:                                             ; preds = %1092
  %1099 = load i32, ptr %15, align 4
  %1100 = call i32 @skb_copy_datagram_iter(ptr noundef %1087, i32 noundef %1099, ptr noundef %1095, i32 noundef %1052) #22
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1107

1102:                                             ; preds = %1098
  %1103 = load i32, ptr %1048, align 4
  %1104 = sub i32 %1103, %1052
  store i32 %1104, ptr %1048, align 4
  %1105 = add i32 %1099, %1052
  store i32 %1105, ptr %15, align 4
  %1106 = add i32 %1052, %1050
  br label %1107

1107:                                             ; preds = %1102, %1098, %1092
  %1108 = phi i32 [ %1106, %1102 ], [ %1050, %1098 ], [ %1050, %1092 ]
  %1109 = phi i32 [ %1052, %1102 ], [ %1100, %1098 ], [ %1096, %1092 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #22
  store i32 %1109, ptr %558, align 8
  %1110 = icmp slt i32 %1109, 0
  br i1 %1110, label %1111, label %1113

1111:                                             ; preds = %1107, %1091
  %1112 = phi i32 [ %1108, %1107 ], [ %1050, %1091 ]
  br label %1113

1113:                                             ; preds = %1111, %1107, %1046
  %1114 = phi i32 [ %1050, %1046 ], [ %1112, %1111 ], [ %1108, %1107 ]
  %1115 = phi i32 [ 0, %1046 ], [ 0, %1111 ], [ %1052, %1107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #22
  br label %1116

1116:                                             ; preds = %1113, %1043, %968
  %1117 = phi ptr [ %1048, %1113 ], [ %802, %1043 ], [ %802, %968 ]
  %1118 = phi i32 [ %1049, %1113 ], [ %1036, %1043 ], [ %961, %968 ]
  %1119 = phi i32 [ %1114, %1113 ], [ %1037, %1043 ], [ %957, %968 ]
  %1120 = phi i32 [ 0, %1113 ], [ %1038, %1043 ], [ %959, %968 ]
  %1121 = phi i32 [ %1115, %1113 ], [ 0, %1043 ], [ 0, %968 ]
  %1122 = sub i32 0, %1121
  %1123 = icmp eq i32 %1118, %1122
  br i1 %1123, label %1130, label %1124

1124:                                             ; preds = %1116
  store volatile i32 %1119, ptr %560, align 4
  call void @tcp_rcv_space_adjust(ptr noundef %0) #22
  %1125 = call fastcc ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %1119, ptr noundef nonnull %19) #22
  %1126 = add i32 %1121, %1118
  call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %1126) #22
  %1127 = load i32, ptr %784, align 8
  %1128 = icmp eq i32 %1118, %1127
  br i1 %1128, label %1129, label %1139

1129:                                             ; preds = %1124
  store i32 0, ptr %1117, align 4
  br label %1139

1130:                                             ; preds = %1116
  %1131 = load i32, ptr %1117, align 4
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1139

1133:                                             ; preds = %1130
  %1134 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %1135 = load volatile i32, ptr %1134, align 4
  %1136 = and i32 %1135, 2
  %1137 = icmp eq i32 %1136, 0
  %1138 = select i1 %1137, i32 %1120, i32 -5
  br label %1139

1139:                                             ; preds = %1133, %1130, %1129, %1124
  %1140 = phi i32 [ 0, %1129 ], [ 0, %1124 ], [ %1120, %1130 ], [ %1138, %1133 ]
  store i32 %1118, ptr %784, align 8
  br label %1141

1141:                                             ; preds = %1139, %781, %753, %748, %741, %603, %597
  %1142 = phi i32 [ %742, %741 ], [ 0, %753 ], [ -22, %781 ], [ %1140, %1139 ], [ -22, %597 ], [ -107, %603 ], [ -5, %748 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #22
  call void @release_sock(ptr noundef %0) #22
  %1143 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  %1144 = load volatile ptr, ptr %1143, align 4
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1156, label %1146

1146:                                             ; preds = %1141
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1143) #22, !srcloc !10
  %1147 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %1143) #22, !srcloc !17
  %1148 = extractvalue { i32, i32 } %1147, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1156, label %1150

1150:                                             ; preds = %1146
  %1151 = inttoptr i32 %1148 to ptr
  br label %1152

1152:                                             ; preds = %1152, %1150
  %1153 = phi ptr [ %1154, %1152 ], [ %1151, %1150 ]
  %1154 = load ptr, ptr %1153, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %1154) #22, !srcloc !33
  store ptr null, ptr %1153, align 8
  call void @__kfree_skb(ptr noundef nonnull %1153) #22
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1156, label %1152

1156:                                             ; preds = %1152, %1146, %1141
  %1157 = icmp ugt i32 %532, 59
  br i1 %1157, label %1161, label %1158

1158:                                             ; preds = %1156
  %1159 = add nsw i32 %532, -12
  %1160 = call i32 @llvm.fshl.i32(i32 %1159, i32 %1159, i32 30) #22
  switch i32 %1160, label %1226 [
    i32 12, label %1161
    i32 11, label %1189
    i32 9, label %1189
    i32 7, label %1189
    i32 6, label %1189
    i32 5, label %1189
    i32 3, label %1189
    i32 2, label %1202
  ]

1161:                                             ; preds = %1158, %1156
  %1162 = load i32, ptr %551, align 8
  %1163 = and i32 %1162, 2
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1188, label %1165

1165:                                             ; preds = %1161
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %21) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %21, i8 0, i32 56, i1 false) #22, !annotation !35
  %1166 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 8
  %1167 = load i64, ptr %1166, align 8
  %1168 = trunc i64 %1167 to i32
  %1169 = inttoptr i32 %1168 to ptr
  %1170 = getelementptr inbounds %struct.msghdr, ptr %21, i32 0, i32 3
  store ptr %1169, ptr %1170, align 8
  %1171 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 9
  %1172 = load i64, ptr %1171, align 8
  %1173 = trunc i64 %1172 to i32
  %1174 = getelementptr inbounds %struct.msghdr, ptr %21, i32 0, i32 5
  store i32 %1173, ptr %1174, align 8
  %1175 = getelementptr inbounds %struct.msghdr, ptr %21, i32 0, i32 4
  store i8 1, ptr %1175, align 4
  store i32 0, ptr %551, align 8
  %1176 = icmp ult i64 %1167, 4294967296
  %1177 = icmp ult i64 %1172, 4294967296
  %1178 = select i1 %1176, i1 %1177, i1 false
  br i1 %1178, label %1179, label %1187

1179:                                             ; preds = %1165
  %1180 = getelementptr inbounds %struct.msghdr, ptr %21, i32 0, i32 6
  call void @tcp_recv_timestamp(ptr noundef nonnull %21, ptr noundef %0, ptr noundef nonnull %28) #22
  %1181 = load ptr, ptr %1170, align 8
  %1182 = ptrtoint ptr %1181 to i32
  %1183 = zext i32 %1182 to i64
  store i64 %1183, ptr %1166, align 8
  %1184 = load i32, ptr %1174, align 8
  %1185 = zext i32 %1184 to i64
  store i64 %1185, ptr %1171, align 8
  %1186 = load i32, ptr %1180, align 4
  store i32 %1186, ptr %551, align 8
  br label %1187

1187:                                             ; preds = %1179, %1165
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %21) #22
  br label %1189

1188:                                             ; preds = %1161
  store i32 0, ptr %551, align 8
  br label %1189

1189:                                             ; preds = %1188, %1187, %1158, %1158, %1158, %1158, %1158, %1158
  %1190 = icmp eq i32 %1142, 0
  br i1 %1190, label %1191, label %1202

1191:                                             ; preds = %1189
  %1192 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %1193 = load i32, ptr %1192, align 4
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1199, label %1195, !prof !21

1195:                                             ; preds = %1191
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1192) #22, !srcloc !10
  %1196 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %1192) #22, !srcloc !17
  %1197 = extractvalue { i32, i32 } %1196, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !30
  %1198 = sub i32 0, %1197
  br label %1199

1199:                                             ; preds = %1195, %1191
  %1200 = phi i32 [ %1198, %1195 ], [ 0, %1191 ]
  %1201 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 4
  store i32 %1200, ptr %1201, align 4
  br label %1202

1202:                                             ; preds = %1199, %1189, %1158
  %1203 = load volatile i32, ptr %560, align 4
  %1204 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %1205 = load volatile i32, ptr %1204, align 8
  %1206 = sub i32 %1205, %1203
  %1207 = icmp slt i32 %1206, 0
  br i1 %1207, label %1211, label %1208, !prof !28

1208:                                             ; preds = %1202
  %1209 = load volatile i32, ptr %560, align 4
  %1210 = icmp eq i32 %1203, %1209
  br i1 %1210, label %1215, label %1211, !prof !21

1211:                                             ; preds = %1208, %1202
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %1212 = load i32, ptr %1204, align 8
  %1213 = load i32, ptr %560, align 4
  %1214 = sub i32 %1212, %1213
  call void @release_sock(ptr noundef %0) #22
  br label %1215

1215:                                             ; preds = %1211, %1208
  %1216 = phi i32 [ %1214, %1211 ], [ %1206, %1208 ]
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1218, label %1223

1218:                                             ; preds = %1215
  %1219 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %1220 = load volatile i32, ptr %1219, align 4
  %1221 = lshr i32 %1220, 1
  %1222 = and i32 %1221, 1
  br label %1223

1223:                                             ; preds = %1218, %1215
  %1224 = phi i32 [ %1216, %1215 ], [ %1222, %1218 ]
  %1225 = getelementptr inbounds %struct.tcp_zerocopy_receive, ptr %29, i32 0, i32 3
  store i32 %1224, ptr %1225, align 8
  br label %1226

1226:                                             ; preds = %1223, %1158
  %1227 = icmp eq i32 %1142, 0
  br i1 %1227, label %1228, label %1235

1228:                                             ; preds = %1226
  %1229 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %1230 = and i32 %1229, -13
  %1231 = or i32 %1230, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1231) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %1232 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %29, i32 noundef %532) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1229) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %1233 = icmp eq i32 %1232, 0
  %1234 = select i1 %1233, i32 0, i32 -14
  br label %1235

1235:                                             ; preds = %1228, %1226, %550, %546, %542, %525, %522, %513, %505
  %1236 = phi i32 [ %524, %522 ], [ -14, %505 ], [ -22, %513 ], [ -14, %525 ], [ -22, %546 ], [ -22, %550 ], [ %1142, %1226 ], [ -14, %542 ], [ %1234, %1228 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %28) #22
  br label %1256

1237:                                             ; preds = %439, %433, %430, %420, %417, %411, %405, %402, %399, %396, %393, %344, %333, %332, %326, %217, %140, %138, %117, %113, %106, %99, %92, %85, %79, %73, %69, %64
  %1238 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %1239 = and i32 %1238, -13
  %1240 = or i32 %1239, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1240) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %1241 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %48, i32 -1090519041) #22, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1238) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1243, label %1256

1243:                                             ; preds = %1237
  %1244 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %48, i32 -1090519040) #26, !srcloc !61
  %1245 = extractvalue { i32, i32 } %1244, 0
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1247, label %1252

1247:                                             ; preds = %1243
  %1248 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #16, !srcloc !24
  %1249 = and i32 %1248, -13
  %1250 = or i32 %1249, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1250) #22, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  %1251 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %22, i32 noundef %48) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1248) #22, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !26
  br label %1252

1252:                                             ; preds = %1247, %1243
  %1253 = phi i32 [ %1251, %1247 ], [ %48, %1243 ]
  %1254 = icmp eq i32 %1253, 0
  %1255 = select i1 %1254, i32 0, i32 -14
  br label %1256

1256:                                             ; preds = %1252, %1237, %1235, %504, %498, %495, %473, %470, %444, %390, %388, %339, %324, %287, %273, %269, %253, %249, %229, %222, %215, %171, %46, %37
  %1257 = phi i32 [ %1236, %1235 ], [ -14, %473 ], [ -14, %495 ], [ 0, %504 ], [ %389, %388 ], [ %325, %324 ], [ %216, %215 ], [ %172, %171 ], [ -14, %37 ], [ -14, %222 ], [ -14, %229 ], [ -14, %253 ], [ %272, %269 ], [ -14, %273 ], [ -22, %339 ], [ -22, %390 ], [ -14, %444 ], [ -14, %498 ], [ -92, %46 ], [ -14, %1237 ], [ %1255, %1252 ], [ %252, %249 ], [ %290, %287 ], [ %471, %470 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #22
  br label %1258

1258:                                             ; preds = %1256, %31
  %1259 = phi i32 [ %36, %31 ], [ %1257, %1256 ]
  ret i32 %1259
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load volatile i8, ptr %4, align 2
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %10, label %22

10:                                               ; preds = %7, %1
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !13
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %13 = getelementptr [16 x i32], ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #16, !srcloc !14
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #22, !srcloc !15
  br label %22

22:                                               ; preds = %10, %7
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85
  %24 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %23) #22
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #22, !srcloc !10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #22, !srcloc !43
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32, !prof !28

31:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 4) #22
  br label %32

32:                                               ; preds = %31, %26, %22
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %34 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %33) #22
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #22, !srcloc !10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #22, !srcloc !43
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42, !prof !28

41:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 4) #22
  br label %42

42:                                               ; preds = %41, %36, %32
  tail call void @inet_csk_clear_xmit_timers(ptr noundef %0) #22
  %43 = icmp eq ptr %3, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @reqsk_fastopen_remove(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #22
  br label %45

45:                                               ; preds = %44, %42
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  store i8 3, ptr %46, align 2
  %47 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 75
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %0) #22
  br label %55

54:                                               ; preds = %45
  tail call void @inet_csk_destroy_sock(ptr noundef %0) #22
  br label %55

55:                                               ; preds = %54, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_abort(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, -4161
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load volatile i8, ptr %3, align 2
  %11 = icmp eq i8 %10, 12
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #22
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = add i32 %15, 512
  store volatile i32 %16, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %18, ptr noundef %0) #22
  tail call fastcc void @local_bh_enable()
  br label %46

20:                                               ; preds = %2
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  %21 = load volatile i8, ptr %3, align 2
  %22 = icmp eq i8 %21, 10
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 7)
  tail call void @inet_csk_listen_stop(ptr noundef %0) #22
  br label %24

24:                                               ; preds = %23, %20
  %25 = tail call ptr @llvm.thread.pointer() #22
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = add i32 %27, 512
  store volatile i32 %28, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %29) #22
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %1, ptr %35, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !80
  tail call void @sk_error_report(ptr noundef %0) #22
  %36 = load volatile i8, ptr %3, align 2
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, 314
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef 2592) #22
  br label %42

42:                                               ; preds = %41, %34
  tail call void @tcp_done(ptr noundef %0)
  br label %43

43:                                               ; preds = %42, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !38
  %44 = load i16, ptr %29, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !39
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  tail call fastcc void @local_bh_enable()
  tail call void @tcp_write_queue_purge(ptr noundef %0)
  tail call void @release_sock(ptr noundef %0) #22
  br label %46

46:                                               ; preds = %43, %12, %9
  %47 = phi i32 [ 0, %43 ], [ 0, %12 ], [ -95, %9 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_thash_entries(ptr noundef %0) #14 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_kstrtoul(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @thash_entries) #22
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tcp_init() local_unnamed_addr #14 section ".init.text" {
  %1 = tail call i32 @__percpu_counter_init(ptr noundef nonnull @tcp_sockets_allocated, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @tcp_init.__key) #22
  tail call void @init_timer_key(ptr noundef nonnull @tcp_orphan_timer, ptr noundef nonnull @tcp_orphan_update, i32 noundef 524288, ptr noundef null, ptr noundef null) #22
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 10
  %4 = tail call i32 @mod_timer(ptr noundef nonnull @tcp_orphan_timer, i32 noundef %3) #22
  tail call void @inet_hashinfo_init(ptr noundef nonnull @tcp_hashinfo) #22
  %5 = load i32, ptr @thash_entries, align 4
  tail call void @inet_hashinfo2_init(ptr noundef nonnull @tcp_hashinfo, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef 21, i32 noundef 0, i32 noundef 65536) #22
  %6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 48, i32 noundef 0, i32 noundef 270336, ptr noundef null) #22
  store ptr %6, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 4), align 16
  %7 = load i32, ptr @thash_entries, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 524288, i32 0
  %10 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef %7, i32 noundef 17, i32 noundef 0, ptr noundef null, ptr noundef getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), i32 noundef 0, i32 noundef %9) #22
  store ptr %10, ptr @tcp_hashinfo, align 64
  store ptr inttoptr (i32 1 to ptr), ptr %10, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %13, %0
  %14 = phi i32 [ %20, %13 ], [ 1, %0 ]
  %15 = load ptr, ptr @tcp_hashinfo, align 64
  %16 = shl i32 %14, 1
  %17 = or i32 %16, 1
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr %struct.inet_ehash_bucket, ptr %15, i32 %14
  store ptr %18, ptr %19, align 4
  %20 = add i32 %14, 1
  %21 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %0
  %24 = tail call i32 @inet_ehash_locks_alloc(ptr noundef nonnull @tcp_hashinfo) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.8) #27
  unreachable

27:                                               ; preds = %23
  %28 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %29 = add i32 %28, 1
  %30 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.9, i32 noundef 8, i32 noundef %29, i32 noundef 17, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 6), ptr noundef null, i32 noundef 0, i32 noundef 65536) #22
  store ptr %30, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 5), align 4
  %31 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 6), align 8
  %32 = shl nuw i32 1, %31
  store i32 %32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 6), align 8
  store i32 0, ptr %30, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 5), align 4
  %34 = getelementptr %struct.inet_bind_hashbucket, ptr %33, i32 0, i32 1
  store ptr null, ptr %34, align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 6), align 8
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %37, %27
  %38 = phi i32 [ %43, %37 ], [ 1, %27 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 5), align 4
  %40 = getelementptr %struct.inet_bind_hashbucket, ptr %39, i32 %38
  store i32 0, ptr %40, align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 5), align 4
  %42 = getelementptr %struct.inet_bind_hashbucket, ptr %41, i32 %38, i32 1
  store ptr null, ptr %42, align 4
  %43 = add nuw i32 %38, 1
  %44 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 6), align 8
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %37, label %46

46:                                               ; preds = %37, %27
  %47 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %48 = add i32 %47, 1
  %49 = sdiv i32 %48, 2
  store i32 %49, ptr @sysctl_tcp_max_orphans, align 4
  %50 = tail call i32 @nr_free_buffer_pages() #22
  %51 = lshr i32 %50, 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 128) #22
  %53 = lshr i32 %52, 2
  %54 = mul nuw nsw i32 %53, 3
  store i32 %54, ptr @sysctl_tcp_mem, align 4
  store i32 %52, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_tcp_mem, i32 0, i32 1), align 4
  %55 = mul nuw nsw i32 %53, 6
  store i32 %55, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_tcp_mem, i32 0, i32 2), align 4
  %56 = tail call i32 @nr_free_buffer_pages() #22
  %57 = shl i32 %56, 5
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 4194304)
  %59 = tail call i32 @llvm.umin.i32(i32 %57, i32 6291456)
  store i32 4096, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96), align 4
  store i32 16384, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96, i32 1), align 8
  %60 = tail call i32 @llvm.umax.i32(i32 %58, i32 65536)
  store i32 %60, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96, i32 2), align 4
  store i32 4096, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97), align 16
  store i32 131072, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 1), align 4
  %61 = tail call i32 @llvm.umax.i32(i32 %59, i32 131072)
  store i32 %61, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), align 8
  %62 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %63 = add i32 %62, 1
  %64 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 6), align 8
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %63, i32 noundef %64) #24
  tail call void @tcp_v4_init() #22
  tail call void @tcp_metrics_init() #22
  %66 = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_reno) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !21

68:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4623, 0\0A.popsection", ""() #22, !srcloc !81
  unreachable

69:                                               ; preds = %46
  tail call void @tcp_tasklet_init() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_orphan_update(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %16

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %14, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %5 ], [ 0, %1 ]
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @tcp_orphan_count to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %7
  %14 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #25
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %5, label %16

16:                                               ; preds = %5, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %5 ]
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0) #22
  store volatile i32 %18, ptr @tcp_orphan_cache, align 4
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 10
  %21 = tail call i32 @mod_timer(ptr noundef nonnull @tcp_orphan_timer, i32 noundef %20) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_hashinfo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_hashinfo2_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ehash_locks_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_metrics_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_tasklet_init() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__lock_sock_fast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_chrono_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cwnd_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_rps_record_flow_hash(i32 noundef %0) unnamed_addr #6 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !76
  %2 = load volatile ptr, ptr @rps_sock_flow_table, align 4
  %3 = icmp ne ptr %2, null
  %4 = icmp ne i32 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 64
  %8 = and i32 %7, %0
  %9 = load i32, ptr @rps_cpu_mask, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %10, %0
  %12 = tail call ptr @llvm.thread.pointer() #22
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, %11
  %16 = getelementptr %struct.rps_sock_flow_table, ptr %2, i32 0, i32 2, i32 %8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store i32 %15, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %6, %1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_splice_data_recv(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.read_descriptor_t, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.read_descriptor_t, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %3)
  %13 = getelementptr inbounds %struct.tcp_splice_state, ptr %6, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @skb_splice_bits(ptr noundef %1, ptr noundef %8, i32 noundef %2, ptr noundef %9, i32 noundef %12, i32 noundef %14) #22
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, ptr %10, align 4
  %19 = sub i32 %18, %15
  store i32 %19, ptr %10, align 4
  br label %20

20:                                               ; preds = %17, %4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_splice_bits(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_stream_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_flush_backlog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter_nocache(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_callback(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_put_abort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_busy_loop_end(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @tcp_fast_path_check(ptr noundef %0) unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %11 = load volatile i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %23 = load i24, ptr %22, align 4
  %24 = zext i24 %23 to i32
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 15
  %27 = lshr i32 %21, %26
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %29 = load i16, ptr %28, align 8
  %30 = zext i16 %29 to i32
  %31 = shl i32 %30, 26
  %32 = or i32 %31, %27
  %33 = or i32 %32, 1048576
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #22
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %19, %15, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_peek_sndq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %4 = tail call ptr @rb_first(ptr noundef %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  br label %8

8:                                                ; preds = %15, %6
  %9 = phi ptr [ %4, %6 ], [ %18, %15 ]
  %10 = phi i32 [ 0, %6 ], [ %17, %15 ]
  %11 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @skb_copy_datagram_iter(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %7, i32 noundef %12) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 8
  %17 = add i32 %16, %10
  %18 = tail call ptr @rb_next(ptr noundef nonnull %9) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8

20:                                               ; preds = %15, %2
  %21 = phi i32 [ 0, %2 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  br label %27

27:                                               ; preds = %34, %25
  %28 = phi ptr [ %23, %25 ], [ %37, %34 ]
  %29 = phi i32 [ %21, %25 ], [ %36, %34 ]
  %30 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 @skb_copy_datagram_iter(ptr noundef %28, i32 noundef 0, ptr noundef %26, i32 noundef %31) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, ptr %30, align 8
  %36 = add i32 %35, %29
  %37 = load ptr, ptr %28, align 4
  %38 = icmp eq ptr %37, %22
  br i1 %38, label %39, label %27

39:                                               ; preds = %34, %27, %20, %8
  %40 = phi i32 [ %21, %20 ], [ %36, %34 ], [ %32, %27 ], [ %13, %8 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_to_msg(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %4 = tail call i32 @_copy_to_iter(ptr noundef %1, i32 noundef 1, ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, i32 0, i32 -14
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_clear_xmit_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_congestion_control(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_ulp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_reset_cipher(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_window_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_init_key_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mtup_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_get_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zap_page_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_pages(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly inlinehint nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold noreturn nounwind }

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
!9 = !{i64 2157539274}
!10 = !{i64 431004, i64 2147932570, i64 2147932596, i64 2147932643, i64 2147932665, i64 2147932693, i64 2147932713}
!11 = !{i64 516259, i64 516280, i64 516303, i64 516322, i64 516341}
!12 = !{i64 2157539651}
!13 = !{i64 459751, i64 459812}
!14 = !{i64 466856}
!15 = !{i64 462768}
!16 = !{i64 2157556217}
!17 = !{i64 513535, i64 513552, i64 513576, i64 513602, i64 513620}
!18 = !{i64 2157556534}
!19 = !{i64 2155547715}
!20 = !{i64 2155638116}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2157599976}
!23 = !{i64 2157600325}
!24 = !{i64 4055774}
!25 = !{i64 4055971}
!26 = !{i64 2151541250}
!27 = !{i64 2157623964, i64 2157624244, i64 2157624578, i64 2157624912}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2155553939}
!30 = !{i64 2155554256}
!31 = !{i64 2149106057}
!32 = !{i64 2149106384}
!33 = !{i64 430822}
!34 = !{i64 2148006271, i64 2148006297, i64 2148006326, i64 2148006360, i64 2148006391, i64 2148006414}
!35 = !{!"auto-init"}
!36 = !{i64 2148007729, i64 2148007761, i64 2148007790, i64 2148007824, i64 2148007855, i64 2148007878}
!37 = !{i64 2148958241}
!38 = !{i64 2149124570}
!39 = !{i64 2149120394}
!40 = !{i64 2149120469, i64 2149120496, i64 2149120543, i64 2149120565, i64 2149120593, i64 2149120613}
!41 = !{i64 2149147573}
!42 = !{i64 2148107927}
!43 = !{i64 2148010086, i64 2148010118, i64 2148010147, i64 2148010181, i64 2148010212, i64 2148010235}
!44 = !{i64 2148721187}
!45 = !{i64 2155529692}
!46 = !{i64 2157858089}
!47 = !{i64 2157858416}
!48 = !{i64 2148106926}
!49 = !{i64 2148009312, i64 2148009344, i64 2148009373, i64 2148009407, i64 2148009438, i64 2148009461}
!50 = !{i64 2148107129}
!51 = !{i64 2151559662, i64 2151559687}
!52 = !{i64 1024170, i64 1024197}
!53 = !{i64 1024865, i64 1024892, i64 1024925, i64 1024946, i64 1024973, i64 1024999}
!54 = !{i64 2157864363}
!55 = !{i64 2157864738}
!56 = !{i8 0, i8 2}
!57 = !{i64 2148510001, i64 2148510281, i64 2148510615, i64 2148510949}
!58 = !{i64 2157928827, i64 2157929107, i64 2157929441, i64 2157929775}
!59 = !{i64 2157942825, i64 2157943105, i64 2157943439, i64 2157943773}
!60 = !{i64 2157953625, i64 2157953905, i64 2157954239, i64 2157954573}
!61 = !{i64 2151560240, i64 2151560265}
!62 = !{i64 2157964784, i64 2157965064, i64 2157965398, i64 2157965732}
!63 = !{i64 2157975454, i64 2157975734, i64 2157976068, i64 2157976402}
!64 = !{i64 2157986616, i64 2157986896, i64 2157987230, i64 2157987564}
!65 = !{i64 2157997289, i64 2157997569, i64 2157997903, i64 2157998237}
!66 = !{i64 2158008448, i64 2158008728, i64 2158009062, i64 2158009396}
!67 = !{i64 2158023178, i64 2158023458, i64 2158023792, i64 2158024126}
!68 = !{i64 2158031311, i64 2158031591, i64 2158031925, i64 2158032259}
!69 = !{i64 2158042543, i64 2158042823, i64 2158043157, i64 2158043491}
!70 = !{i64 2158053300, i64 2158053580, i64 2158053914, i64 2158054248}
!71 = !{i64 2158064474, i64 2158064754, i64 2158065088, i64 2158065422}
!72 = !{i64 2158076445, i64 2158076725, i64 2158077059, i64 2158077393}
!73 = !{i64 2158101682, i64 2158101962, i64 2158102296, i64 2158102630}
!74 = !{i64 2158112838, i64 2158113118, i64 2158113452, i64 2158113786}
!75 = !{i64 2158122113, i64 2158122393, i64 2158122727, i64 2158123061}
!76 = !{i64 2149507361}
!77 = !{i64 2149507578}
!78 = !{!"branch_weights", i32 2146410443, i32 1073205}
!79 = !{i64 2158133603, i64 2158133883, i64 2158134217, i64 2158134551}
!80 = !{i64 2158151526}
!81 = !{i64 2158166693, i64 2158167173, i64 2158166730, i64 2158166786, i64 2158166820, i64 2158166844, i64 2158166885, i64 2158166906, i64 2158166934, i64 2158166968}
